{ inputs, pkgs, self, ... }:

let
  piConsole = self.packages.${pkgs.system}.pi-console;
  deploy = inputs.deploy-rs.packages.${pkgs.system}.default;
  startPiConsole = pkgs.writeShellScript "start-pi-console" ''
    set -euo pipefail
    token_file=/var/lib/pi-console/op-service-account.env
    template=/var/lib/pi-console/secrets.env.tpl

    if [[ -s "$token_file" && -s "$template" ]]; then
      set -a
      # shellcheck disable=SC1090
      source "$token_file"
      set +a
      exec ${pkgs._1password-cli}/bin/op run --env-file="$template" -- ${piConsole}/bin/pi-console
    fi

    exec ${piConsole}/bin/pi-console
  '';
in
{
  users.groups.pi-console = { };
  users.users.pi-console = {
    isSystemUser = true;
    group = "pi-console";
    home = "/var/lib/pi-console";
    createHome = true;
    shell = pkgs.bashInteractive;
  };

  environment.systemPackages = [
    deploy
    pkgs._1password-cli
    pkgs.pi-coding-agent
  ];

  environment.etc."pi-console/secrets.env.example".text = ''
    # Copy to /var/lib/pi-console/secrets.env.tpl, change this 1Password
    # reference to match your vault, and chmod/chown it 0600 pi-console.
    # openai-codex OAuth remains in the console user's auth.json.
    OPENROUTER_API_KEY=op://Homelab/OpenRouter/api-key
  '';

  systemd.services.pi-console-repository = {
    description = "Initialize the writable NixOS fleet repository";
    wantedBy = [ "multi-user.target" ];
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
    before = [ "pi-console.service" ];
    serviceConfig.Type = "oneshot";
    path = [ pkgs.git pkgs.openssh pkgs.coreutils ];
    script = ''
      if [[ ! -d /srv/nixos/.git ]]; then
        rm -rf /srv/nixos
        git clone https://github.com/solrey3/NixOS-Pi /srv/nixos
        # Seed the checkout with the exact source used to install tango. This
        # keeps new/unmerged files available without overwriting later agent
        # work on every activation.
        cp -a --no-preserve=ownership ${self.outPath}/. /srv/nixos/
        chmod -R u+w /srv/nixos
      fi
      chown -R pi-console:pi-console /srv/nixos
    '';
  };

  systemd.services.pi-console = {
    description = "Threaded Pi SDK command center";
    wantedBy = [ "multi-user.target" ];
    requires = [ "pi-console-repository.service" ];
    after = [ "pi-console-repository.service" "tailscaled.service" ];
    environment = {
      HOME = "/var/lib/pi-console";
      PI_CONSOLE_HOST = "0.0.0.0";
      PI_CONSOLE_PORT = "3210";
      PI_CONSOLE_STATE_DIR = "/var/lib/pi-console";
      PI_CONSOLE_CWD = "/srv/nixos";
      PI_CONSOLE_TARGETS = "tango,alpha,bravo,kilo,lima,mike,oscar,quebec";
      PI_CONSOLE_PRIMARY_PROVIDER = "openai-codex";
      PI_CONSOLE_PRIMARY_MODEL = "gpt-5.6-sol";
      PI_CONSOLE_PRIMARY_THINKING = "medium";
      PI_CONSOLE_BACKUP_PROVIDER = "openrouter";
      PI_CONSOLE_BACKUP_MODEL = "moonshotai/kimi-k3";
      PI_CONSOLE_BACKUP_THINKING = "medium";
    };
    path = [ deploy pkgs.git pkgs.nix pkgs.openssh pkgs._1password-cli pkgs.tailscale ];
    serviceConfig = {
      User = "pi-console";
      Group = "pi-console";
      StateDirectory = "pi-console";
      StateDirectoryMode = "0700";
      WorkingDirectory = "/srv/nixos";
      ExecStart = startPiConsole;
      Restart = "on-failure";
      RestartSec = 3;
      UMask = "0077";
      NoNewPrivileges = true;
      PrivateTmp = true;
      ProtectSystem = "strict";
      ProtectHome = true;
      ReadWritePaths = [ "/srv/nixos" "/var/lib/pi-console" ];
    };
  };

  # Port 3210 is intentionally absent from allowedTCPPorts: peers can reach it
  # through the trusted tailscale0 interface, but the public droplet NIC cannot.
}
