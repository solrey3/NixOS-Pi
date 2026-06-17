{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    proton-vpn
    tailscale
    wireguard-tools
  ];

  # Proton VPN integrates with NetworkManager and stores secrets in a keyring.
  services.gnome.gnome-keyring.enable = true;

  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };

  # Allow Tailscale peer traffic and make exit nodes/subnet routes work cleanly.
  networking.firewall = {
    allowedUDPPorts = [ 41641 ];
    trustedInterfaces = [ "tailscale0" ];
    checkReversePath = "loose";
  };
}
