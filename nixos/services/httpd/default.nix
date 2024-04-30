{ pkgs, ... }:
let
  user = "xd";
  group = "users";
  documentRoot = "/home/xd/web";
in
{
  services = {
    httpd = {
      user = "${user}";
      group = "${group}";
      enable = true;
      package = pkgs.apacheHttpd;
      enablePHP = true;
      phpPackage = pkgs.php;
      virtualHosts.localhost = {
        documentRoot = "${documentRoot}";
        extraConfig = ''
          					<Directory "/">
          						DirectoryIndex index.html index.php
          					</Directory>
          				'';
      };
    };
  };
}
