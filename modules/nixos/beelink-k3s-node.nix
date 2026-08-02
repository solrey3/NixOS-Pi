{ hostname, ... }:

{
  imports = [
    ./k3s-cluster.nix
    ./users/budchris.nix
  ];

  networking.hostName = hostname;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  hardware.enableRedistributableFirmware = true;
  services.fstrim.enable = true;
  services.fwupd.enable = true;

  # K3s uses forwarding for pod and service traffic.
  boot.kernel.sysctl = {
    "net.ipv4.ip_forward" = 1;
    "net.ipv6.conf.all.forwarding" = 1;
  };

  custom.k3sCluster.enable = true;

  system.stateVersion = "25.11";
}
