{ ... }:
{
  systemd = {
    services = {
      NetworkManager-wait-online = {
        enable = false;
      };
    };
    oomd = {
      enable = false; # Switch to earlyoom.
    };
  };
}
