{ ... }:
{
  networking = {
    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 ];
      allowedTCPPortRanges = [
        { from = 1714; to = 1764; }
      ];
      allowedUDPPortRanges = [
        { from = 1714; to = 1764; }
      ];
    };
  };
}
