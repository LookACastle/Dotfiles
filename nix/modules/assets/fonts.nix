{ config, pkgs, pkgs-unstable, lib, ... }:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      fira-code-symbols
      font-awesome
      mplus-outline-fonts.githubRelease
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
    ];

    fontconfig = {
      defaultFonts = {
        serif = [ "Times New Roman" ];
        sansSerif = [ "Arial" ];
        monospace = [ "M PLUS 1 CODE" ];
      };

    };
  };
}
