{ lib, pkgs, ... }:

let
  # These launchers enter the system-managed VPN-only network namespace.  The
  # actual applications cannot fall back to the normal network if proton0 goes
  # away.
  vpnAppLaunchers = pkgs.writeShellScriptBin "nicotine" ''
    exec /run/wrappers/bin/sudo -n /run/current-system/sw/bin/vpn-app-launch nicotine "$@"
  '';
  transmissionVpnLauncher = pkgs.writeShellScriptBin "transmission-gtk" ''
    exec /run/wrappers/bin/sudo -n /run/current-system/sw/bin/vpn-app-launch transmission "$@"
  '';
in
{
  home.packages = with pkgs; [
    nextcloud-client
    nicotine-plus
    obsidian
    picard
    quodlibet # Also provides Ex Falso.
    rpi-imager
    transmission_4-gtk

    # Take precedence over the applications' unconfined executables while
    # retaining their desktop files, icons, and other resources.
    (lib.hiPrio vpnAppLaunchers)
    (lib.hiPrio transmissionVpnLauncher)
  ];
}
