{ pkgs, lib, inputs, config, ... }: {
  environment.systemPackages = with pkgs; [
    flameshot
  ];
}
