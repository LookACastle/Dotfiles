{ lib, config, pkgs, ... }:

{
  imports = [
    ../software/emacs.nix 
    ../software/firefox.nix
  ];
}
