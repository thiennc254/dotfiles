_: {
  boot.tmp = {
    useTmpfs = true;
    tmpfsSize = "50%";
    cleanOnBoot = true;
  };

  services.fstrim = {
    enable = true;
    interval = "weekly";
  };
}
