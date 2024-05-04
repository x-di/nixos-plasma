{ config, pkgs, ... }:
let
  name = "xd";
  ver = "24.05";
in
{
  imports = [
    ./apps
    ./langserver
    ./programs
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  home = {
    homeDirectory = "/home/${name}";
    stateVersion = "${ver}";
  };
}
