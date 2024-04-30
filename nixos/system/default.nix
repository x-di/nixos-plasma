{ ... }:
let
  ver = "24.05";
in
{
  imports = [
    ./bluetooth
    ./boot
    ./documentation
    ./environment
    ./firewall
    ./fonts
    ./locale
    ./network
    ./nix
    ./security
    ./sound
    ./systemd
    ./timezone
    ./users
    ./zram
  ];
  system = {
    stateVersion = "${ver}";
  };
}
