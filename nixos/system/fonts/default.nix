{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    cascadia-code
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
