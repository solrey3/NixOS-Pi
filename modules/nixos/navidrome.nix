{ ... }:

{
  services.navidrome = {
    enable = true;
    openFirewall = true;
    settings = {
      Address = "0.0.0.0";
      Port = 4533;

      # Use the archive root so Navidrome can import playlists from
      # /mnt/archive/Playlists while resolving their ../Music/... entries.
      MusicFolder = "/mnt/archive";
      AutoImportPlaylists = true;
      PlaylistsPath = "Playlists/**";

      EnableInsightsCollector = false;
    };
  };

  # Navidrome's library lives on the external Archive drive.
  systemd.services.navidrome = {
    after = [ "mnt-archive.mount" ];
    requires = [ "mnt-archive.mount" ];
  };
}
