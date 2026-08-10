import http from "node:http";
import { randomUUID } from "node:crypto";
import { execFile } from "node:child_process";
import { mkdir, readFile, rename, stat, writeFile } from "node:fs/promises";
import path from "node:path";
import { promisify } from "node:util";
import {
  createAgentSession,
  DefaultResourceLoader,
  ModelRuntime,
  SessionManager,
} from "@earendil-works/pi-coding-agent";

const host = process.env.PI_CONSOLE_HOST ?? "127.0.0.1";
const port = Number(process.env.PI_CONSOLE_PORT ?? "3210");
const stateDir = process.env.PI_CONSOLE_STATE_DIR ?? "/var/lib/pi-console";
const defaultCwd = process.env.PI_CONSOLE_CWD ?? "/srv/nixos";
const publicDir = process.env.PI_CONSOLE_PUBLIC_DIR ?? path.resolve("public");
const agentDir = process.env.PI_CONSOLE_AGENT_DIR ?? path.join(stateDir, ".pi", "agent");
const configuredTargets = (process.env.PI_CONSOLE_TARGETS ?? "tango")
  .split(",").map((value) => value.trim()).filter(Boolean);
const primaryModelConfig = {
  provider: process.env.PI_CONSOLE_PRIMARY_PROVIDER ?? "openai-codex",
  id: process.env.PI_CONSOLE_PRIMARY_MODEL ?? "gpt-5.6-sol",
  thinkingLevel: process.env.PI_CONSOLE_PRIMARY_THINKING ?? "medium",
};
const backupModelConfig = {
  provider: process.env.PI_CONSOLE_BACKUP_PROVIDER ?? "openrouter",
  id: process.env.PI_CONSOLE_BACKUP_MODEL ?? "moonshotai/kimi-k3",
  thinkingLevel: process.env.PI_CONSOLE_BACKUP_THINKING ?? "medium",
};
const execFileAsync = promisify(execFile);
const metadataPath = path.join(stateDir, "threads.json");
const live = new Map();
const listeners = new Map();
let threads = [];
let saveChain = Promise.resolve();

await mkdir(stateDir, { recursive: true });
await mkdir(agentDir, { recursive: true });
try {
  threads = JSON.parse(await readFile(metadataPath, "utf8"));
} catch (error) {
  if (error.code !== "ENOENT") console.error("Could not read thread metadata:", error);
}

async function availableTargets() {
  try {
    const { stdout } = await execFileAsync("tailscale", ["status", "--json"], { timeout: 5000 });
    const status = JSON.parse(stdout);
    const peers = Object.values(status.Peer ?? {}).map((peer) => peer.HostName).filter(Boolean);
    const self = status.Self?.HostName ? [status.Self.HostName] : [];
    return [...new Set([...configuredTargets, ...self, ...peers])].sort();
  } catch (error) {
    console.warn("Could not discover Tailscale peers:", error.message);
    return configuredTargets;
  }
}

function saveThreads() {
  saveChain = saveChain.then(async () => {
    const temporary = `${metadataPath}.tmp`;
    await writeFile(temporary, `${JSON.stringify(threads, null, 2)}\n`, { mode: 0o600 });
    await rename(temporary, metadataPath);
  });
  return saveChain;
}

function send(response, status, body, type = "application/json; charset=utf-8") {
  response.writeHead(status, { "content-type": type, "cache-control": "no-store" });
  response.end(type.startsWith("application/json") ? JSON.stringify(body) : body);
}

async function body(request) {
  let value = "";
  for await (const chunk of request) {
    value += chunk;
    if (value.length > 1_000_000) throw new Error("Request body is too large");
  }
  return value ? JSON.parse(value) : {};
}

function contentText(content) {
  if (typeof content === "string") return content;
  if (!Array.isArray(content)) return "";
  return content.map((part) => {
    if (part?.type === "text" || part?.type === "thinking") return part.text ?? "";
    if (part?.type === "toolCall") return `Using ${part.name ?? "tool"}…`;
    if (part?.type === "toolResult") return part.content ? contentText(part.content) : "";
    return "";
  }).filter(Boolean).join("\n");
}

function visibleMessages(session) {
  return session.messages.map((message, index) => ({
    id: message.id ?? String(index),
    role: message.role ?? "system",
    text: contentText(message.content) || message.errorMessage || "",
    timestamp: message.timestamp ?? null,
  })).filter((message) => message.text && ["user", "assistant", "toolResult"].includes(message.role));
}

function publish(id, event, data) {
  for (const response of listeners.get(id) ?? []) {
    response.write(`event: ${event}\ndata: ${JSON.stringify(data)}\n\n`);
  }
}

function systemPrompt(thread) {
  const remote = thread.target !== "tango"
    ? `The selected target is ${thread.target}, reachable over Tailscale SSH as budchris@${thread.target}. Run target-specific shell commands through ssh budchris@${thread.target}. Never assume a command run locally affected the target. The local NixOS fleet repository is ${thread.cwd}.`
    : `The selected target is this command host, tango. The NixOS fleet repository is ${thread.cwd}.`;
  return `You are Pi Console, the coding and operations agent for a private NixOS homelab. ${remote}\nUse the repository's flake and deploy-rs configuration. Explain destructive actions before taking them, preserve secrets in 1Password, and never print secret values. Be concise and report commands, changed files, checks, and deployment results.`;
}

function configuredModel(modelRuntime, modelConfig) {
  const model = modelRuntime.getModel(modelConfig.provider, modelConfig.id);
  if (!model) throw new Error(`Pi model ${modelConfig.provider}/${modelConfig.id} is not registered`);
  return { model, thinkingLevel: modelConfig.thinkingLevel };
}

function latestAssistantError(session) {
  const message = [...session.messages].reverse().find((item) => item.role === "assistant");
  return message?.errorMessage || null;
}

async function promptWithFallback(thread, runtime, message) {
  try {
    await runtime.session.prompt(message);
    const error = latestAssistantError(runtime.session);
    if (error) throw new Error(error);
  } catch (error) {
    if (runtime.abortRequested || runtime.session.model?.provider !== primaryModelConfig.provider
      || runtime.session.model?.id !== primaryModelConfig.id) throw error;

    const backup = configuredModel(runtime.modelRuntime, backupModelConfig);
    if (!runtime.modelRuntime.hasConfiguredAuth(backup.model.provider)) throw error;
    console.warn(`Thread ${thread.id}: primary model failed; switching to ${backup.model.provider}/${backup.model.id}`);
    await runtime.session.setModel(backup.model);
    runtime.session.setThinkingLevel(backup.thinkingLevel);
    publish(thread.id, "model", {
      provider: backup.model.provider,
      model: backup.model.id,
      thinkingLevel: backup.thinkingLevel,
      fallback: true,
    });
    await runtime.session.prompt("Continue and complete the preceding user request using the conversation state. The primary model became unavailable; do not ask the user to repeat the request.");
    const backupError = latestAssistantError(runtime.session);
    if (backupError) throw new Error(backupError);
  }
}

async function loadThread(thread) {
  if (live.has(thread.id)) return live.get(thread.id);
  const loader = new DefaultResourceLoader({
    cwd: thread.cwd,
    agentDir,
    systemPromptOverride: () => systemPrompt(thread),
  });
  await loader.reload();
  const sessionManager = thread.sessionFile
    ? SessionManager.open(thread.sessionFile)
    : SessionManager.create(thread.cwd);
  const modelRuntime = await ModelRuntime.create({
    authPath: path.join(agentDir, "auth.json"),
    modelsPath: path.join(agentDir, "models.json"),
  });
  const primary = configuredModel(modelRuntime, primaryModelConfig);
  const backup = configuredModel(modelRuntime, backupModelConfig);
  const primaryHasAuth = modelRuntime.hasConfiguredAuth(primary.model.provider);
  const backupHasAuth = modelRuntime.hasConfiguredAuth(backup.model.provider);
  if (!primaryHasAuth && !backupHasAuth) {
    throw new Error(`No authentication configured for ${primary.model.provider} or ${backup.model.provider}`);
  }
  const selected = primaryHasAuth ? primary : backup;
  const result = await createAgentSession({
    cwd: thread.cwd,
    agentDir,
    model: selected.model,
    thinkingLevel: selected.thinkingLevel,
    scopedModels: [primary, backup],
    modelRuntime,
    resourceLoader: loader,
    sessionManager,
  });
  const runtime = { ...result, modelRuntime, busy: false, abortRequested: false };
  result.session.subscribe((event) => {
    if (event.type === "message_update" && event.assistantMessageEvent?.type === "text_delta") {
      publish(thread.id, "delta", { text: event.assistantMessageEvent.delta });
    } else if (event.type === "tool_execution_start") {
      publish(thread.id, "tool", { name: event.toolName, status: "start" });
    } else if (event.type === "tool_execution_end") {
      publish(thread.id, "tool", { name: event.toolName, status: event.isError ? "error" : "end" });
    } else if (event.type === "agent_end") {
      publish(thread.id, "refresh", {});
    }
  });
  thread.sessionFile = result.session.sessionFile;
  live.set(thread.id, runtime);
  await saveThreads();
  return runtime;
}

function publicThread(thread) {
  return {
    id: thread.id,
    title: thread.title,
    target: thread.target,
    cwd: thread.cwd,
    createdAt: thread.createdAt,
    updatedAt: thread.updatedAt,
    busy: live.get(thread.id)?.busy ?? false,
  };
}

async function api(request, response, url) {
  if (request.method === "GET" && url.pathname === "/api/config") {
    return send(response, 200, { targets: await availableTargets(), defaultCwd });
  }
  if (request.method === "GET" && url.pathname === "/api/threads") {
    return send(response, 200, threads.map(publicThread).sort((a, b) => b.updatedAt.localeCompare(a.updatedAt)));
  }
  if (request.method === "POST" && url.pathname === "/api/threads") {
    const input = await body(request);
    const targets = await availableTargets();
    const target = targets.includes(input.target) ? input.target : "tango";
    const thread = {
      id: randomUUID(),
      title: String(input.title || `New ${target} task`).slice(0, 100),
      target,
      cwd: defaultCwd,
      createdAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
      sessionFile: null,
    };
    threads.push(thread);
    await saveThreads();
    return send(response, 201, publicThread(thread));
  }
  const match = url.pathname.match(/^\/api\/threads\/([0-9a-f-]+)(?:\/(messages|events|prompt|abort))?$/);
  if (!match) return false;
  const thread = threads.find((item) => item.id === match[1]);
  if (!thread) return send(response, 404, { error: "Thread not found" });
  const action = match[2];
  if (request.method === "GET" && action === "events") {
    response.writeHead(200, {
      "content-type": "text/event-stream",
      "cache-control": "no-cache",
      connection: "keep-alive",
    });
    response.write("event: ready\ndata: {}\n\n");
    const set = listeners.get(thread.id) ?? new Set();
    set.add(response);
    listeners.set(thread.id, set);
    request.on("close", () => set.delete(response));
    return true;
  }
  if (request.method === "DELETE" && !action) {
    const runtime = live.get(thread.id);
    if (runtime) await runtime.session.dispose();
    live.delete(thread.id);
    threads = threads.filter((item) => item.id !== thread.id);
    await saveThreads();
    return send(response, 200, { deleted: true });
  }
  const runtime = await loadThread(thread);
  if (request.method === "GET" && action === "messages") {
    return send(response, 200, { thread: publicThread(thread), messages: visibleMessages(runtime.session) });
  }
  if (request.method === "POST" && action === "prompt") {
    const input = await body(request);
    const message = String(input.message ?? "").trim();
    if (!message) return send(response, 400, { error: "Message is required" });
    if (runtime.busy) return send(response, 409, { error: "Agent is already working" });
    runtime.busy = true;
    runtime.abortRequested = false;
    thread.updatedAt = new Date().toISOString();
    await saveThreads();
    send(response, 202, { accepted: true });
    publish(thread.id, "status", { busy: true });
    promptWithFallback(thread, runtime, message).catch((error) => {
      console.error(`Thread ${thread.id}:`, error);
      publish(thread.id, "error", { message: error.message });
    }).finally(async () => {
      runtime.busy = false;
      thread.sessionFile = runtime.session.sessionFile;
      thread.updatedAt = new Date().toISOString();
      await saveThreads();
      publish(thread.id, "status", { busy: false });
      publish(thread.id, "refresh", {});
    });
    return true;
  }
  if (request.method === "POST" && action === "abort") {
    runtime.abortRequested = true;
    await runtime.session.abort();
    return send(response, 200, { aborted: true });
  }
  return false;
}

const mime = { ".html": "text/html; charset=utf-8", ".css": "text/css; charset=utf-8", ".js": "text/javascript; charset=utf-8", ".svg": "image/svg+xml" };
const server = http.createServer(async (request, response) => {
  try {
    const url = new URL(request.url, `http://${request.headers.host ?? "localhost"}`);
    if (url.pathname.startsWith("/api/")) {
      const handled = await api(request, response, url);
      if (handled !== false) return;
      return send(response, 404, { error: "Not found" });
    }
    const relative = url.pathname === "/" ? "index.html" : url.pathname.slice(1);
    const file = path.resolve(publicDir, relative);
    if (!file.startsWith(`${path.resolve(publicDir)}${path.sep}`)) return send(response, 403, "Forbidden", "text/plain");
    await stat(file);
    return send(response, 200, await readFile(file), mime[path.extname(file)] ?? "application/octet-stream");
  } catch (error) {
    if (error.code === "ENOENT") return send(response, 404, { error: "Not found" });
    console.error(error);
    if (!response.headersSent) send(response, 500, { error: error.message });
  }
});

server.listen(port, host, () => console.log(`Pi Console listening on http://${host}:${port}`));
