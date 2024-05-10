{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #brave
    bun
    dia
    fastfetch
    gnome.gnome-keyring
    go
    haruna
    #helix
    htop
    libdbusmenu
    #libreoffice-qt-fresh
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
    yt-dlp
  ];
}
