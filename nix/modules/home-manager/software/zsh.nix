{ config, lib, pkgs, ... }: 

{
  home.packages = [
    pkgs.nitch
  ];

  programs.zsh = {
    enable = true;
    
    defaultKeymap = "emacs";

    initContent = ''
      source ~/Dotfiles/zshrc
    '';

    zplug = { 
      enable = true;
    };
  };
}
