_: {
  programs.ghostty = {
    enable = true;

    settings = {
      # --- Theme & Font ---
      theme = "Catppuccin Mocha";
      font-family = "CaskaydiaCove Nerd Font Mono";
      font-size = 13.0;

      # --- Clipboard ---
      clipboard-read = "allow";
      clipboard-write = "allow";

      # --- Cursor ---
      cursor-style = "block";
      cursor-style-blink = true;
      shell-integration-features = "no-cursor";

      # --- Windows & Aesthetics ---
      window-padding-x = 8;
      window-padding-y = 0;
      window-decoration = false;
      confirm-close-surface = false;
      background-opacity = 0.7;
      background-blur = false;

      # ---  PerFormance & QoL ---
      scrollback-limit = 100000;
      mouse-hide-while-typing = true;
      copy-on-select = "clipboard";
    };
  };
}
