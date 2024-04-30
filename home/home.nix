{ config, pkgs, ... }:
let
  ver = "24.05";
in
{
  imports = [
    ./apps
    ./programs
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  home = {
    stateVersion = "${ver}";
  };
}
