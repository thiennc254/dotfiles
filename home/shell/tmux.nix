{pkgs, ...}: {
  programs.tmux = {
    enable = true;

    # --- Native Home Manager options ---
    terminal = "tmux-256color";
    baseIndex = 1;
    keyMode = "vi";
    mouse = true;
    focusEvents = true;
    escapeTime = 0;
    prefix = "C-a";

    historyLimit = 20000;

    plugins = with pkgs.tmuxPlugins; [
      resurrect
      vim-tmux-navigator
      continuum
    ];

    extraConfig = ''
      # ============================================================
      # General
      # ============================================================

      # Modern terminal capabilities
      set -as terminal-features ",xterm*:RGB"

      set -g status-interval 2
      set -g renumber-windows on
      set -g status-position top
      set -g status-justify left

      # Native tmux/OSC 52 clipboard.
      # Keep "on" if applications inside tmux (e.g. nvim) should
      # also be able to update the system clipboard.
      set -g set-clipboard on

      # ============================================================
      # Reload
      # ============================================================

      bind r source-file ~/.config/tmux/tmux.conf

      # ============================================================
      # Copy mode
      # ============================================================

      bind-key -T copy-mode-vi 'v' send-keys -X begin-selection
      bind-key -T copy-mode-vi 'y' send-keys -X copy-selection

      # Optional: line numbers in copy mode (tmux >= 3.7)
      # set -g copy-mode-line-numbers on

      # ============================================================
      # Pane resize
      # ============================================================

      bind -r H resize-pane -L 5
      bind -r J resize-pane -D 5
      bind -r K resize-pane -U 5
      bind -r L resize-pane -R 5

      # vim-tmux-navigator owns C-h/C-j/C-k/C-l navigation,
      # so no duplicate tmux navigation mappings here.

      # ============================================================
      # Windows / panes
      # ============================================================

      bind c new-window -c "#{pane_current_path}"
      bind '\' split-window -h -c "#{pane_current_path}"
      bind '-' split-window -v -c "#{pane_current_path}"

      # ============================================================
      # Popup terminal
      # ============================================================

      bind f if-shell -F '#{==:#{session_name},popup}' \
        'detach-client' \
        'display-popup -d "#{pane_current_path}" -w 80% -h 80% -E "tmux new-session -A -s popup"'

      # ============================================================
      # Resurrect / Continuum
      # ============================================================

      set -g @resurrect-strategy-vim 'session'
      set -g @resurrect-strategy-nvim 'session'
      set -g @resurrect-capture-pane-contents 'on'

      set -g @continuum-restore 'on'
      set -g @continuum-boot 'on'

      # Default is 15 minutes, which is reasonable.
      # set -g @continuum-save-interval '15'

      # ============================================================
      # Catppuccin-inspired palette
      # ============================================================

      set -g @thm_bg "default"
      set -g @thm_fg "#CDD6F4"
      set -g @thm_session "#89B4FA"
      set -g @thm_selection_fg "#3B4252"
      set -g @thm_selection_bg "#F5E0DC"
      set -g @thm_active_window "#A6E3A1"
      set -g @thm_pane_border "#B4BEFE"
      set -g @thm_copy_mode "#F9E2AF"
      set -g @thm_prefix "#F38BA8"

      # ============================================================
      # Status bar
      # ============================================================

      set -g status-style "bg=#{@thm_bg}"

      set -g status-left-length 100
      set -g status-right-length 100

      set -g status-left \
        "#[fg=#{@thm_prefix},bold]#{?client_prefix,  #S ,#{?#{==:#{pane_mode},copy-mode},#[fg=#{@thm_copy_mode}]  #S ,#[fg=#{@thm_session}] #S }}#[fg=#{@thm_fg},none]|"

      set -g status-right \
        "#[fg=#{@thm_prefix},bold]󰒋 #H"

      set -g window-status-format \
        "#[fg=#{@thm_fg},bg=default] #I:#W"

      set -g window-status-current-format \
        "#[fg=#{@thm_active_window},bold,bg=default] #I:#W"

      set -g pane-active-border-style \
        "fg=#{@thm_pane_border},bg=default"

      set -g pane-border-style \
        "fg=brightblack,bg=default"

      set -g message-style \
        "bg=default,fg=#{@thm_fg}"

      set -g mode-style \
        "bg=#{@thm_copy_mode},fg=#{@thm_selection_fg}"
    '';
  };
}
