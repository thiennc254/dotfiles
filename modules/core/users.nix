{pkgs, ...}: {
  programs.fish.enable = true;

  users.users.azty = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
      "adbusers"
    ];

    shell = pkgs.fish;
  };
}
