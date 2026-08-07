{
  description = "A very basic flake";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-doom-emacs-unstraightened = {
      url = "github:marienz/nix-doom-emacs-unstraightened";
      inputs.nixpkgs.follows = "";
    };
  };

  outputs = { home-manager, nixpkgs, ... } @ inputs: 
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
  in
  {
    nixosConfigurations = {
      thokik = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./nix/hosts/thokik/configuration.nix
          ./nix/modules/assets/fonts.nix
          ./nix/modules/software/base.nix
          ./nix/modules/software/hyprland.nix
          ./nix/modules/services/base.nix
          ./nix/modules/services/base-laptop.nix
          ./nix/modules/user.nix
	   home-manager.nixosModules.home-manager
	   {
             home-manager.extraSpecialArgs = { inherit inputs; };
             home-manager.users.thokik = ./nix/hosts/thokik/home.nix;
           }
        ];
      };
    };
  };
}
