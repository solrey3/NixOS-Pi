# Initial NixOS flake setup

Use this after completing a plain NixOS install and booting into the new system for the first time.

## 1. Get Git temporarily

A fresh NixOS install may not have Git or flakes enabled yet. Start a temporary shell with Git:

```sh
nix-shell -p git
```

## 2. Clone this flake

Clone the repository somewhere persistent, for example under your home directory:

```sh
git clone <repo-url> ~/NixOS
cd ~/NixOS
```

Replace `<repo-url>` with the actual Git remote URL for this repo.

## 3. Pick or create the host directory

If this machine already has a matching host in `hosts/`, use that host name.

Existing NixOS hosts:

- desktops and laptops: `alpha`, `bravo`, `charlie`, `foxtrot`, `golf`, `india`, `november`, `oscar`, `papa`, `quebec`
- k3s nodes: `kilo`, `lima`, `mike`
- fleet console: `tango`

`delta` and `juliet` are nix-darwin hosts, and `echo` is a standalone Home Manager profile. Tango is installed with Disko and nixos-anywhere as documented in [tango.md](tango.md), not with this generic procedure. Foxtrot's checked-in hardware file is only an evaluation-safe placeholder and must be regenerated on foxtrot before activation.

If this is a new conventional x86_64 NixOS machine, create a new host from an existing one:

```sh
mkdir -p hosts/<hostname>
printf '"x86_64-linux"\n' > hosts/<hostname>/system.nix
cp hosts/oscar/default.nix hosts/<hostname>/default.nix
```

Then edit `hosts/<hostname>/default.nix` for machine-specific imports, desktop options, users, and services. The flake passes the directory name as `hostname`, so follow the existing `networking.hostName = hostname;` pattern rather than hard-coding it.

## 4. Import the generated hardware configuration

Replace the host hardware file with the hardware configuration generated on this machine:

```sh
sudo nixos-generate-config --show-hardware-config > hosts/<hostname>/hardware-configuration.nix
```

Review the file before switching, especially disk, filesystem, swap, and boot-related entries.

## 5. Switch to the flake configuration

Run the first flake-based switch with experimental features enabled inline:

```sh
sudo env NIX_CONFIG="experimental-features = nix-command flakes" \
  nixos-rebuild switch --flake .#<hostname>
```

The `NIX_CONFIG` prefix is usually only needed for this first switch. This repo enables flakes permanently after the system is rebuilt.

## 6. Reboot and verify

Reboot into the new generation:

```sh
sudo reboot
```

After login, verify the active hostname and flake rebuild path:

```sh
hostname
cd ~/NixOS
sudo nixos-rebuild switch --flake .#<hostname>
```

## 7. Commit machine-specific changes

If you changed or generated host files, commit them:

```sh
git status
git add hosts/<hostname>
git commit -m "Add <hostname> NixOS host"
```

## Notes

- Keep `hardware-configuration.nix` specific to the machine it was generated on.
- If the first switch fails because of bootloader settings, check the host's `default.nix` and generated hardware config before rebooting.
- If you installed with disk encryption, confirm the generated hardware config includes the expected LUKS device entries.
