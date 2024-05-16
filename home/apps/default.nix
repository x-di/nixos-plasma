{ pkgs, ... }:
{
  home.packages = with pkgs; [
    clinfo
    drawio
    fastfetch
    glxinfo
    gnome.gnome-keyring
    haruna
    htop
    kdePackages.kdeplasma-addons
    libdbusmenu
    obs-studio
    onlyoffice-bin_latest
    p7zip
    postman
    sqlite
    tela-icon-theme
    telegram-desktop
    thunderbird
    vscode-fhs
    vulkan-tools
  ];
}
