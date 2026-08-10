# Tango command center

`tango` is the DigitalOcean NixOS deployment console and private Pi web UI. Its initial public address is `143.198.8.152`; routine access should use Tailscale MagicDNS after enrollment.

## Install from the Ubuntu droplet

The install is destructive. Confirm DigitalOcean shows the system disk as `/dev/vda` before running it. The disko layout creates a GPT BIOS boot partition, encrypted 4 GiB swap, and an ext4 root filesystem using the remaining space.

The local install key is `~/.ssh/tango_install_ed25519`. Its public half must be present in `/root/.ssh/authorized_keys` on the Ubuntu droplet:

```text
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILluiwZ/efnUYTmrf0lci6jIeQwYK7RbgcxGUIthlJYe tango-install
```

Use the DigitalOcean web console to add it if SSH access was not configured when the droplet was created. Then verify the target disk and firmware mode:

```sh
ssh -i ~/.ssh/tango_install_ed25519 root@143.198.8.152 \
  'lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS; test -d /sys/firmware/efi && echo UEFI || echo BIOS'
```

The checked-in layout expects `/dev/vda` and BIOS. If those differ, stop and update `hosts/tango/disk-config.nix` and the boot loader before installing.

```sh
nix run github:nix-community/nixos-anywhere -- \
  --flake path:.#tango \
  --target-host root@143.198.8.152 \
  -i ~/.ssh/tango_install_ed25519
```

After reboot:

```sh
ssh -i ~/.ssh/tango_install_ed25519 budchris@143.198.8.152
sudo tailscale up --hostname=tango
```

## Pi Console

The NixOS service runs the custom Pi SDK application on TCP 3210. That port is not opened on the public interface; it is reachable because `tailscale0` is trusted. Open:

```text
http://tango:3210
```

Each UI thread is a persistent Pi session. The target selector teaches the session to use `budchris@<target>` over Tailscale SSH, while `/srv/nixos` is tango's writable fleet checkout. The UI supports streaming responses, tool activity, aborting work, thread deletion, and mobile layouts.

Inspect it with:

```sh
systemctl status pi-console
journalctl -u pi-console -f
```

## 1Password model secrets

Create a 1Password service account with read-only access to the required API-key items. On tango, place its token and an `op run` environment template in the service state directory:

```sh
sudo install -o pi-console -g pi-console -m 0700 -d /var/lib/pi-console
sudo install -o pi-console -g pi-console -m 0600 \
  /etc/pi-console/secrets.env.example /var/lib/pi-console/secrets.env.tpl
sudoedit /var/lib/pi-console/secrets.env.tpl
sudoedit /var/lib/pi-console/op-service-account.env
sudo chown pi-console:pi-console /var/lib/pi-console/{secrets.env.tpl,op-service-account.env}
sudo chmod 0600 /var/lib/pi-console/{secrets.env.tpl,op-service-account.env}
sudo systemctl restart pi-console
```

`op-service-account.env` contains one line:

```text
OP_SERVICE_ACCOUNT_TOKEN=<service-account-token>
```

Keep only `op://...` references in `secrets.env.tpl`; never put resolved API keys in the repository. If these files are absent, Pi falls back to its normal `/var/lib/pi-console/.pi/agent/auth.json` credential discovery.

## Fleet deployment key

Pi Console runs as the `pi-console` service user. Give that user a dedicated SSH private key from 1Password which is authorized on each target:

```sh
sudo install -d -o pi-console -g pi-console -m 0700 /var/lib/pi-console/.ssh
# Resolve the key without echoing it to the terminal. Adjust the item reference.
sudo -u pi-console env HOME=/var/lib/pi-console bash -c '
  set -a
  source /var/lib/pi-console/op-service-account.env
  set +a
  op read "op://Homelab/Tango Deploy Key/private key"
' | sudo tee /var/lib/pi-console/.ssh/id_ed25519 >/dev/null
sudo chown pi-console:pi-console /var/lib/pi-console/.ssh/id_ed25519
sudo chmod 0600 /var/lib/pi-console/.ssh/id_ed25519
```

Test MagicDNS and key authorization:

```sh
sudo -u pi-console ssh -o StrictHostKeyChecking=accept-new budchris@bravo hostname
```

## deploy-rs

All flake hosts are deploy-rs nodes with Tailscale hostnames. Builds run on targets:

```sh
deploy .#bravo

deploy .#kilo .#lima .#mike

deploy                       # entire fleet; use deliberately
```

The target `budchris` user is trusted by Nix and has passwordless sudo through the shared user module. Avoid deploying placeholder k3s hardware configurations until they have been replaced as described in `docs/k3s-cluster.md`.
