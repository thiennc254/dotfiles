_: {
  programs.niri.settings = {
    input = {
      keyboard.xkb = {};

      touchpad = {
        tap = true;
        natural-scroll = true;
        dwt = true;
      };
    };

    outputs = {
      "HDMI-A-1" = {
        mode = {
          width = 1920;
          height = 1080;
          refresh = 60.0;
        };
        scale = 1.0;
        position = {
          x = 1280;
          y = 180;
        };
        focus-at-startup = true;
      };

      "eDP-1" = {
        mode = {
          width = 1920;
          height = 1080;
          refresh = 60.02;
        };
        # transform = {
        #   rotation = 0;
        # };
        scale = 1.25;
        position = {
          x = 0;
          y = 0;
        };
      };
    };
  };
}
