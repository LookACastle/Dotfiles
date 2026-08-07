{ config, inputs, lib, ... }:

{
  xdg.configFile = {
    "flameshot/flameshot.ini".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Dotfiles/flameshot.ini";
    # "nvim/init.vim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Dotfiles/nvim/init.vim"; # Home manager insists on handling this itself 
    "hypr/hyprland.lua".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Dotfiles/hypr/hyprland.lua";
  };

  home.file = {
  #   "./.zshrc".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Dotfiles/zshrc"; # Home manager handles this itself
  };
}
