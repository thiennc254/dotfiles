_: {
  programs.kitty = {
    enable = true;

    # Shell integration
    shellIntegration = {
      mode = "disabled";
      enableFishIntegration = false;
      enableBashIntegration = false;
      enableZshIntegration = false;
    };

    themeFile = "Catppuccin-Mocha";

    font = {
      name = "CaskaydiaCove Nerd Font Mono";
      size = 13.0;
    };

    settings = {
      # --- Clipboard ---
      clipboard_control = "write-clipboard read-clipboard write-primary read-primary";

      # --- Cursor ---
      cursor_shape = "block";
      shell_integration = "disabled";

      # Cursor animation
      cursor_trail = 3;
      cursor_trail_decay = "0.1 0.3";
      cursor_trail_start_threshold = 2;

      # --- Windows ---
      window_padding_width = 8;
      window_padding_height = 0;
      hide_window_decorations = "yes";
      show_window_resize_notification = "no";
      confirm_os_window_close = 0;

      # --- Instance ---
      single_instance = "yes";

      # --- Remote control ---
      allow_remote_control = "no";

      # --- Transparency / Blur ---
      background_opacity = 0.50;
      background_blur = 20;
      dynamic_background_opacity = "no";

      # --- Rendering / Wayland ---
      sync_to_monitor = "yes";
      repaint_delay = 8;
      input_delay = 1;

      # --- Audio ---
      enable_audio_bell = "no";

      # --- Tabs ---
      tab_bar_edge = "bottom";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
    };

    keybindings = {
      "ctrl+insert" = "copy_to_clipboard";
      "shift+insert" = "paste_from_clipboard";
    };
  };
}
