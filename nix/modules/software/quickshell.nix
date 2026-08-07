{ pkgs, lib, inputs, config, ... }: {
  environment.systemPackages = with pkgs; [
    matugen
    quickshell
  ];
}
