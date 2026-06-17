{ inputs, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  home.packages = with pkgs; [
    # LazyVim/runtime helpers
    gnumake
    nodejs
    python3
    tree-sitter
    wl-clipboard
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    withPython3 = true;
    withRuby = false;
  };

  # Upstream LazyVim starter template. Plugins are managed by lazy.nvim on first launch.
  xdg.configFile."nvim" = {
    source = inputs.lazyvim-starter;
    recursive = true;
  };
}
