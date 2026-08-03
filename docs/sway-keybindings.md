# Sway Keybindings Quick Reference

This flake installs the upstream default Sway config for `budchris`, with the terminal changed from `foot` to `ghostty`.

## Variables

| Variable | Value | Meaning |
| --- | --- | --- |
| `$mod` | `Super` / `Mod4` | Main modifier key, usually the Windows key |
| `$term` | `ghostty` | Terminal launched by Sway |
| `$menu` | `wmenu-run` | App launcher |
| Direction keys | `h` `j` `k` `l` | Left, down, up, right |

## Basics

| Keybinding | Action |
| --- | --- |
| `Super + Enter` | Open Ghostty terminal |
| `Super + d` | Open app launcher (`wmenu-run`) |
| `Super + Shift + q` | Kill focused window |
| `Super + Shift + c` | Reload Sway config |
| `Super + Shift + e`, then `Enter` | Exit Sway session with keyboard confirmation |
| `Super + Shift + e`, then `Escape` | Cancel logout confirmation |
| `Super + Left Mouse` | Drag floating windows |
| `Super + Right Mouse` | Resize floating windows |

## Focus and movement

| Keybinding | Action |
| --- | --- |
| `Super + h` / `Super + Left` | Focus left |
| `Super + j` / `Super + Down` | Focus down |
| `Super + k` / `Super + Up` | Focus up |
| `Super + l` / `Super + Right` | Focus right |
| `Super + Shift + h` / `Super + Shift + Left` | Move focused window left |
| `Super + Shift + j` / `Super + Shift + Down` | Move focused window down |
| `Super + Shift + k` / `Super + Shift + Up` | Move focused window up |
| `Super + Shift + l` / `Super + Shift + Right` | Move focused window right |

## Workspaces

| Keybinding | Action |
| --- | --- |
| `Super + 1` ... `Super + 9` | Switch to workspace 1-9 |
| `Super + 0` | Switch to workspace 10 |
| `Super + Shift + 1` ... `Super + Shift + 9` | Move focused window to workspace 1-9 |
| `Super + Shift + 0` | Move focused window to workspace 10 |

## Layout

| Keybinding | Action |
| --- | --- |
| `Super + b` | Split horizontally |
| `Super + v` | Split vertically |
| `Super + s` | Stacking layout |
| `Super + w` | Tabbed layout |
| `Super + e` | Toggle split layout |
| `Super + f` | Toggle fullscreen |
| `Super + Shift + Space` | Toggle floating mode |
| `Super + Space` | Toggle focus between tiling and floating areas |
| `Super + a` | Focus parent container |

## Scratchpad

| Keybinding | Action |
| --- | --- |
| `Super + Shift + -` | Move focused window to scratchpad |
| `Super + -` | Show/cycle scratchpad windows |

## Resize mode

| Keybinding | Action |
| --- | --- |
| `Super + r` | Enter resize mode |
| `h` / `Left` | Shrink width by 10 px |
| `j` / `Down` | Grow height by 10 px |
| `k` / `Up` | Shrink height by 10 px |
| `l` / `Right` | Grow width by 10 px |
| `Enter` / `Escape` | Leave resize mode |

## Media, brightness, and screenshots

| Keybinding | Action |
| --- | --- |
| `XF86AudioMute` | Toggle output mute |
| `XF86AudioLowerVolume` | Lower volume 5% |
| `XF86AudioRaiseVolume` | Raise volume 5% |
| `XF86AudioMicMute` | Toggle microphone mute |
| `XF86AudioPlay` / `XF86AudioPause` | Play/pause media |
| `XF86AudioPrev` | Previous track |
| `XF86AudioNext` | Next track |
| `XF86AudioStop` | Stop media |
| `XF86MonBrightnessDown` | Lower brightness 5% |
| `XF86MonBrightnessUp` | Raise brightness 5% |
| `Print` | Take a screenshot with `grim` |

## Trackpad

Sway is configured to behave more like COSMIC/Plasma:

- tap-to-click
- 2-finger tap for right click
- 3-finger tap for middle click
- tap-and-drag
- clickfinger right/middle click
- natural two-finger scrolling
- taps stay enabled immediately after typing
- click-to-focus instead of focus-follows-mouse
- 3-finger left/right swipes switch workspaces
- 3-finger up opens the launcher
- 3-finger down shows the scratchpad

## Display

The built-in `eDP-1` panel uses native `2880x1920@120Hz` with `scale 1.5`, giving a `1920x1280` logical workspace.

## Config location

The generated Sway config is managed in:

```text
modules/home/budchris/sway.nix
```

It reads Sway's default config and replaces the default terminal with Ghostty, replaces the click-based logout prompt with a keyboard confirmation mode, adds the trackpad profile, and swaps swaybar for Waybar.
