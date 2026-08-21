_: {
  networking = {
    networkmanager.enable = true;

    firewall = {
      enable = true;
      allowPing = true;
      allowedUDPPorts = [7 9];
      # allowTCPPorts = [ 22 80 443 ];
    };

    interfaces = {
      wlp0s20f3 = {
        wakeOnLan.enable = true;
      };
    };
  };

  # networking.dhcpcd.enable = false;
  # networking.wireless.iwd = {
  #   enable = true;
  #   settings.General.EnableNetworkConfiguration = false;
  # };
  # networking.useDHCP = false;
  # networking.useNetworkd = true;
  # systemd.network.networks."25-wireless" = {
  #   matchConfig.Name = "wlan0";
  #   networkConfig.DHCP = "yes";
  # };
}
