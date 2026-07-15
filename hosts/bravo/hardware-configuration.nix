# Initial hardware profile for bravo.
# Replace the placeholder filesystem devices below with the output of
# `nixos-generate-config --show-hardware-config` from the target machine.
{ config, lib, modulesPath, ... }:

{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    # TODO: set to bravo's real root partition UUID/device.
    device = "/dev/disk/by-uuid/REPLACE-ME-ROOT";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    # TODO: set to bravo's real EFI system partition UUID/device.
    device = "/dev/disk/by-uuid/REPLACE-ME-BOOT";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
  };

  # TODO: add swapDevices here if bravo will use swap.
  swapDevices = [ ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
