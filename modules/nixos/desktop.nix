{ config, lib, pkgs, ... }:

let
  cfg = config.custom.desktop;
in
{
  options.custom.desktop = {
    enable = lib.mkEnableOption "desktop environments" // {
      default = true;
    };

    defaultSession = lib.mkOption {
      type = lib.types.str;
      default = "plasma";
      description = "Default session selected by the display manager.";
    };

    environments = {
      plasma = lib.mkEnableOption "KDE Plasma 6" // { default = true; };
      hyprland = lib.mkEnableOption "Hyprland";
      cosmic = lib.mkEnableOption "COSMIC";
      sway = lib.mkEnableOption "Sway";
    };
  };

  config = lib.mkIf cfg.enable {
    services.xserver.enable = true;

    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

    services.displayManager.defaultSession = cfg.defaultSession;

    # Unlock secret stores during graphical login so GNOME/libsecret apps,
    # KDE apps, Proton VPN, browsers, etc. do not show keyring prompts.
    services.gnome.gnome-keyring.enable = true;
    environment.systemPackages = [ pkgs.seahorse ];
    security.pam.services = {
      login.enableGnomeKeyring = true;
      sddm.enableGnomeKeyring = true;
      sddm.kwallet.enable = lib.mkIf cfg.environments.plasma true;
    };

    services.desktopManager.plasma6.enable = cfg.environments.plasma;

    programs.hyprland = lib.mkIf cfg.environments.hyprland {
      enable = true;
      xwayland.enable = true;
    };

    services.desktopManager.cosmic.enable = cfg.environments.cosmic;

    programs.sway = lib.mkIf cfg.environments.sway {
      enable = true;
      wrapperFeatures.gtk = true;
      extraPackages = with pkgs; [
        foot
        grim
        slurp
        wmenu
        brightnessctl
        swaybg
        swayidle
        swaylock
        waybar
        wl-clipboard
      ];
    };

    services.xserver.xkb = {
      layout = "us";
      variant = "";
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

    xdg.portal.enable = true;

    programs.firefox.enable = true;
  };
}
