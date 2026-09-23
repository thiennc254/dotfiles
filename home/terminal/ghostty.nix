_: {
  programs.ghostty = {
    enable = true;

    settings = {
      # --- Theme & Font ---
      theme = "Catppuccin Mocha";
      font-family = "CaskaydiaCove Nerd Font Mono";
      font-size = 13.0;

      # --- Shell ---
      shell-integration = "none";
      shell-integration-features = "no-cursor";

      # --- Clipboard ---
      clipboard-read = "allow";
      clipboard-write = "allow";
      copy-on-select = false;
      clipboard-paste-protection = true;

      # --- Cursor ---
      cursor-style = "block";
      cursor-style-blink = true;

      # --- Windows ---
      window-padding-x = 8;
      window-padding-y = 0;

      window-decoration = "none";
      resize-overlay = "never";
      confirm-close-surface = false;

      # --- Transparent / Blur ---
      background-opacity = 0.7;
      background-blur = true;
      background-opacity-cells = true;

      # --- Terminal UX ---
      mouse-hide-while-typing = true;
      scrollback-limit = 100000000;
      bell-features = "no-audio,no-system";

      # --- Tabs ---
      window-show-tab-bar = "never";

      # --- GTK / Linux ---
      gtk-single-instance = true;
    };

    systemd.enable = true;
  };
}
