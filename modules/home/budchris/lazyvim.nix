{ inputs, pkgs, ... }:

let
  nvimConfig = pkgs.runCommand "budchris-nvim-config" { } ''
    cp -r ${inputs.lazyvim-starter} $out
    chmod -R u+w $out
    mkdir -p $out/lua/plugins

    cat > $out/lua/plugins/markdown.lua <<'EOF'
    -- Use Nixpkgs' marksman. Mason's downloaded marksman is a generic
    -- dynamically linked binary and does not run on NixOS without stub-ld.
    return {
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            marksman = {
              mason = false,
              cmd = { "${pkgs.marksman}/bin/marksman", "server" },
            },
          },
        },
      },
    }
    EOF
  '';
in
{
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  home.packages = with pkgs; [
    # LazyVim/runtime helpers
    gnumake
    marksman
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

  # Upstream LazyVim starter template plus local plugin overrides.
  # Plugins are managed by lazy.nvim on first launch.
  xdg.configFile."nvim" = {
    source = nvimConfig;
    recursive = true;
  };

  # Enable LazyVim's native Copilot extra.
  xdg.configFile."nvim/lazyvim.json" = {
    force = true;
    text = builtins.toJSON {
      extras = [
        "lazyvim.plugins.extras.ai.copilot"
        "lazyvim.plugins.extras.lang.markdown"
      ];
      install_version = 8;
      version = 8;
    };
  };
}
