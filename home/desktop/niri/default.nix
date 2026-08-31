{pkgs, ...}: {
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };

  imports = [
    ./hardware.nix
    ./layout.nix
    ./rules.nix
    ./binds.nix
  ];
}
