{pkgs, ...}: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 10;
      };
      efi.canTouchEfiVariables = true;
    };

    initrd.verbose = false;
    consoleLogLevel = 0;

    kernelParams = [
      "quiet"
      "splash"
      "ideapad_laptop.allow_v4_dytc=Y"
      "ucsi_acpi.disable_ucsi_lock=1"
    ];

    kernelModules = ["i2c-dev"];
  };
}
