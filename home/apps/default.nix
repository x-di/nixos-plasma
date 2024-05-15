{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #brave
    #bun
    clinfo
    #dia
    drawio
    fastfetch
    glxinfo
    gnome.gnome-keyring
    #go
    #gruvbox-plus-icons
    haruna
    #helix
    htop
    kdePackages.kdeplasma-addons
    libdbusmenu
    #libreoffice-qt-fresh
    #nodejs_20 #nix-shell -p nodejs --command fish
    #nodejs_22
    onlyoffice-bin_latest
    p7zip
    #php #nix-shell -p php php82Packages.composer --command fish
    #php82Packages.composer
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
