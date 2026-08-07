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
      user = {
        default = "azty";
      };
    };
  };

  # services.greetd = {
  #   enable = true;
  #   settings = {
  #     default_session = {
  #       command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd 'uwsm start niri.desktop'";
  #       user = "greeter";
  #     };
  #   };
  # };
  #
  # systemd.services.greetd.serviceConfig = {
  #   Type = "idle";
  #   StandardInput = "tty";
  #   StandardOutput = "tty";
  #   StandardError = "journal";
  #   TTYReset = true;
  #   TTYVHangup = true;
  #   TTYVTDisallocate = true;
  # };
}
