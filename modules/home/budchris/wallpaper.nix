{ lib, pkgs, osConfig ? null, ... }:

let
  isQuebec = (osConfig.networking.hostName or "") == "quebec";
  wallpaper = ./wallpapers/quebec-wall-11-inspired.svg;
  wallpaperName = "quebec-wall-11-inspired.svg";
in
{
  config = lib.mkIf isQuebec {
    home.file."Pictures/Wallpapers/${wallpaperName}".source = wallpaper;

    xdg.configFile."autostart/quebec-wallpaper.desktop".text = ''
      [Desktop Entry]
      Type=Application
      Name=Quebec wallpaper
      Comment=Apply the Wall-11 inspired wallpaper in Plasma
      Exec=${pkgs.runtimeShell} -lc '${pkgs.kdePackages.plasma-workspace}/bin/plasma-apply-wallpaperimage "$HOME/Pictures/Wallpapers/${wallpaperName}" >/dev/null 2>&1 || true'
      X-KDE-autostart-phase=1
    '';
  };
}
