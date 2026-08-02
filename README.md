# NixOS Flake

A modular NixOS flake that supports multiple hosts. The first host is this machine: `oscar`.

## Layout

```text
flake.nix
hosts/
  oscar/
    default.nix
    hardware-configuration.nix
    system.nix
modules/
  home/
    budchris/
      default.nix
      lazyvim.nix
  nixos/
    common.nix
    desktop.nix
    home-manager.nix
    nix.nix
    users/
      budchris.nix
```

## Hosts

For first-time setup after a plain NixOS install, see [docs/initial-flake-setup.md](docs/initial-flake-setup.md).

Build or switch Oscar with:

```sh
sudo nixos-rebuild switch --flake .#oscar
```

Build or switch Quebec with:

```sh
sudo nixos-rebuild switch --flake .#quebec
```

On Quebec, after installing NixOS, use a temporary shell with Git to clone this flake, replace the bootstrap hardware file with the generated hardware config, then switch:

```sh
nix-shell -p git
git clone <repo-url>
cd <repo-dir>
sudo nixos-generate-config --show-hardware-config > hosts/quebec/hardware-configuration.nix
sudo env NIX_CONFIG="experimental-features = nix-command flakes" nixos-rebuild switch --flake .#quebec
```

The `NIX_CONFIG` prefix is only needed for the first flake-based switch if the installer system does not already have flakes enabled. This repo enables flakes permanently after the switch.

## Add another host

Create a directory under `hosts/`:

```sh
mkdir -p hosts/laptop
printf '"x86_64-linux"\n' > hosts/laptop/system.nix
cp hosts/oscar/default.nix hosts/laptop/default.nix
```

Generate/copy that machine's hardware configuration:

```sh
sudo nixos-generate-config --show-hardware-config > hosts/laptop/hardware-configuration.nix
```

Then edit `hosts/laptop/default.nix` for host-specific settings.

## Desktop environments

`modules/nixos/desktop.nix` supports Plasma, COSMIC, and Sway. `oscar` enables all three so they are selectable from SDDM at login, with Plasma as the default session.

Example host configuration:

```nix
custom.desktop = {
  defaultSession = "plasma";
  environments = {
    plasma = true;
    cosmic = true;
    sway = true;
  };
};
```

## Home Manager apps

`budchris` is managed with Home Manager.

### Neovim / LazyVim

`budchris` gets Neovim plus the upstream LazyVim starter config.

Open Neovim with:

```sh
nvim
```

LazyVim/lazy.nvim will install plugins on first launch.

### AI tools

`budchris` gets `claude-code`, `fabric-ai`, and `opencode` from unstable.

### Editors

`budchris` gets Cursor (`code-cursor`). Launch it with `cursor`.

### CLI tools

`budchris` gets monitoring, file management, search/navigation, archive, media, GNU, and fun terminal tools including `btop`, `fastfetch`, `yazi`, `tmux`, `fzf`, `fd`, `ripgrep`, `zoxide`, `eza`, `yt-dlp`, `ffmpeg`, `jq`, `uuidgen`, `dysk`, `tokei`, `p7zip`, `rsync`, `figlet`, `fortune`, `cowsay`, and `cmatrix`.

### VPN

`oscar` has Proton VPN GUI and WireGuard tools installed.

### Shell

`budchris` gets Bash completion, Starship prompt, plus prefix history search with up/down arrows.

### Docker

`oscar` has Docker enabled. `budchris` is in the `docker` group and gets LazyDocker.

### Git tooling

`budchris` gets Git, Git LFS, GitHub CLI (`gh`), LazyGit, and Delta.

### Fonts

`budchris` gets JetBrainsMono Nerd Font.

### Terminals

`budchris` gets Ghostty and Alacritty using JetBrainsMono Nerd Font. Ghostty is preferred via:

- `TERMINAL=ghostty`
- `xdg-terminal-exec` configured with Ghostty first, Alacritty second

## Beelink Kubernetes cluster

`kilo`, `lima`, and `mike` form a three-control-plane k3s cluster. The bootstrap manifests deploy Jellyfin, Navidrome, and Pi-hole. See [docs/k3s-cluster.md](docs/k3s-cluster.md) for hardware-config replacement, cluster bootstrap, token transfer, storage, and DNS setup.

## Bravo media services

Bravo runs Jellyfin, Navidrome, and SABnzbd on the local network. Jellyfin reads media from the mounted data drives and uses the NVIDIA GPU for transcoding. Navidrome reads music and playlists from `/mnt/archive`.

Before enabling SABnzbd for the first time, create its Newsgroup Ninja credential files outside the Nix store:

```sh
sudo install -d -m 0700 -o sabnzbd -g sabnzbd /var/lib/sabnzbd/secrets
read -r -p 'Newsgroup Ninja username: ' ninja_user
read -r -s -p 'Newsgroup Ninja password: ' ninja_password; echo
printf '%s' "$ninja_user" | sudo install -m 0400 -o sabnzbd -g sabnzbd /dev/stdin /var/lib/sabnzbd/secrets/newsgroup_ninja_username
printf '%s' "$ninja_password" | sudo install -m 0400 -o sabnzbd -g sabnzbd /dev/stdin /var/lib/sabnzbd/secrets/newsgroup_ninja_password
unset ninja_user ninja_password
```

`reorganize_tv_for_jellyfin.py` can migrate top-level TV release folders into Jellyfin's `Series/Season NN` layout. It performs a dry run unless passed `--apply`.

## Format

```sh
nix fmt
```
