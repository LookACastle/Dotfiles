{ pkgs, lib, inputs, config, ... }: {
  environment.systemPackages = with pkgs; [
    pavucontrol
    qpwgraph
  ];

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;

    extraConfig = {
      pipewire."99-silent-bell.conf" = {
        "context.properties" = {
          "module.x11.bell" = false;
	      };
      };
    };
  };
}
