{ ... }:
{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  nix.settings.substituters = [ https://cache.komunix.org/ ];
}
