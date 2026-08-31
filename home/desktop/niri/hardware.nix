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
        scale = 1.0;
        transform = "normal";
        mode = "1920x1080@60.000";
        position = {
          x = 0;
          y = 0;
        };
        focus-at-startup = true;
      };

      "eDP-1" = {
        scale = 1.5;
        transform = "normal";
        mode = "1920x1080@60.000";
        position = {
          x = 1920;
          y = 0;
        };
      };
    };
  };
}
