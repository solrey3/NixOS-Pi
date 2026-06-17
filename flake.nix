{
  description = "Modular multi-host NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lazyvim-starter = {
      url = "github:LazyVim/starter";
      flake = false;
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;

      # Add or remove supported systems for packages/devShells here.
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = lib.genAttrs systems;

      # Every directory under ./hosts becomes a NixOS host.
      hostDirs = lib.filterAttrs (_: type: type == "directory") (builtins.readDir ./hosts);

      mkHost = hostname: hostSystem:
        lib.nixosSystem {
          system = hostSystem;
          specialArgs = {
            inherit inputs self hostname;
          };
          modules = [
            ({ ... }: { nixpkgs.overlays = [ self.overlays.default ]; })
            home-manager.nixosModules.home-manager
            ./modules/nixos/common.nix
            ./modules/nixos/home-manager.nix
            ./hosts/${hostname}
          ];
        };
    in
    {
      nixosConfigurations = lib.mapAttrs
        (hostname: _: mkHost hostname (import ./hosts/${hostname}/system.nix))
        hostDirs;

      overlays.default = import ./overlays;

      packages = forAllSystems (system:
        import ./pkgs { pkgs = nixpkgs.legacyPackages.${system}; });

      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.nixpkgs-fmt);

      devShells = forAllSystems (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              nil
              nixpkgs-fmt
              statix
            ];
          };
        });
    };
}
