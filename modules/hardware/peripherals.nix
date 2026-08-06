_: {
  hardware.i2c.enable = true;

  services.udev.extraRules = ''
    KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="0c45", ATTRS{idProduct}=="800a", MODE="0666", TAG+="uaccess"
  '';
}
