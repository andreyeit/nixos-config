{ pkgs, ... }: {
  programs.fish.enable = true;

  users.users.terror = {
    description = "Andrey Korobov";
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [
      "wheel"
      "networkmanager"
      "qbittorrent"
      "docker"
    ];
  };
}
