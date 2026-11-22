{ config, inputs, pkgs, ... }: 
{
  programs.mpv = {
    enable = true;

    scripts = with pkgs.mpvScripts; [
      acompressor
      autosub
      modernx-zydezu
      sponsorblock
      thumbnail
    ];

    config = {
      profile = "high-quality";
      ytdl-format = "bestvideo+bestaudio";
      cache-default = 4000000;
    };
  };
}
