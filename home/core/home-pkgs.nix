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
    tldr

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
