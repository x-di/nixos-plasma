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
      enable = false;
      package = pkgs.apacheHttpd;
      enablePHP = false;
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
