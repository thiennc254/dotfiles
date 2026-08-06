_: {
  services = {
    tuned.enable = false;
    power-profiles-daemon.enable = false;
    thermald.enable = false;
    upower.enable = true;

    throttled = {
      enable = true;
      extraConfig = ''
        [GENERAL]
        Enabled = true

        [BATTERY]
        Update_Rate_S = 30
        PL1_Tdp_W = 15
        PL2_Tdp_W = 25
        Trip_Temp_C = 85
        cTDP = 0

        [AC]
        Update_Rate_S = 5
        PL1_Tdp_W = 25
        PL2_Tdp_W = 35
        Trip_Temp_C = 90
        cTDP = 0
      '';
    };

    tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
        PLATFORM_PROFILE_ON_AC = "performance";

        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        PLATFORM_PROFILE_ON_BAT = "low-power";

        STOP_CHARGE_THRESH_BAT0 = "1";

        DEVICES_TO_DISABLE_ON_STARTUP = "";
        DEVICES_TO_ENABLE_ON_STARTUP = "bluetooth";
        RESTORE_DEVICE_STATE_ON_STARTUP = 0;
      };
    };
  };
}
