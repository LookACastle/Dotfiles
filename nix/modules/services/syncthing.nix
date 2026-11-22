{ config, inputs, pkgs, ... }: 
{
  services.syncthing = {
    enable = true;

    dataDir = "/home/${config.user.name}";
    user = config.user.name;
  };
}
