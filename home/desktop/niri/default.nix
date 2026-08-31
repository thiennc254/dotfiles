{pkgs, ...}: {
  programs.niri = {
    enable = true;
    package = pkgs.niri;

    settings = {
      include = ["noctalia.kdl"];
    };
  };

  imports = [
    ./hardware.nix
    ./layout.nix
    ./rules.nix
    ./binds.nix
  ];
}
