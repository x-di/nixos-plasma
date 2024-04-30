{ pkgs, ... }:
{
  home.packages = with pkgs; [
    brave
    bun
    dia
    gnome.gnome-keyring
    go
    haruna
    htop
    neofetch
    nixpkgs-fmt
    nodejs_20
    onlyoffice-bin_latest
    p7zip
    php
    php82Packages.composer
    postman
    sqlite
    tela-icon-theme
    telegram-desktop
    thunderbird
    vscode-fhs
  ];
}
