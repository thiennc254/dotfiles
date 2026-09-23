{pkgs, ...}: {
  # User for lotus server
  users.groups.uinput_proxy = {};

  users.users.uinput_proxy = {
    isSystemUser = true;
    group = "input";
  };

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      qt6Packages.fcitx5-configtool
      fcitx5-gtk
      qt6Packages.fcitx5-qt
      qt6Packages.fcitx5-unikey
      fcitx5-lotus
    ];
  };

  systemd.packages = [pkgs.fcitx5-lotus];
  systemd.services."fcitx5-lotus-server@azty" = {
    wantedBy = ["multi-user.target"];
    overrideStrategy = "asDropin";
  };
}
