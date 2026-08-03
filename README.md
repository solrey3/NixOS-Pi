# NixOS Flake

A modular, multi-host NixOS configuration for desktop and laptop systems, a media server, and a three-node k3s cluster. It tracks `nixos-unstable`, integrates Home Manager, and automatically creates a NixOS configuration for every directory under `hosts/`.

## Repository layout

```text
flake.nix                    Flake inputs and generated host outputs
hosts/
  bravo/                     Desktop and media server
  oscar/                     Laptop/workstation
  quebec/                    Framework 13 laptop/workstation
  kilo/                      Bootstrap k3s control-plane node
  lima/                      Joining k3s control-plane node
  mike/                      Joining k3s control-plane node
modules/
  nixos/                     Shared NixOS services and host roles
    users/budchris.nix       User account and Home Manager integration
  home/budchris/             Home Manager applications and dotfiles
kubernetes/homelab.yaml      Jellyfin, Navidrome, and Pi-hole workloads
docs/                        Installation, desktop, and cluster guides
overlays/                    Local nixpkgs overlay
pkgs/                        Local package output
```

Each host directory contains:

- `default.nix`: host-specific imports and settings
- `hardware-configuration.nix`: generated hardware, disk, and filesystem settings
- `system.nix`: nixpkgs platform, currently `x86_64-linux` for every host

## Hosts

| Host | Role | Main configuration |
| --- | --- | --- |
| `bravo` | NVIDIA desktop and media server | Plasma, COSMIC, Sway, Docker, VPN tools, Jellyfin, Navidrome, SABnzbd |
| `oscar` | Laptop/workstation | Plasma, COSMIC, Sway, laptop power management, Docker, VPN tools |
| `quebec` | Framework 13 AMD laptop/workstation | Plasma, COSMIC, Sway, laptop power/audio configuration, Docker, VPN tools |
| `kilo` | k3s bootstrap server and worker | Initializes the embedded-etcd cluster and deploys homelab manifests |
| `lima` | k3s server and worker | Joins the control plane initialized by `kilo` |
| `mike` | k3s server and worker | Joins the control plane initialized by `kilo` |

## Build and deploy

Build a host without activating it:

```sh
nix build .#nixosConfigurations.<hostname>.config.system.build.toplevel
```

Switch the current machine:

```sh
sudo nixos-rebuild switch --flake .#<hostname>
```

For example:

```sh
sudo nixos-rebuild switch --flake .#oscar
sudo nixos-rebuild switch --flake .#bravo
```

For first-time setup after a plain NixOS installation, follow [docs/initial-flake-setup.md](docs/initial-flake-setup.md). The hardware configuration must be generated on the machine where it will be used:

```sh
sudo nixos-generate-config --show-hardware-config \
  > hosts/<hostname>/hardware-configuration.nix
```

In particular, the checked-in `kilo`, `lima`, and `mike` hardware files are bootstrap placeholders and must be replaced before deployment.

## Add a host

Create the host directory and platform file:

```sh
mkdir -p hosts/<hostname>
printf '"x86_64-linux"\n' > hosts/<hostname>/system.nix
cp hosts/oscar/default.nix hosts/<hostname>/default.nix
sudo nixos-generate-config --show-hardware-config \
  > hosts/<hostname>/hardware-configuration.nix
```

Then tailor `default.nix` to the machine. No explicit `flake.nix` entry is needed because host directories are discovered automatically.

## Shared NixOS configuration

All hosts receive the common module, which configures:

- NetworkManager
- OpenSSH with password and root login disabled
- US locale, Eastern time, and basic command-line tools
- flakes, other shared Nix settings, and the local overlay
- Home Manager's NixOS module

The desktop module supports Plasma 6, COSMIC, and Sway with SDDM. `bravo`, `oscar`, and `quebec` enable all three and default to Plasma. It also configures PipeWire, portals, printing, Firefox, Steam, and desktop keyring integration.

The desktop hosts additionally enable 1Password, Docker, Tailscale, Proton VPN, and WireGuard tools. Nicotine+ and Transmission run in a dedicated network namespace that fails closed unless traffic can leave through Proton VPN's `proton0` interface.

## Home Manager

The `budchris` account and Home Manager profile are shared by the configured hosts. The profile includes:

- Bash completion, Starship, fzf, zoxide, eza, yazi, mise, and tmux
- Neovim with the upstream LazyVim starter
- Claude Code, Fabric, OpenCode, and Cursor
- Git, Git LFS, GitHub CLI, LazyGit, and Delta
- Ghostty and Alacritty with JetBrainsMono Nerd Font
- a dedicated Google Chrome work profile
- Nextcloud, Obsidian, Picard, Quod Libet/Ex Falso, and Raspberry Pi Imager
- Nicotine+ and Transmission launchers for the VPN-only namespace
- monitoring, search, archive, media, and general command-line utilities

Ghostty is the preferred terminal through `TERMINAL` and `xdg-terminal-exec`. LazyVim plugins are installed by `lazy.nvim` on first launch.

## Beelink k3s cluster

`kilo`, `lima`, and `mike` form a three-control-plane k3s cluster using embedded etcd. `kilo` deploys `kubernetes/homelab.yaml`, which contains:

- Jellyfin
- Navidrome
- Pi-hole

All nodes mount the NFS exports `/Jukebox`, `/Movies`, `/TV`, and `/Sports` from the NAS at hostname `illmatic`. Navidrome reads `/Jukebox`; Jellyfin receives all four exports read-only. Application PVCs initially use k3s local-path storage, and the stateful workloads are pinned to `kilo`.

See [docs/k3s-cluster.md](docs/k3s-cluster.md) for hardware preparation, stable addressing, token transfer, NAS requirements, service access, and storage limitations.

## Bravo media services

`bravo` runs native NixOS services for Jellyfin, Navidrome, and SABnzbd:

- Jellyfin reads the mounted media drives and uses the NVIDIA GPU for transcoding.
- Navidrome reads music and playlists from `/mnt/archive`.
- SABnzbd stores downloads under `/home/budchris/Downloads/sabnzbd`.

Before enabling SABnzbd for the first time, create its Usenet provider credentials outside the Nix store:

```sh
sudo install -d -m 0700 -o sabnzbd -g sabnzbd /var/lib/sabnzbd/secrets
read -r -p 'Usenet provider username: ' provider_user
read -r -s -p 'Usenet provider password: ' provider_password; echo
printf '%s' "$provider_user" | sudo install -m 0400 -o sabnzbd -g sabnzbd \
  /dev/stdin /var/lib/sabnzbd/secrets/usenet_provider_username
printf '%s' "$provider_password" | sudo install -m 0400 -o sabnzbd -g sabnzbd \
  /dev/stdin /var/lib/sabnzbd/secrets/usenet_provider_password
unset provider_user provider_password
```

`reorganize_tv_for_jellyfin.py` migrates top-level TV release folders into Jellyfin's `Series/Season NN` layout. It performs a dry run unless passed `--apply`.

## Development and validation

Enter the development shell for `nil`, `nixpkgs-fmt`, and `statix`:

```sh
nix develop
```

Format and validate the flake:

```sh
nix fmt
nix flake check
```

The flake exports packages, formatter, and development shells for `x86_64-linux` and `aarch64-linux`; the current NixOS hosts use `x86_64-linux`.
