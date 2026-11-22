{ lib, config, pkgs, ... }:

{
  imports = [
    ./personal.nix
    ../../hosts/laptop/configuration.nix
    ../assets/fonts.nix
    ../software/base.nix
    ../software/hyprland.nix
    ../services/base.nix
    ../services/base-laptop.nix
    ../user.nix
  ];
}
