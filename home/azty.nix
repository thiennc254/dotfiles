{
  config,
  inputs,
  ...
}: {
  imports = [
    inputs.niri.homeModules.niri

    ./core
    ./desktop
    ./dev
    ./shell
    ./terminal
  ];

  home = {
    username = "azty";
    homeDirectory = "/home/azty";
    sessionPath = ["${config.home.homeDirectory}/.local/bin"];
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;
}
