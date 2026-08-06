_: {
  networking = {
    networkmanager.enable = true;

    firewall = {
      enable = true;
      allowPing = true;
      # allowTCPPorts = [ 22 80 443 ];
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
