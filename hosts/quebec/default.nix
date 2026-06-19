{ hostname, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/1password.nix
    ../../modules/nixos/desktop.nix
    ../../modules/nixos/docker.nix
    ../../modules/nixos/users/budchris.nix
    ../../modules/nixos/vpn.nix
  ];

  networking.hostName = hostname;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # The generated hardware config references an encrypted swap mapper that is
  # not opened at boot, causing systemd to wait for it and potentially drop to
  # emergency mode. Disable it until encrypted swap is configured explicitly.
  swapDevices = lib.mkForce [ ];

  # Framework 13 AMD AI 300: the legacy AMD ACP PDM driver exposes the
  # digital mic but records clipped/silent audio. Prefer the SOF ACP70 driver.
  boot.blacklistedKernelModules = [ "snd_acp_pci" ];
  boot.kernelModules = [ "snd_sof_amd_acp70" ];

  hardware.alsa.enablePersistence = true;
  hardware.firmware = [ pkgs.sof-firmware ];

  custom.desktop = {
    defaultSession = "plasma";
    environments = {
      plasma = true;
      cosmic = true;
      sway = true;
    };
  };

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  environment.systemPackages = with pkgs; [
    pavucontrol
    pi-coding-agent
  ];

  # Change this only after reading the NixOS release notes.
  system.stateVersion = "25.11";
}
