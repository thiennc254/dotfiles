{...}: {
  imports = [
    ./boot.nix
    ./disk.nix
    ./locale.nix
    ./nix-ld.nix
    ./nix-settings.nix
    ./ram.nix
    ./security.nix
    ./system-pkgs.nix
    ./users.nix
  ];
}
