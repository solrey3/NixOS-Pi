{ hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/docker.nix
    ../../modules/nixos/laptop.nix
    ../../modules/nixos/tailscale.nix
    ../../modules/nixos/users/budchris.nix
    ../../modules/nixos/xfce4.nix
  ];

  networking.hostName = hostname;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # MacBookPro10,2 (Retina, 13-inch, Early 2013).
  system.stateVersion = "24.05";
}
