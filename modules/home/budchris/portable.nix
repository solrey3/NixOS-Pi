{ pkgs, ... }:

{
  imports = [
    ./ai.nix
    ./bash.nix
    ./git.nix
    ./lazyvim.nix
    ./starship.nix
  ];

  home.packages = with pkgs; [
    btop
    curl
    eza
    fastfetch
    fd
    ffmpeg
    fzf
    jq
    just
    openssh
    ripgrep
    rsync
    tmux
    tree
    unzip
    wget
    yt-dlp
    zip
    zoxide
  ];

  programs.home-manager.enable = true;
}
