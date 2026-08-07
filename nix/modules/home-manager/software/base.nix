{ lib, config, pkgs, ... }:

{
  imports = [
    ./zsh.nix 
    ./nvim.nix
  ];
}
