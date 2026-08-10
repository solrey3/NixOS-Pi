# Foxtrot was configured as a Darwin host in nix-config, so that repository did
# not contain its NixOS disk UUIDs. Replace this file with the output of
# `nixos-generate-config --show-hardware-config` on foxtrot before switching.
{ config, lib, modulesPath, ... }:

{
  imports = [
    (modulesPath + "/hardware/network/broadcom-43xx.nix")
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usb_storage" "uas" "sd_mod" ];
  boot.kernelModules = [ "kvm-intel" ];

  # Evaluation-safe placeholders only; replace both with foxtrot's generated
  # UUID-backed entries before activation.
  fileSystems."/" = {
    device = "/dev/disk/by-label/NIXOS";
    fsType = "ext4";
  };
  fileSystems."/boot" = {
    device = "/dev/disk/by-label/ESP";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
  };
  swapDevices = [ ];

  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
