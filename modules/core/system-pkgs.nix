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
    libva-utils
    ddcutil
    via
    qmk

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
    throttled
    stress-ng

    # System Integration Daemons / Auth
    bluez
    gnome-keyring
    seahorse
    uwsm
  ];
}
