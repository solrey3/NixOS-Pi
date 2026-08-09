{ hostname, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/docker.nix
    ../../modules/nixos/nvidia-legacy_470.nix
    ../../modules/nixos/users/budchris.nix
    ../../modules/nixos/xfce4.nix
  ];

  networking.hostName = hostname;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  hardware.enableRedistributableFirmware = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.fwupd.enable = true;
  services.fstrim.enable = true;

  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };

  networking.firewall = {
    # Barrier/Input Leap screen sharing port.
    allowedTCPPorts = [ 24800 ];
    allowedUDPPorts = [ 41641 ];
    trustedInterfaces = [ "tailscale0" ];
    checkReversePath = "loose";
  };

  environment.systemPackages = with pkgs; [
    input-leap
    pavucontrol
    tailscale
  ];

  # Change this only after reading the NixOS release notes.
  system.stateVersion = "24.05";
}
