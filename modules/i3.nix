{ config, pkgs, lib, ... }: {
  services = {
    network-manager-applet.enable = true;
    blueman-applet.enable = true;
    pasystray.enable = true;
  };

  home.packages = with pkgs; [
    dmenu
    i3status
    i3lock
    i3blocks
    arandr
    rofi
    xorg.xmodmap
    xorg.xdpyinfo
    pulsemixer
    alacritty
  ];

  xsession.enable = true;

  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
  };

}
