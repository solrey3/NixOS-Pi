{ ... }:

{
  # Music Player Daemon serving the Jukebox share from the NAS (illmatic).
  # Clients (e.g. rmpc) connect on port 6600 over LAN/Tailscale.

  boot.supportedFilesystems = [ "nfs" ];
  fileSystems."/mnt/illmatic/Jukebox" = {
    device = "illmatic:/volume1/Jukebox";
    fsType = "nfs";
    options = [ "_netdev" "nofail" "x-systemd.automount" "x-systemd.idle-timeout=10min" ];
  };

  services.mpd = {
    enable = true;
    musicDirectory = "/mnt/illmatic/Jukebox";
    # The NAS export squashes non-root callers to a user with no read
    # permission, so MPD must run as root to scan the library. Root can
    # still reach the desktop user's PipeWire socket (see below).
    user = "root";
    network = {
      listenAddress = "any";
      port = 6600;
    };
    settings = {
      audio_output = [
        {
          type = "pipewire";
          name = "PipeWire";
        }
      ];
      auto_update = "yes";
      zeroconf_enabled = "no";
      follow_outside_symlinks = "yes";
      follow_inside_symlinks = "yes";
    };
  };

  # PipeWire's socket lives in the user's runtime directory.
  systemd.services.mpd = {
    after = [ "mnt-illmatic-Jukebox.automount" ];
    environment.XDG_RUNTIME_DIR = "/run/user/1000";
    serviceConfig = {
      SupplementaryGroups = [ "audio" "pipewire" ];
      # The first run scans the whole Jukebox share over NFS, which can
      # take a long time; don't let systemd kill it mid-scan.
      TimeoutStartSec = "30min";
    };
  };

  networking.firewall.allowedTCPPorts = [ 6600 ];
}
