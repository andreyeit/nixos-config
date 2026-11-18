{
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "terror";
    homeDirectory = "/home/terror";
    stateVersion = "26.05";
  };
}
