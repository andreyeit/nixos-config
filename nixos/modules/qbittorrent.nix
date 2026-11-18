let
  port = 6881;
in
{
  services.qbittorrent = {
    enable = true;
    torrentingPort = port;
  };

  networking.firewall = {
    allowedTCPPorts = [ port ];
    allowedUDPPorts = [ port ];
  };
}
