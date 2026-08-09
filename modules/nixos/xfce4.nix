{ pkgs, ... }:

{
  services.xserver = {
    enable = true;

    displayManager.lightdm.enable = true;

    desktopManager.xfce = {
      enable = true;
      enableScreensaver = false;
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        i3lock
        i3status
        rofi
      ];
    };

    xkb = {
      layout = "us";
      variant = "";
    };
  };

  services.displayManager.defaultSession = "xfce+i3";

  services.gnome.gnome-keyring.enable = true;
  security.pam.services = {
    login.enableGnomeKeyring = true;
    lightdm.enableGnomeKeyring = true;
  };

  services.printing.enable = true;

  security.rtkit.enable = true;
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    seahorse
    thunar-archive-plugin
    xfce4-pulseaudio-plugin
    xterm
  ];
}
