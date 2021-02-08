# nixos-home

## Installing Home Manager

```bash
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
sudo nix-channel --update
nix-shell '<home-manager>' -A install
```

## Cloning home-manager configs
```bash
# removing default configs
rm -rf ~/.config/nixpkgs
# clone via https
git clone https://github.com/MayNiklas/nixos-home.git ~/.config/nixpkgs
# clone via ssh
git clone git@github.com:MayNiklas/nixos-home.git ~/.config/nixpkgs
```

## Switching to configs
```bash
# executing home-manager
home-manager switch
```