# Add custom packages here.
#
# Example:
# { pkgs }:
# {
#   my-package = pkgs.callPackage ./my-package { };
# }

{ pkgs }:

{
  pi-console = pkgs.callPackage ./pi-console { };
}
