{ ... }:

{
  services.sabnzbd = {
    enable = true;
    openFirewall = true;
    configFile = null;
    allowConfigWrite = true;
    secretValues = {
      "@newsgroup_ninja_username@" = "/var/lib/sabnzbd/secrets/newsgroup_ninja_username";
      "@newsgroup_ninja_password@" = "/var/lib/sabnzbd/secrets/newsgroup_ninja_password";
    };

    settings = {
      misc = {
        host = "0.0.0.0";
        port = 8080;
        inet_exposure = "api+web (locally no auth)";

        download_dir = "/home/budchris/Downloads/sabnzbd/incomplete";
        complete_dir = "/home/budchris/Downloads/sabnzbd/complete";
        dirscan_dir = "/home/budchris/Downloads/sabnzbd/watch";
        permissions = "775";
      };

      servers.newsgroup_ninja = {
        name = "Newsgroup Ninja";
        displayname = "Newsgroup Ninja";
        host = "news.newsgroup.ninja";
        port = 563;
        connections = 50;
        retention = 6553;
        username = "@newsgroup_ninja_username@";
        password = "@newsgroup_ninja_password@";
        ssl = true;
        ssl_verify = "strict";
        enable = true;
      };
    };
  };

  users.users.sabnzbd.extraGroups = [ "users" ];

  systemd.tmpfiles.rules = [
    "a+ /home/budchris - - - - u:sabnzbd:x,m::x"
    "d /home/budchris/Downloads 0755 budchris users - -"
    "a+ /home/budchris/Downloads - - - - u:sabnzbd:r-x"
    "d /home/budchris/Downloads/sabnzbd 2775 sabnzbd users - -"
    "z /home/budchris/Downloads/sabnzbd 2775 sabnzbd users - -"
    "d /home/budchris/Downloads/sabnzbd/incomplete 2775 sabnzbd users - -"
    "z /home/budchris/Downloads/sabnzbd/incomplete 2775 sabnzbd users - -"
    "d /home/budchris/Downloads/sabnzbd/complete 2775 sabnzbd users - -"
    "z /home/budchris/Downloads/sabnzbd/complete 2775 sabnzbd users - -"
    "d /home/budchris/Downloads/sabnzbd/watch 2775 sabnzbd users - -"
    "z /home/budchris/Downloads/sabnzbd/watch 2775 sabnzbd users - -"
  ];
}
