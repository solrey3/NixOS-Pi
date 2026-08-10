{ pkgs, ... }:

{
  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };

  environment.systemPackages = [ pkgs.tailscale ];

  networking.firewall = {
    allowedUDPPorts = [ 41641 ];
    trustedInterfaces = [ "tailscale0" ];
    checkReversePath = "loose";
  };
}
