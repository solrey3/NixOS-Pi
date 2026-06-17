{ ... }:

{
  # Common laptop support.
  hardware.enableRedistributableFirmware = true;

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  services.fwupd.enable = true;
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;

  # Useful for laptop SSDs/NVMes.
  services.fstrim.enable = true;
}
