_: let
  mod = "Mod";
in {
  programs.niri.settings.binds = {
    # --- System & Launchers ---
    "${mod}+Shift+Slash".action.show-hotkey-overlay = {};

    "${mod}+Return" = {
      hotkey-overlay.title = "Open a Terminal: alacritty";
      action.spawn = ["kitty"];
    };

    "${mod}+B" = {
      hotkey-overlay.title = "Open a Browser";
      action.spawn = ["brave"];
    };

    "Super+Alt+L" = {
      hotkey-overlay.title = "Lock the Screen: swaylock";
      action.spawn = ["swaylock"];
    };

    "Super+Alt+S" = {
      allow-when-locked = true;
      hotkey-overlay.hidden = true; # Đổi từ hotkey-overlay-title = null;
      action.spawn-sh = ["pkill orca || exec orca"];
    };

    "${mod}+D" = {
      hotkey-overlay.title = "Open Launcher";
      action.spawn-sh = ["noctalia msg panel-toggle launcher"];
    };

    # --- Media & Brightness ---
    "XF86AudioRaiseVolume" = {
      allow-when-locked = true;
      action.spawn-sh = ["wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05+ -l 1.0"];
    };
    "XF86AudioLowerVolume" = {
      allow-when-locked = true;
      action.spawn-sh = ["wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05-"];
    };
    "XF86AudioMute" = {
      allow-when-locked = true;
      action.spawn-sh = ["wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"];
    };
    "XF86AudioMicMute" = {
      allow-when-locked = true;
      action.spawn-sh = ["wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"];
    };
    "XF86AudioPlay" = {
      allow-when-locked = true;
      action.spawn-sh = ["playerctl play-pause"];
    };
    "XF86AudioStop" = {
      allow-when-locked = true;
      action.spawn-sh = ["playerctl stop"];
    };
    "XF86AudioPrev" = {
      allow-when-locked = true;
      action.spawn-sh = ["playerctl previous"];
    };
    "XF86AudioNext" = {
      allow-when-locked = true;
      action.spawn-sh = ["playerctl next"];
    };
    "XF86MonBrightnessUp" = {
      allow-when-locked = true;
      action.spawn = ["brightnessctl" "--class=backlight" "set" "+10%"];
    };
    "XF86MonBrightnessDown" = {
      allow-when-locked = true;
      action.spawn = ["brightnessctl" "--class=backlight" "set" "10%-"];
    };

    # --- Windows Management ---
    "${mod}+O" = {
      repeat = false;
      action.toggle-overview = {};
    };
    "${mod}+Q" = {
      repeat = false;
      action.close-window = {};
    };

    # Focus
    "${mod}+Left".action.focus-column-left = {};
    "${mod}+Down".action.focus-window-down = {};
    "${mod}+Up".action.focus-window-up = {};
    "${mod}+Right".action.focus-column-right = {};
    "${mod}+H".action.focus-column-left = {};
    "${mod}+J".action.focus-window-down = {};
    "${mod}+K".action.focus-window-up = {};
    "${mod}+L".action.focus-column-right = {};

    # Move Columns/Windows
    "${mod}+Ctrl+Left".action.move-column-left = {};
    "${mod}+Ctrl+Down".action.move-window-down = {};
    "${mod}+Ctrl+Up".action.move-window-up = {};
    "${mod}+Ctrl+Right".action.move-column-right = {};
    "${mod}+Ctrl+H".action.move-column-left = {};
    "${mod}+Ctrl+J".action.move-window-down = {};
    "${mod}+Ctrl+K".action.move-window-up = {};
    "${mod}+Ctrl+L".action.move-column-right = {};

    # Column First/Last
    "${mod}+Home".action.focus-column-first = {};
    "${mod}+End".action.focus-column-last = {};
    "${mod}+Ctrl+Home".action.move-column-to-first = {};
    "${mod}+Ctrl+End".action.move-column-to-last = {};

    # Multi-monitor Focus & Move
    "${mod}+Shift+Left".action.focus-monitor-left = {};
    "${mod}+Shift+Down".action.focus-monitor-down = {};
    "${mod}+Shift+Up".action.focus-monitor-up = {};
    "${mod}+Shift+Right".action.focus-monitor-right = {};
    "${mod}+Shift+H".action.focus-monitor-left = {};
    "${mod}+Shift+J".action.focus-monitor-down = {};
    "${mod}+Shift+K".action.focus-monitor-up = {};
    "${mod}+Shift+L".action.focus-monitor-right = {};

    "${mod}+Shift+Ctrl+Left".action.move-column-to-monitor-left = {};
    "${mod}+Shift+Ctrl+Down".action.move-column-to-monitor-down = {};
    "${mod}+Shift+Ctrl+Up".action.move-column-to-monitor-up = {};
    "${mod}+Shift+Ctrl+Right".action.move-column-to-monitor-right = {};
    "${mod}+Shift+Ctrl+H".action.move-column-to-monitor-left = {};
    "${mod}+Shift+Ctrl+J".action.move-column-to-monitor-down = {};
    "${mod}+Shift+Ctrl+K".action.move-column-to-monitor-up = {};
    "${mod}+Shift+Ctrl+L".action.move-column-to-monitor-right = {};

    # Workspaces Navigation
    "${mod}+Page_Down".action.focus-workspace-down = {};
    "${mod}+Page_Up".action.focus-workspace-up = {};
    "${mod}+U".action.focus-workspace-down = {};
    "${mod}+I".action.focus-workspace-up = {};

    "${mod}+Ctrl+Page_Down".action.move-column-to-workspace-down = {};
    "${mod}+Ctrl+Page_Up".action.move-column-to-workspace-up = {};
    "${mod}+Ctrl+U".action.move-column-to-workspace-down = {};
    "${mod}+Ctrl+I".action.move-column-to-workspace-up = {};

    "${mod}+Shift+Page_Down".action.move-workspace-down = {};
    "${mod}+Shift+Page_Up".action.move-workspace-up = {};
    "${mod}+Shift+U".action.move-workspace-down = {};
    "${mod}+Shift+I".action.move-workspace-up = {};

    # Workspaces 1-9
    "${mod}+1".action.focus-workspace = 1;
    "${mod}+2".action.focus-workspace = 2;
    "${mod}+3".action.focus-workspace = 3;
    "${mod}+4".action.focus-workspace = 4;
    "${mod}+5".action.focus-workspace = 5;
    "${mod}+6".action.focus-workspace = 6;
    "${mod}+7".action.focus-workspace = 7;
    "${mod}+8".action.focus-workspace = 8;
    "${mod}+9".action.focus-workspace = 9;

    "${mod}+Ctrl+1".action.move-column-to-workspace = 1;
    "${mod}+Ctrl+2".action.move-column-to-workspace = 2;
    "${mod}+Ctrl+3".action.move-column-to-workspace = 3;
    "${mod}+Ctrl+4".action.move-column-to-workspace = 4;
    "${mod}+Ctrl+5".action.move-column-to-workspace = 5;
    "${mod}+Ctrl+6".action.move-column-to-workspace = 6;
    "${mod}+Ctrl+7".action.move-column-to-workspace = 7;
    "${mod}+Ctrl+8".action.move-column-to-workspace = 8;
    "${mod}+Ctrl+9".action.move-column-to-workspace = 9;

    # Mouse Wheel Binds
    "${mod}+WheelScrollDown" = {
      cooldown-ms = 150;
      action.focus-workspace-down = {};
    };
    "${mod}+WheelScrollUp" = {
      cooldown-ms = 150;
      action.focus-workspace-up = {};
    };
    "${mod}+Ctrl+WheelScrollDown" = {
      cooldown-ms = 150;
      action.move-column-to-workspace-down = {};
    };
    "${mod}+Ctrl+WheelScrollUp" = {
      cooldown-ms = 150;
      action.move-column-to-workspace-up = {};
    };
    "${mod}+WheelScrollRight".action.focus-column-right = {};
    "${mod}+WheelScrollLeft".action.focus-column-left = {};
    "${mod}+Ctrl+WheelScrollRight".action.move-column-right = {};
    "${mod}+Ctrl+WheelScrollLeft".action.move-column-left = {};
    "${mod}+Shift+WheelScrollDown".action.focus-column-right = {};
    "${mod}+Shift+WheelScrollUp".action.focus-column-left = {};
    "${mod}+Ctrl+Shift+WheelScrollDown".action.move-column-right = {};
    "${mod}+Ctrl+Shift+WheelScrollUp".action.move-column-left = {};

    # Layout Operations (Consume/Expel, Resize, Floating)
    "${mod}+BracketLeft".action.consume-or-expel-window-left = {};
    "${mod}+BracketRight".action.consume-or-expel-window-right = {};
    "${mod}+Comma".action.consume-window-into-column = {};
    "${mod}+Period".action.expel-window-from-column = {};
    "${mod}+R".action.switch-preset-column-width = {};
    "${mod}+Shift+R".action.switch-preset-column-width-back = {};
    "${mod}+Ctrl+Shift+R".action.switch-preset-window-height = {};
    "${mod}+Ctrl+R".action.reset-window-height = {};
    "${mod}+F".action.maximize-column = {};
    "${mod}+Shift+F".action.fullscreen-window = {};
    "${mod}+M".action.maximize-window-to-edges = {};
    "${mod}+Ctrl+F".action.expand-column-to-available-width = {};
    "${mod}+C".action.center-column = {};
    "${mod}+Ctrl+C".action.center-visible-columns = {};
    "${mod}+Minus".action.set-column-width = "-5%";
    "${mod}+Equal".action.set-column-width = "+5%";
    "${mod}+Shift+Minus".action.set-window-height = "-5%";
    "${mod}+Shift+Equal".action.set-window-height = "+5%";
    "${mod}+V".action.toggle-window-floating = {};
    "${mod}+Shift+V".action.switch-focus-between-floating-and-tiling = {};
    "${mod}+W".action.toggle-column-tabbed-display = {};

    # Screenshots & Power
    "Print".action.screenshot = {};
    "Ctrl+Print".action.screenshot-screen = {};
    "Alt+Print".action.screenshot-window = {};
    "${mod}+Escape" = {
      allow-inhibiting = false;
      action.toggle-keyboard-shortcuts-inhibit = {};
    };
    "${mod}+Shift+E".action.quit = {};
    "Ctrl+Alt+Delete".action.quit = {};
    "${mod}+Shift+P".action.power-off-monitors = {};
  };
}
