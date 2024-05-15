{ pkgs, ... }:
{
  services.mongodb = {
    enable = false; #compile from source
    package = pkgs.mongodb;
  };
}
