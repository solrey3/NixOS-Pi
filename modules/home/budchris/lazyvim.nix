{ inputs, pkgs, ... }:

let
  nvimConfig = pkgs.runCommand "budchris-nvim-config" { } ''
    cp -r ${inputs.lazyvim-starter} $out
    chmod -R u+w $out
    mkdir -p $out/lua/plugins

    cat > $out/lua/plugins/copilot.lua <<'EOF'
    -- Use copilot.vim only. Do not enable LazyVim's Copilot extra at the
    -- same time; it installs zbirenbaum/copilot.lua and both plugins define
    -- :Copilot / start competing clients.
    --
    -- Pin copilot.vim to the last known-good release before the v1.42.0
    -- setup/auth regression discussed in:
    -- https://github.com/orgs/community/discussions/152171
    --
    -- LazyVim/blink owns <Tab>, so give copilot.vim explicit mappings.
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_filetypes = { ["*"] = true }
    vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = "Accept Copilot suggestion",
    })
    vim.keymap.set("i", "<C-L>", "<Plug>(copilot-accept-word)", { desc = "Accept Copilot word" })
    vim.keymap.set("i", "<M-\\>", "<Plug>(copilot-suggest)", { desc = "Request Copilot suggestion" })

    return {
      {
        "github/copilot.vim",
        tag = "v1.34.0",
        cmd = "Copilot",
        event = "InsertEnter",
      },
      { "zbirenbaum/copilot.lua", enabled = false },
      { "zbirenbaum/copilot-cmp", enabled = false },
      { "fang2hou/blink-copilot", enabled = false },
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

  # Keep LazyVim's copilot.lua extra disabled; copilot.vim above provides Copilot.
  xdg.configFile."nvim/lazyvim.json" = {
    force = true;
    text = builtins.toJSON {
      extras = [
        "lazyvim.plugins.extras.lang.markdown"
      ];
      install_version = 8;
      version = 8;
    };
  };
}
