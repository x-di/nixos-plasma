{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #brave
    bun
    clinfo
    dia
    fastfetch
    glxinfo
    gnome.gnome-keyring
    go
    #gruvbox-plus-icons
    haruna
    #helix
    htop
    libdbusmenu
    #libreoffice-qt-fresh
    #nodejs_20
    nodejs_22
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
    vulkan-tools
    yt-dlp
    #zed-editor
  ];
}
