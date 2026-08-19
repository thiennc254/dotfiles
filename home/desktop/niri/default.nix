_: {
  imports = [
    ./binds.nix
    ./layout.nix
    ./outputs.nix
    ./rules.nix
  ];

  programs.niri.settings = {
    input = {
      keyboard = {};

      touchpad = {
        tap = true;
        natural-scroll = true;
        dwt = true;
      };
    };
  };
}
