{ config, inputs, self, ... }:

{
  imports = [
    ../../modules/home-manager/packages/laptop.nix
  ];

  programs.home-manager.enable = true;

  home = {
    username = "lookacastle";
    homeDirectory = "/home/lookacastle";
    stateVersion = "26.05";
  };
}
