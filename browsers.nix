{ config, pkgs, lib, ... }:
let vars = import ./vars.nix;
in {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-bin;

    profiles = {
      nik = {
        isDefault = true;
        settings = {
          "browser.startup.homepage" = "https://nixos.org";
          "devtools.theme" = "dark";
        };
      };
    };
  };
}
