{pkgs, ...}: {
  home.packages = with pkgs; [
    ripgrep
    fd
    fzf
    bat
    zoxide
    jq
    tree
    fastfetch
    eza
    yazi
    trashy
    wiremix
    impala
    bluetui
    tldr
    wireplumber
    pamixer
    playerctl

    wl-clipboard
    xdg-terminal-exec

    scrcpy
    android-tools
    localsend

    kdePackages.dolphin
    kdePackages.kdegraphics-thumbnailers
    mpv
    imv

    brave
  ];
}
