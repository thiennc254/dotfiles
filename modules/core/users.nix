{pkgs, ...}: {
  users.users.azty = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
      "adbusers"
    ];

    programs.fish.enable = true;
    shell = pkgs.fish;
  };
}
