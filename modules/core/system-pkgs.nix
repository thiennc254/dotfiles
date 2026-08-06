{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Monitoring & Hardware Rescue
    btop
    htop
    pciutils
    usbutils
    psmisc
    dmidecode
    lm_sensors
    smartmontools
    intel-gpu-tools
    ddcutil

    # Network Diagnostics
    curl
    wget
    dnsutils
    ethtool
    mtr

    # File & Disk Rescue
    vim
    nano
    unzip
    p7zip
    rsync
    ncdu
    git

    # Power Management & Hardware Control
    powertop
    upower
    linuxPackages.cpupower
    brightnessctl

    # System Integration Daemons / Auth
    bluez
    gnome-keyring
    seahorse
    uwsm
  ];
}
