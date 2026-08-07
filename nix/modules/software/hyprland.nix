{ pkgs, lib, inputs, config, ... }: {
  imports = [
    ./base-wayland.nix
    ./flameshot.nix
    ./quickshell.nix
  ];

  environment.systemPackages = with pkgs; [
    awww
    catppuccin-cursors.mochaSapphire
    hyprcursor
    kitty
    mako
    rofi
    swaylock
  ];

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
  
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.XDG_CURRENT_DESKTOP = "Hyprland";
  environment.sessionVariables.XDG_SESSION_DESKTOP = "Hyprland";
  environment.sessionVariables.SDL_VIDEODRIVER = "wayland";
  environment.sessionVariables.QT_QPA_PLATFORM = "wayland";

  # Screensharing
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
  };

  # Fcitx
  #i18n.inputMethod.fcitx5.settings.inputMethod = {
  #  GroupOrder."0" = "Default";
  #  "Groups/0" = {
  #    Name = "Default";
  #    "Default Layout" = "";
  #  };
  #};
}
