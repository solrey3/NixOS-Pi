{ pkgs, ... }:

let
  # Pick the Electron password-store backend at runtime based on the active
  # desktop so the same wrapper works correctly in both KDE Plasma (kwallet6)
  # and Sway / non-KDE sessions (gnome-libsecret).
  #
  # KDE Plasma: kwalletd6 owns org.freedesktop.secrets and is unlocked at
  #   login via SDDM's PAM kwallet module.  Using kwallet6 talks to it
  #   directly, bypassing libsecret and any gnome-keyring race.
  #
  # Sway / other: gnome-keyring is started in the Sway autostart and is the
  #   sole org.freedesktop.secrets provider.  gnome-libsecret works cleanly.
  cursor = pkgs.writeShellScriptBin "cursor" ''
    case "''${XDG_CURRENT_DESKTOP:-}" in
      KDE|*KDE*) store=kwallet6        ;;
      *)         store=gnome-libsecret ;;
    esac
    exec ${pkgs.code-cursor}/bin/cursor --password-store="$store" "$@"
  '';
in
{
  home.packages = [ cursor ];
}
