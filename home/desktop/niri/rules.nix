_: {
  programs.niri.settings = {
    window-rules = [
      {
        matches = [{app-id = "^org\\.wezfurlong\\.wezterm$";}];
        default-column-width = {};
      }
      {
        matches = [
          {
            app-id = "firefox$";
            title = "^Picture-in-Picture$";
          }
          {
            app-id = "brave$";
            title = "^Picture-in-Picture$";
          }
          {
            app-id = "firefox$";
            title = "^Extension: \\(Bitwarden Password Manager\\)";
          }
        ];
        open-floating = true;
      }
      {
        draw-border-with-background = false;
        geometry-corner-radius = {
          top-left = 12.0;
          top-right = 12.0;
          bottom-left = 12.0;
          bottom-right = 12.0;
        };
        clip-to-geometry = true;
      }
      {
        background-effect = {
          blur = true;
          xray = false;
        };
      }
    ];

    layer-rules = [
      {
        matches = [{namespace = "^noctalia-(bar-[^\"]+)$";}];
        background-effect = {
          blur = true;
          xray = false;
        };
      }
      {
        matches = [{namespace = "noctalia-window-switcher";}];
        background-effect = {
          blur = true;
          xray = false;
        };
      }
      {
        matches = [{namespace = "^noctalia-backdrop";}];
        place-within-backdrop = true;
      }
    ];
  };
}
