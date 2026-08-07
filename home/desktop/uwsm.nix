{pkgs, ...}: {
  home.sessionVariables = {
    TERMINAL = "xdg-terminal-exec";
    EDITOR = "nvim";
    VISUAL = "nvim";
    DOT_DIR = "$HOME/dotfiles";

    # Wayland native flags
    NIXOS_OZONE_WL = "1";
    MOZ_ENABLE_WAYLAND = "1";
    QT_QPA_PLATFORM = "wayland;xcb";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    GDK_BACKEND = "wayland,x11,*";

    # Java & GUI fix
    _JAVA_AWT_WM_NONREPARENTING = "1";

    # Input Method (Fcitx5)
    XMODIFIERS = "@im=fcitx";
    QT_IM_MODULE = "fcitx";
    GTK_IM_MODULE = "fcitx";
  };
}
