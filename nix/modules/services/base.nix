{ lib, config, pkgs, ... }:

{
  services.blueman.enable = true;
  services.envfs.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  networking.firewall.enable = true;
}
