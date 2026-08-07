{ lib, config, pkgs, ... }:

{
  imports = [ 
    ../services/pipewire.nix 
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    bash
    ffmpeg
    file
    gnutar
    gzip
    htop
    imagemagick
    rar
    sox
    yazi
  ];

  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.neovim = {
    defaultEditor = true;
    enable = true;
  };
}
