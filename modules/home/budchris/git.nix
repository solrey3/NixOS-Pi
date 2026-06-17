{ pkgs, ... }:

{
  home.packages = with pkgs; [
    delta
  ];

  programs.git = {
    enable = true;
    lfs.enable = true;

    settings = {
      user = {
        email = "solrey3@solrey3.com";
        name = "Solito Reyes III";
      };

      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
      rerere.enabled = true;

      core.editor = "nvim";

      interactive.diffFilter = "delta --color-only";
      delta = {
        navigate = true;
        side-by-side = true;
        line-numbers = true;
      };
      merge.conflictStyle = "zdiff3";
      diff.colorMoved = "default";
    };
  };

  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "ssh";
      prompt = "enabled";
      editor = "nvim";
    };
  };

  programs.lazygit = {
    enable = true;
    settings = {
      gui = {
        nerdFontsVersion = "3";
        showIcons = true;
      };
      git = {
        paging = {
          colorArg = "always";
          pager = "delta --dark --paging=never";
        };
      };
    };
  };
}
