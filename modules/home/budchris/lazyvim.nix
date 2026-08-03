{ inputs, pkgs, ... }:

let
  copilotLibraryPath = pkgs.lib.makeLibraryPath (with pkgs; [
    glib
    libei
    libjpeg
    libpng
    libsecret
    pipewire
    stdenv.cc.cc.lib
    libx11
    libxtst
  ]);

  nvimConfig = pkgs.runCommand "budchris-nvim-config" { } ''
    cp -r ${inputs.lazyvim-starter} $out
    chmod -R u+w $out
    mkdir -p $out/lua/plugins

    cat > $out/lua/plugins/copilot-native-libs.lua <<'EOF'
    -- The native modules bundled with LazyVim's copilot.lua need these
    -- shared libraries on NixOS (notably libsecret for @github/keytar).
    local copilot_library_path = "${copilotLibraryPath}"

    return {
      {
        "zbirenbaum/copilot.lua",
        init = function()
          vim.env.LD_LIBRARY_PATH = vim.env.LD_LIBRARY_PATH and (copilot_library_path .. ":" .. vim.env.LD_LIBRARY_PATH)
            or copilot_library_path
        end,
      },
    }
    EOF

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
    LD_LIBRARY_PATH = copilotLibraryPath;
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
