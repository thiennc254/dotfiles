{pkgs, ...}: {
  hardware.i2c.enable = true;
  hardware.keyboard.qmk.enable = true;

  services.udev.packages = with pkgs; [
    via
    vial
  ];

  services.udev.extraRules = ''
    KERNEL=="hidraw*", ATTRS{idVendor}=="36b0", ATTRS{idProduct}=="3025", MODE="0666", GROUP="users"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="36b0", ATTRS{idProduct}=="3025", MODE="0666", GROUP="users"
  '';
}
