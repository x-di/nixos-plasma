{ ... }:
let
  name = "xd";
in
{
  imports = [
    <home-manager/nixos>
  ];

  home-manager = {
    users = {
      ${name} = import ./home.nix;
    };
  };
}
