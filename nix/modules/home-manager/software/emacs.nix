{ config, inputs, pkgs, ... }: 
{
  imports = [ inputs.nix-doom-emacs-unstraightened.homeModule ];
  programs.doom-emacs = {
    enable = true;

    doomDir = ../../../../doom.d; # I can't get config.home.homeDirectory working here for some reason
    doomLocalDir = "${config.home.homeDirectory}/.local/share/nix-doom";
    emacs = pkgs.emacs-pgtk;
  };
  services.emacs.enable = true;

  home.file.".doom.d" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Dotfiles/doom.d/";
    recursive = true;
  };

  home.file."${config.home.homeDirectory}/.local/share/nix-doom/.create".text = ""; # Ensure doomLocalDir exists
}
