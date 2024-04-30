{ pkgs, ... }:
let
  dataDir = "/var/lib/postgresql/16";
in
{
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_16;
    dataDir = "${dataDir}";
  };
}
