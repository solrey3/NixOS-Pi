const $ = (selector) => document.querySelector(selector);
let threads = [];
let active = null;
let stream = null;
let streamingText = "";
let busy = false;

async function api(path, options = {}) {
  const response = await fetch(path, { headers: { "content-type": "application/json" }, ...options });
  const data = await response.json();
  if (!response.ok) throw new Error(data.error ?? `HTTP ${response.status}`);
  return data;
}

function renderThreads() {
  $("#threads").replaceChildren(...threads.map((thread) => {
    const button = document.createElement("button");
    button.className = `thread${thread.id === active?.id ? " active" : ""}`;
    const title = document.createElement("strong");
    title.textContent = thread.title;
    const target = document.createElement("small");
    target.textContent = `${thread.target}${thread.busy ? " · working" : ""}`;
    button.append(title, target);
    button.onclick = () => selectThread(thread);
    return button;
  }));
}

function addMessage(message) {
  const article = document.createElement("article");
  article.className = `message ${message.role}`;
  const meta = document.createElement("div");
  meta.className = "meta";
  meta.textContent = message.role === "user" ? "You" : message.role === "assistant" ? "Pi" : "Tool";
  const content = document.createElement("div");
  content.className = "bubble";
  content.textContent = message.text;
  article.append(meta, content);
  $("#messages").append(article);
  return content;
}

async function refreshMessages() {
  if (!active) return;
  const id = active.id;
  const data = await api(`/api/threads/${id}/messages`);
  if (active?.id !== id) return;
  $("#messages").replaceChildren();
  data.messages.forEach(addMessage);
  $("#messages").scrollTop = $("#messages").scrollHeight;
  setBusy(data.thread.busy);
}

function setBusy(value) {
  busy = value;
  $("#send").hidden = value;
  $("#stop").hidden = !value;
  $("#prompt").disabled = !active;
  $("#send").disabled = !active || !$("#prompt").value.trim();
  if (!value) $("#activity").textContent = "";
}

function connectEvents() {
  stream?.close();
  if (!active) return;
  stream = new EventSource(`/api/threads/${active.id}/events`);
  stream.addEventListener("delta", (event) => {
    const { text } = JSON.parse(event.data);
    if (!streamingText) streamingText = addMessage({ role: "assistant", text: "" });
    streamingText.textContent += text;
    $("#messages").scrollTop = $("#messages").scrollHeight;
  });
  stream.addEventListener("tool", (event) => {
    const data = JSON.parse(event.data);
    $("#activity").textContent = data.status === "start" ? `Running ${data.name}…` : "";
  });
  stream.addEventListener("status", (event) => setBusy(JSON.parse(event.data).busy));
  stream.addEventListener("refresh", () => { streamingText = ""; refreshMessages().catch(notify); loadThreads(); });
  stream.addEventListener("error", (event) => { if (event.data) notify(new Error(JSON.parse(event.data).message)); });
}

async function selectThread(thread) {
  active = thread;
  streamingText = "";
  $("#title").textContent = thread.title;
  $("#target").textContent = `${thread.target} · ${thread.cwd}`;
  $("#empty").style.display = "none";
  $("#messages").style.display = "block";
  $("#prompt").disabled = false;
  document.body.classList.remove("menu");
  renderThreads();
  connectEvents();
  await refreshMessages();
  $("#prompt").focus();
}

async function loadThreads() {
  threads = await api("/api/threads");
  if (active) active = threads.find((thread) => thread.id === active.id) ?? null;
  renderThreads();
}

function notify(error) {
  console.error(error);
  $("#activity").textContent = error.message;
}

$("#new-thread").onclick = () => $("#create-dialog").showModal();
$("#menu").onclick = () => document.body.classList.toggle("menu");
$("#prompt").addEventListener("input", (event) => {
  event.target.style.height = "auto";
  event.target.style.height = `${event.target.scrollHeight}px`;
  $("#send").disabled = busy || !event.target.value.trim();
});
$("#prompt").addEventListener("keydown", (event) => {
  if (event.key === "Enter" && !event.shiftKey) { event.preventDefault(); $("#composer").requestSubmit(); }
});
$("#composer").onsubmit = async (event) => {
  event.preventDefault();
  const message = $("#prompt").value.trim();
  if (!active || !message || busy) return;
  addMessage({ role: "user", text: message });
  $("#prompt").value = "";
  $("#prompt").style.height = "auto";
  setBusy(true);
  streamingText = "";
  try { await api(`/api/threads/${active.id}/prompt`, { method: "POST", body: JSON.stringify({ message }) }); }
  catch (error) { setBusy(false); notify(error); }
};
$("#stop").onclick = () => active && api(`/api/threads/${active.id}/abort`, { method: "POST" }).catch(notify);
$("#delete").onclick = async () => {
  if (!active || !confirm(`Delete “${active.title}”?`)) return;
  await api(`/api/threads/${active.id}`, { method: "DELETE" });
  active = null; stream?.close();
  $("#title").textContent = "Pi Console"; $("#target").textContent = "Select or create a thread";
  $("#empty").style.display = "block"; $("#messages").style.display = "none"; $("#prompt").disabled = true;
  await loadThreads();
};
$("#create-form").addEventListener("submit", async (event) => {
  if (event.submitter?.value === "cancel") return;
  event.preventDefault();
  const thread = await api("/api/threads", { method: "POST", body: JSON.stringify({ title: $("#new-title").value, target: $("#new-target").value }) });
  $("#create-dialog").close(); $("#new-title").value = "";
  await loadThreads(); await selectThread(thread);
});

try {
  const config = await api("/api/config");
  $("#new-target").replaceChildren(...config.targets.map((target) => {
    const option = document.createElement("option"); option.value = target; option.textContent = target; return option;
  }));
  await loadThreads();
} catch (error) { notify(error); }
