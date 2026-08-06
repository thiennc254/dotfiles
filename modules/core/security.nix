_: {
  security = {
    polkit.enable = true;
    rtkit.enable = true;

    doas = {
      enable = true;
      extraRules = [
        {
          users = ["azty"];
          keepEnv = true;
          persist = true;
        }
      ];
    };

    pam.services = {
      login.enableGnomeKeyring = true;
    };

    sudo.extraConfig = ''
      Defaults pwfeedback
    '';
  };

  services.gnome.gnome-keyring.enable = true;
}
