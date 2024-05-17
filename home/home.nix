{ config, pkgs, ... }:
let
  name = "xd";
  ver = "24.05";
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    # ref = "nixos-23.05";
  });
in
{
  imports = [
    ./apps
    ./langserver
    ./programs
    nixvim.homeManagerModules.nixvim
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
