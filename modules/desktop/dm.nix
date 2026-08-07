{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.noctalia-greeter.nixosModules.default
  ];

  programs.noctalia-greeter = {
    enable = true;
    settings = {
      session = {
        default = "Niri (UWSM)";
        rememberSession = true;
      };
      user = {
        default = "azty";
      };
      appeareance = {
        wallpaper = {
          path = "~/Pictures/wallpaper/bg.png";
          fill_mode = "crop";
        };
      };
    };
  };

  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };

  #TUI-GREETER
  # services.greetd = {
  #   enable = false;
  #   settings = {
  #     default_session = {
  #       command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd 'uwsm start niri.desktop'";
  #       user = "greeter";
  #     };
  #   };
  # };
}
