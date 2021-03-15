{
  description = "User configurations for MayNiklas";

  inputs = { wallpaper-generator.url = "github:pinpox/wallpaper-generator"; };

  outputs = { self, nixpkgs, wallpaper-generator }: {

    nixosModules = {

      # Desktop configuration, includes GUI
      desktop = { imports = [ ./home.nix ]; };

      # Serevr user configuration, only CLI
      server = { imports = [ ./home-server.nix ]; };

    };
  };
}
