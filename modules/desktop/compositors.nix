{pkgs, ...}: {
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };

  programs.uwsm = {
    enable = true;
    waylandCompositors = {
      niri = {
        prettyName = "Niri";
        comment = "Niri Scrollable Tiling Compositor managed by UWSM";
        binPath = "/run/current-system/sw/bin/niri";
        extraArgs = ["--session"];
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
      niri = {
        default = ["gnome" "gtk"];
      };
    };
  };

  environment.sessionVariables = {
    NIRI_DISABLE_SYSTEM_MANAGER_NOTIFY = "1";
  };

  systemd.user.services.niri.enableDefaultPath = false;
}
