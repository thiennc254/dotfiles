_: {
  programs.niri.settings = {
    prefer-no-csd = true;
    screenshot-path = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";

    layout = {
      gaps = 10;
      center-focused-column = "never";

      preset-column-widths = [
        {proportion = 1.0;}
        {proportion = 0.66667;}
        {proportion = 0.5;}
        {proportion = 0.33333;}
      ];

      default-column-width = {proportion = 0.5;};

      focus-ring = {
        width = 0;
      };

      border = {
        enable = true;
        width = 5;
        active.color = "#73daca80";
        inactive.color = "#1e1e2ebf";
        urgent.color = "#f38ba8";
      };

      shadow = {
        enable = false;
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
  };
}
