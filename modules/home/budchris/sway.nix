{ pkgs, ... }:

let
  swayStatusBar = ''
bar {
    position top

    # When the status_command prints a new line to stdout, swaybar updates.
    # The default just shows the current date and time.
    status_command while date +'%Y-%m-%d %X'; do sleep 1; done

    colors {
        statusline #ffffff
        background #323232
        inactive_workspace #32323200 #32323200 #5c5c5c
    }
}
'';

  swayAutostart = ''
# Status bar and system tray. Waybar's tray hosts NetworkManager, Proton VPN,
# Bluetooth, and other StatusNotifier/AppIndicator applications.
exec_always ${pkgs.runtimeShell} -lc '${pkgs.procps}/bin/pkill -x waybar || true; exec ${pkgs.waybar}/bin/waybar'
exec ${pkgs.networkmanagerapplet}/bin/nm-applet --indicator
exec ${pkgs.blueman}/bin/blueman-applet
exec ${pkgs.proton-vpn}/bin/protonvpn-app --start-minimized
'';

  swayKeyboardLogout = ''
    set $mode_logout Log out? Enter = yes, Escape = no
    bindsym $mod+Shift+e mode "$mode_logout"

    mode "$mode_logout" {
        bindsym Return exec swaymsg exit, mode "default"
        bindsym Escape mode "default"
    }
'';

  swayDisplay = ''

### Built-in display density
# Native 2880x1920 panel at 1.5x gives a 1920x1280 logical workspace
# instead of the default 2x-scaled 1440x960 workspace.
output eDP-1 mode 2880x1920@120Hz scale 1.5
'';

  swayTrackpad = ''

### Desktop-like trackpad behavior
# Match COSMIC/Plasma defaults more closely: tap-to-click, multi-finger tap
# clicks, natural two-finger scrolling, clickfinger right/middle click, and
# click-to-focus instead of focusing windows just by brushing the trackpad.
input type:touchpad {
    tap enabled
    # 1-finger tap = left click, 2-finger tap = right click,
    # 3-finger tap = middle click.
    tap_button_map lrm
    drag enabled
    drag_lock disabled
    # Keep taps responsive even immediately after typing/using the pointing stick.
    dwt disabled
    dwtp disabled
    natural_scroll enabled
    scroll_method two_finger
    click_method clickfinger
    middle_emulation enabled
    pointer_accel 0.25
    accel_profile adaptive
}

focus_follows_mouse no
mouse_warping none

# Touchpad gestures similar to modern desktop environments.
bindgesture swipe:3:left workspace next
bindgesture swipe:3:right workspace prev
bindgesture swipe:3:up exec $menu
bindgesture swipe:3:down scratchpad show
'';
in
{
  home.packages = with pkgs; [
    blueman
    networkmanagerapplet
    proton-vpn
  ];

  xdg.configFile."sway/config".text = builtins.replaceStrings
    [
      "set $term foot"
      "bindsym $mod+Shift+e exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'"
      swayStatusBar
    ]
    [
      "set $term ${pkgs.ghostty}/bin/ghostty${swayDisplay}${swayTrackpad}"
      swayKeyboardLogout
      swayAutostart
    ]
    (builtins.readFile "${pkgs.sway-unwrapped}/etc/sway/config");

  xdg.configFile."waybar/config".text = ''
    {
      "layer": "top",
      "position": "top",
      "height": 30,
      "spacing": 8,
      "modules-left": ["sway/workspaces", "sway/mode"],
      "modules-center": ["clock"],
      "modules-right": ["tray", "network", "bluetooth", "pulseaudio", "battery"],
      "tray": {
        "icon-size": 18,
        "spacing": 10
      },
      "network": {
        "format-wifi": "  {essid} ({signalStrength}%)",
        "format-ethernet": "󰈀  {ipaddr}/{cidr}",
        "format-disconnected": "󰖪  disconnected",
        "tooltip-format": "{ifname}: {ipaddr}/{cidr}",
        "on-click": "${pkgs.networkmanagerapplet}/bin/nm-connection-editor"
      },
      "bluetooth": {
        "format": " {status}",
        "format-connected": " {device_alias}",
        "format-disabled": " disabled",
        "format-off": " off",
        "on-click": "${pkgs.blueman}/bin/blueman-manager"
      },
      "pulseaudio": {
        "format": "  {volume}%",
        "format-muted": "  muted",
        "on-click": "${pkgs.pavucontrol}/bin/pavucontrol"
      },
      "battery": {
        "format": "{capacity}% {icon}",
        "format-icons": ["󰂎", "󰁺", "󰁻", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂", "󰁹"]
      },
      "clock": {
        "format": "{:%Y-%m-%d %H:%M}"
      }
    }
  '';

  xdg.configFile."waybar/style.css".text = ''
    * {
      border: none;
      border-radius: 0;
      font-family: "JetBrainsMono Nerd Font Mono", monospace;
      font-size: 12px;
      min-height: 0;
    }

    window#waybar {
      background: #323232;
      color: #ffffff;
    }

    #workspaces button,
    #mode,
    #clock,
    #tray,
    #network,
    #bluetooth,
    #pulseaudio,
    #battery {
      padding: 0 10px;
    }

    #workspaces button {
      color: #cccccc;
    }

    #workspaces button.focused,
    #workspaces button.active {
      background: #5c5c5c;
      color: #ffffff;
    }

    #network.disconnected,
    #bluetooth.disabled,
    #bluetooth.off,
    #pulseaudio.muted,
    #battery.warning,
    #battery.critical {
      color: #ffcc66;
    }
  '';
}
