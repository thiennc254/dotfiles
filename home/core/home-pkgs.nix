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
    trash-cli
    eza
    yazi
    wiremix
    impala
    bluetui

    wl-clipboard
    xdg-terminal-exec

    scrcpy
    android-tools

    kdePackages.dolphin
    kdePackages.kdegraphics-thumbnailers
    mpv
    imv

    brave
  ];
}
