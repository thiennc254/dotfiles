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
          x = 0;
          y = 0;
        };
        focus-at-startup = true;
      };

      "eDP-1" = {
        mode = {
          width = 1920;
          height = 1080;
          refresh = 60.02;
        };
        scale = 1.5;
        position = {
          x = 1920;
          y = 0;
        };
      };
    };
  };
}
