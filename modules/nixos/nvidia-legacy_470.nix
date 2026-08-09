{ config, pkgs, ... }:

{
  nixpkgs.config.nvidia.acceptLicense = true;

  # NVIDIA legacy 470 driver for older GPUs such as the GeForce GTX 660.
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.graphics.enable = true;
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.legacy_470;
  };
}
