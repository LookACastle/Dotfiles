{ config, lib, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    
    coc.enable = true;
    extraConfig = lib.fileContents ../../../../nvim/init.vim;
    plugins = with pkgs.vimPlugins; [
      nerdtree
      nvim-treesitter.withAllGrammars
      vim-airline
      vim-airline-themes
      vim-css-color
      vim-devicons
      vim-gitgutter
      catppuccin-nvim
    ];
    waylandSupport = true;
  };
}
