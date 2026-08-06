_: {
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/desktop
    ../../modules/hardware
    ../../modules/services
  ];

  networking.hostName = "nixos-btw";
  system.stateVersion = "26.05";
}
