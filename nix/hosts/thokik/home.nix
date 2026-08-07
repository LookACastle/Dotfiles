{ config, inputs, self, ... }:

{
  imports = [
    ../../modules/home-manager/dotfiles.nix
    ../../modules/home-manager/software/base.nix
    ../../modules/home-manager/software/base-graphical.nix
  ];

  programs.home-manager.enable = true;

  home = {
    username = "thokik";
    homeDirectory = "/home/thokik";
    stateVersion = "26.05";
  };
}
