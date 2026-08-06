_: {
  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true;
      max-jobs = "auto";
      warn-dirty = false;

      substituters = [
        "https://cache.nixos.org"
      ];
      trusted-users = ["root" "@wheel"];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };

    optimise = {
      automatic = true;
      dates = ["weekly"];
    };
  };

  nixpkgs.config.allowUnfree = true;
}
