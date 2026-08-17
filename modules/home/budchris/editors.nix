{ pkgs, ... }:

let
  # Wrap Cursor so it always uses the GNOME libsecret keyring backend.
  # Without this flag Electron falls back to a plain-text store or prompts
  # for kwallet / a missing GNOME session keyring on a bare Sway session.
  cursor = pkgs.symlinkJoin {
    name = "cursor";
    paths = [ pkgs.code-cursor ];
    nativeBuildInputs = [ pkgs.makeWrapper ];
    postBuild = ''
      wrapProgram $out/bin/cursor \
        --add-flags "--password-store=gnome-libsecret"
    '';
  };
in
{
  home.packages = [ cursor ];
}
