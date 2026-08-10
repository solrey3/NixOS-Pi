{ hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/docker.nix
    ../../modules/nixos/tailscale.nix
    ../../modules/nixos/users/budchris.nix
    ../../modules/nixos/xfce4.nix
  ];

  networking.hostName = hostname;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # A1347 Mac mini; retain the lightweight XFCE/i3 setup from nix-config.
  hardware.enableRedistributableFirmware = true;
  services.fstrim.enable = true;

  system.stateVersion = "24.05";
}
