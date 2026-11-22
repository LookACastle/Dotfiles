{ lib, config, pkgs, ... }:

{
  imports = [
    ./base.nix
    ./base-graphical.nix
    ./video.nix
  ];
}
