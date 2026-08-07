{ config, inputs, pkgs, ... }: 
{
  programs.firefox = {
    enable = true;

    languagePacks = [
      "dk"
      "en-GB"
    ];

    policies = {
      DisablePocket = true;
      DisableTelemetry = true;

      FirefoxHome = {
        Pocket = false;
        Snippets = false;
      };
    };
    
    profiles."nix-controlled" = {
      isDefault = true;
      search = {
        force = true;
        default = "ddg";
        privateDefault = "ddg";
      };

      settings = {
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      };

      userChrome = 
        ''
        #TabsToolbar
        {
          visibility: collapse;
        }
        '';
    };
  };
}
