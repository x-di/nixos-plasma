{ pkgs, ... }:
let
  dataDir = "/var/lib/postgresql/16";
in
{
  services.postgresql = {
    enable = false;
    package = pkgs.postgresql_16;
    dataDir = "${dataDir}";
  };
}
