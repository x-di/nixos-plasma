{ ... }:
let
  name = "xd";
  fullname = "XD";
in
{
  users = {
    users = {
      ${name} = {
        isNormalUser = true;
        description = "${fullname}";
        extraGroups = [
          "networkmanager"
          "wheel"
        ];
      };
    };
  };
}
