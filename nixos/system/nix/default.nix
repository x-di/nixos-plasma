{ ... }:
{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  #nix.settings.substituters = [ https://cache.nixos.org/ https://cache.komunix.org/ ];
}
