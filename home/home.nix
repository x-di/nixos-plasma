{ config, pkgs, ... }:
{
  imports = [
    ./apps
    ./programs
  ];

  nixpkgs.config.allowUnfree = true;
  home.stateVersion = "24.05";
}
