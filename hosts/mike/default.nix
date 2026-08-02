{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/beelink-k3s-node.nix
  ];

  custom.k3sCluster.role = "server";
}
