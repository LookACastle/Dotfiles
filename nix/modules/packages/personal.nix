{ lib, config, pkgs, ... }:

{
  imports = [
    ../services/syncthing.nix
  ];
}
