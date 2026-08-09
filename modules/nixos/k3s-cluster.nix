{ config, hostname, lib, pkgs, ... }:

let
  cfg = config.custom.k3sCluster;
  isBootstrap = cfg.role == "bootstrap";
  isServer = cfg.role != "agent";
in
{
  options.custom.k3sCluster = {
    enable = lib.mkEnableOption "the homelab k3s cluster";

    role = lib.mkOption {
      type = lib.types.enum [ "bootstrap" "server" "agent" ];
      description = "Bootstrap the first control-plane node, join another server, or join an agent.";
    };

    serverAddress = lib.mkOption {
      type = lib.types.str;
      default = "https://kilo.local:6443";
      description = "URL of the bootstrap k3s server. Prefer a DHCP-reserved IP or stable LAN DNS name.";
    };

    tokenFile = lib.mkOption {
      type = lib.types.path;
      default = "/var/lib/rancher/k3s/cluster-token";
      description = "Out-of-store token file used by joining nodes.";
    };

    deployWorkloads = lib.mkOption {
      type = lib.types.bool;
      default = isBootstrap;
      description = "Install the manifests in kubernetes/homelab.yaml from this server.";
    };
  };

  config = lib.mkIf cfg.enable {
    # Do not let NetworkManager interfere with interfaces managed by flannel.
    networking.networkmanager.unmanaged = [
      "interface-name:cni*"
      "interface-name:flannel*"
      "interface-name:veth*"
    ];

    services.k3s = {
      enable = true;
      role = if isServer then "server" else "agent";
      nodeName = hostname;
      clusterInit = isBootstrap;
      serverAddr = lib.mkIf (!isBootstrap) cfg.serverAddress;
      tokenFile = lib.mkIf (!isBootstrap) cfg.tokenFile;
      gracefulNodeShutdown.enable = true;
      extraFlags = lib.optionals isServer [
        "--tls-san=kilo.local"
        "--write-kubeconfig-mode=0640"
        "--write-kubeconfig-group=k3s"
      ];
      manifests = lib.mkIf cfg.deployWorkloads {
        homelab.source = ../../kubernetes/homelab.yaml;
      };
    };

    # Kubernetes API and etcd (control plane), kubelet, and flannel VXLAN.
    networking.firewall = {
      allowedTCPPorts = [ 6443 10250 ] ++ lib.optionals isServer [ 2379 2380 ];
      allowedUDPPorts = [ 8472 ];
      trustedInterfaces = [ "cni0" "flannel.1" ];
    };

    environment.systemPackages = with pkgs; [
      kubectl
      k3s
      kubernetes-helm
    ];

    users.groups.k3s = { };
    users.users.budchris.extraGroups = [ "k3s" ];

    # Make illmatic's media available on every node so the workloads can move
    # once their application-data PVCs use shared or replicated storage.
    boot.supportedFilesystems = [ "nfs" ];
    fileSystems = {
      "/mnt/illmatic/Jukebox" = {
        device = "illmatic:/volume1/Jukebox";
        fsType = "nfs";
        options = [ "_netdev" "nofail" "x-systemd.automount" "x-systemd.idle-timeout=10min" ];
      };
      "/mnt/illmatic/Movies" = {
        device = "illmatic:/volume1/Movies";
        fsType = "nfs";
        options = [ "_netdev" "nofail" "x-systemd.automount" "x-systemd.idle-timeout=10min" ];
      };
      "/mnt/illmatic/TV" = {
        device = "illmatic:/volume1/TV";
        fsType = "nfs";
        options = [ "_netdev" "nofail" "x-systemd.automount" "x-systemd.idle-timeout=10min" ];
      };
      "/mnt/illmatic/Downloads" = {
        device = "illmatic:/volume1/Downloads";
        fsType = "nfs";
        options = [ "_netdev" "nofail" "x-systemd.automount" "x-systemd.idle-timeout=10min" ];
      };
      "/mnt/illmatic/Sports" = {
        device = "illmatic:/volume1/Sports";
        fsType = "nfs";
        options = [ "_netdev" "nofail" "x-systemd.automount" "x-systemd.idle-timeout=10min" ];
      };
    };
  };
}
