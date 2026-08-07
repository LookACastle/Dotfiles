{ lib, config, pkgs, ... }:

{
  imports = [
    ./emacs.nix 
    ./firefox.nix
  ];
}
