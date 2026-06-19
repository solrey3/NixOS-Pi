{ pkgs, ... }:

let
  terminalFont = "JetBrainsMono Nerd Font Mono";
in
{
  home.sessionVariables = {
    TERMINAL = "ghostty";
    # Keep terminal launchers from using a stale SHELL value from an old session.
    SHELL = "/run/current-system/sw/bin/bash";
  };

  home.packages = with pkgs; [
    alacritty
    ghostty
    xdg-terminal-exec
  ];

  # Used by xdg-terminal-exec. The first available terminal is preferred.
  xdg.configFile."xdg-terminals.list".text = ''
    com.mitchellh.ghostty.desktop
    org.alacritty.Alacritty.desktop
  '';

  # Used by COSMIC's Default Apps settings for the terminal category.
  xdg.configFile."cosmic/com.system76.CosmicSettings.Shortcuts/v1/system_actions".text = ''
    {
      Terminal: "${pkgs.ghostty}/bin/ghostty",
    }
  '';

  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/x-terminal-emulator" = [ "com.mitchellh.ghostty.desktop" ];
      "x-scheme-handler/terminal" = [ "com.mitchellh.ghostty.desktop" ];
    };
  };

  xdg.configFile."sway/config".text = builtins.replaceStrings
    [ "set $term foot" ]
    [ "set $term ${pkgs.ghostty}/bin/ghostty" ]
    (builtins.readFile "${pkgs.sway-unwrapped}/etc/sway/config");

  xdg.configFile."ghostty/config".text = ''
    theme = dark:Adwaita Dark,light:Adwaita
    font-family = ${terminalFont}
    font-size = 10
    gtk-titlebar = false
    confirm-close-surface = false
    command = /run/current-system/sw/bin/bash
  '';

  xdg.configFile."foot/foot.ini".text = ''
    font=${terminalFont}:size=11
  '';

  xdg.configFile."alacritty/alacritty.toml".text = ''
    [window]
    dynamic_title = true

    [terminal.shell]
    program = "/run/current-system/sw/bin/bash"

    [font]
    size = 11.0

    [font.normal]
    family = "${terminalFont}"
    style = "Regular"

    [font.bold]
    family = "${terminalFont}"
    style = "Bold"

    [font.italic]
    family = "${terminalFont}"
    style = "Italic"

    [font.bold_italic]
    family = "${terminalFont}"
    style = "Bold Italic"
  '';
}
