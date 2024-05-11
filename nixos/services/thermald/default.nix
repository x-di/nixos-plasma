{ lib, ... }:
{
  services.thermald.enable = lib.mkDefault true;
}
