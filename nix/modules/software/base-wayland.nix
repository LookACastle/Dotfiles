{ lib, config, pkgs, ... }:

{
  imports = [ 
    ./base-graphical.nix 
  ];

  environment.systemPackages = with pkgs; [
    grim
    wdisplays
    wev
  ];
}
