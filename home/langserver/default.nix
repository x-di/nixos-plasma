{ pkgs, ... }:
{
  home.packages = with pkgs;
  with pkgs.nodePackages; [
    #bash-language-server # bash
    #gopls # go
    #intelephense # php
    #marksman # markdown
    #nil # nix
    nixfmt-classic # nix
    #nixpkgs-fmt # nix
    #typescript-language-server # js jsx ts tsx
    #vls # vue
    #vscode-css-languageserver-bin # css scss
    #vscode-html-languageserver-bin # html
    #vscode-json-languageserver # json
    #yaml-language-server # yaml
  ];
}
