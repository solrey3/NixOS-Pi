{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nextcloud-client
    obsidian
    rpi-imager
  ];
}
