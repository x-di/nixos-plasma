{ ... }:
let
  name = "xd";
in
{
  imports = [
    <home-manager/nixos>
  ];

  home-manager = {
    # useGlobalPkgs = true;
    users = {
      ${name} = import ./home.nix;
    };
  };
}
