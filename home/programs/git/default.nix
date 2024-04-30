{ ... }:
let
  userName = "x-di";
  userEmail = "dimasimam75@gmail.com";
in
{
  programs.git = {
    enable = true;
    userName = "${userName}";
    userEmail = "${userEmail}";
  };
}
