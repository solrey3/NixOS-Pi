{ pkgs, ... }:

{
  home-manager.users.budchris = import ../../home/budchris;

  security.sudo.wheelNeedsPassword = false;

  users.users.budchris = {
    isNormalUser = true;
    description = "Buddha Christ";
    extraGroups = [ "docker" "networkmanager" "wheel" ];
    shell = pkgs.bashInteractive;
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGE9cz0z+9ynqZREVYHDCcj68gbpJLZ3TbXNzLRPQrvV sancho@panza"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDo0tT2bX049ZCRXwWBJAca2PzfSRAd4magQU/6yZMQA budchris@quebec"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFdNJeN48PBRxNZL85RhQxTLLyDMVWwPf6RGqA4x5egf budchris@oscar"
    ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
