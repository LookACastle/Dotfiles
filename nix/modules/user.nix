{ lib, config, pkgs, ... }:

{
  options = {
    user.enable = lib.mkEnableOption "enable user module";

    user.name = lib.mkOption {
      default = "ratatoskr";
      description = ''
        username
      '';
    };
  };

  config = lib.mkIf config.user.enable {
    users.users.${config.user.name} = {
      description = "default user for new systems";
      extraGroups = [ "wheel" "networkmanager" ];
      initialPassword = "remember_psswd";
      isNormalUser = true;
      shell = pkgs.zsh;
    };

    programs.zsh.enableGlobalCompInit = false;
  };
}
