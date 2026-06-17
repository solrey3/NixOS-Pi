{ pkgs, ... }:

{
  home.packages = with pkgs; [
    claude-code
    fabric-ai
    opencode
  ];
}
