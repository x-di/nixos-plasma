{ ... }:
let
  userName = "x-di";
  userEmail = "dimasimam75@gmail.com";
  # gpg --list-secret-keys --keyid-format=long
  signingkey = "11E66F143A6E166B";
in
{
  programs.git = {
    enable = true;
    userName = "${userName}";
    userEmail = "${userEmail}";
    signing = {
      signByDefault = true;
      key = "${signingkey}";
    };
  };
}
