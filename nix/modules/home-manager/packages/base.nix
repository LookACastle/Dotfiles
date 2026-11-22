{ lib, config, pkgs, ... }:

{
  imports = [
    ../software/zsh.nix 
    ../software/nvim.nix
    ../dotfiles.nix
  ];
}
