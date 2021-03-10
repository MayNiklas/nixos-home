{ config, pkgs, nur, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "nik";
  home.homeDirectory = "/home/nik";

  # Install these packages for my user
  home.packages = with pkgs; [
    _1password-gui
    atom
    discord
    dolphin
    glances
    htop
    hugo
    nvtop
    obs-studio
    signal-desktop
    sublime-merge
    sublime3
    spotify
    teamspeak_client
    unzip
    vagrant
    vim
    virt-manager
    vlc
    youtube-dl
    discord
    vscode
    gnome3.dconf
    zoom-us
  ];

  # Imports
  imports = [
    ./modules/chromium.nix
    ./modules/firefox.nix
    ./modules/devolopment.nix
    ./modules/gtk.nix
    ./modules/i3.nix
    ./modules/alacritty.nix
    ./modules/rofi.nix
  ];

  services.gnome-keyring = { enable = true; };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}
