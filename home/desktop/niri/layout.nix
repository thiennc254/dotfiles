_: {
  programs.niri.settings = {
    prefer-no-csd = true;
    screenshot-path = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";

    layout = {
      gaps = 12.5;
      center-focused-column = "never";

      preset-column-widths = [
        {proportion = 0.33333;}
        {proportion = 0.5;}
        {proportion = 0.66667;}
      ];

      default-column-width = {proportion = 0.5;};

      focus-ring = {
        width = 0;
      };

      border = {
        on = true;
        width = 4;
        "active-color" = "#ffc87f";
        "inactive-color" = "#505050";
        "urgent-color" = "#9b0000";
      };

      shadow = {
        softness = 30;
        spread = 5;
        offset = {
          x = 0;
          y = 5;
        };
        color = "#0007";
      };

      struts = {};
    };

    animations = {
      slowdown = 1.0;
      workspace-switch = {
        spring = {
          damping-ratio = 1.0;
          stiffness = 1000;
          mass = 1.0;
        };
      };
      window-open = {
        spring = {
          damping-ratio = 0.8;
          stiffness = 800;
          mass = 1.0;
        };
      };
    };
  };
}
