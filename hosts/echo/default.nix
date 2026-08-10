{ ... }:

{
  imports = [ ../../modules/home/budchris/portable.nix ];

  home = {
    username = "budchris";
    homeDirectory = "/home/budchris";
    stateVersion = "24.11";
  };
}
