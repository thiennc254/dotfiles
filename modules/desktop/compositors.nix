{pkgs, ...}: {
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };

  programs.uwsm = {
    enable = true;
    waylandCompositors = {
      niri = {
        prettyName = "Niri (UWSM)";
        comment = "Niri Scrollable Tiling Compositor managed by UWSM";
        binPath = "${pkgs.niri}/bin/niri";
      };
    };
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
    config = {
      common = {
        default = ["gnome" "gtk"];
        "org.freedesktop.impl.portal.Secret" = ["gnome"];
      };
    };
  };

  environment.sessionVariables = {
    NIRI_DISABLE_SYSTEM_MANAGER_NOTIFY = "1";
  };

  systemd.user.services.niri.enableDefaultPath = false;
}
