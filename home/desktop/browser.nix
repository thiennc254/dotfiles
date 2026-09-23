_: {
  programs.firefox = {
    enable = true;

    policies = {
      DisableTelemetry = true;
      DisablePocket = true;
    };

    profiles.azty = {
      id = 0;
      name = "azty";
      isDefault = true;

      settings = {
        "media.av1.enabled" = false;
        "ui.key.menuAccessKeyFocuses" = false;
      };
    };
  };
}
