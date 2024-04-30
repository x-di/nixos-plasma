{ ... }:
let
  hostname = "nixos";
in
{
  networking = {
    hostName = "${hostname}";
    networkmanager = {
      enable = true;
    };
  };
}
