{ config, pkgs, lib, ... }: {

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      ms-python.python
      ms-vscode.cpptools
    ];
  };
}
