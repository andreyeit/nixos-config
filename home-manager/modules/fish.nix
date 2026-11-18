{ pkgs, ... }:

{
  programs.fish = {
    enable = true;

    shellAliases = let
      flakeTarget = "/etc/nixos#nixos";
    in {
      nrs = "sudo nixos-rebuild switch --flake ${flakeTarget}";
      nup = "cd /etc/nixos && nix flake update && nrs";
      ncg = "sudo nix-collect-garbage -d";

      ls  = "lsd";
      la  = "ls -a";
      lla = "ls -la";
      lt  = "ls --tree";
      cat = "bat";
      ff  = "fastfetch";
    };

    plugins = [
      {
        name = "tide";
        src = pkgs.fishPlugins.tide.src;
      }
    ];

    interactiveShellInit = ''
      set fish_greeting ""
    '';
  };
}
