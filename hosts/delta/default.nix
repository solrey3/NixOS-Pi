{ ... }:

{
  imports = [
    ./desktop-configuration.nix
    ../../modules/darwin/apps.nix
  ];

  # 2022 M2 MacBook Air (Mac14,2), used closed-clamshell with an external
  # display because its internal panel is broken.
}
