{ pkgs, ... }:

{
  home-manager.users.budchris = import ../../home/budchris;

  security.sudo.wheelNeedsPassword = false;

  users.users.budchris = {
    isNormalUser = true;
    description = "Buddha Christ";
    extraGroups = [ "docker" "networkmanager" "wheel" ];
    shell = pkgs.bashInteractive;
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
