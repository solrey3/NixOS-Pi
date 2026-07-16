{ hostname, pkgs, ... }:

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

  # ASUS TUF X570-PLUS GAMING (Wi-Fi) desktop support.
  hardware.enableRedistributableFirmware = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.fwupd.enable = true;
  services.fstrim.enable = true;

  fileSystems."/mnt/files1" = {
    device = "/dev/sdb1";
    fsType = "auto";
    options = [ "nofail" "x-systemd.device-timeout=10s" ];
  };

  fileSystems."/mnt/files2" = {
    device = "/dev/sda2";
    fsType = "auto";
    options = [ "nofail" "x-systemd.device-timeout=10s" ];
  };

  # NVIDIA GeForce RTX 3070.
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.graphics.enable = true;
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    nvidiaSettings = true;
    open = false;
    package = pkgs.linuxPackages.nvidiaPackages.stable;
  };

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
    synology-drive-client
  ];

  home-manager.users.budchris = { pkgs, ... }: {
    xdg.configFile."autostart/synology-drive.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Synology Drive Client
      Exec=${pkgs.synology-drive-client}/bin/synology-drive
      Terminal=false
      X-GNOME-Autostart-enabled=true
    '';
  };

  # Change this only after reading the NixOS release notes.
  system.stateVersion = "25.11";
}
