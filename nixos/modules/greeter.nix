{ pkgs, inputs, ... }:

{
  imports = [
    inputs.noctalia-greeter.nixosModules.default
  ];

  services.displayManager.noctalia-greeter = {
    enable = true;

    settings = {
      cursor = {
        theme = "phinger-cursors-light";
        size = 12;
        path = "${pkgs.phinger-cursors}/share/icons";
      };

      keyboard = {
        layout = "us";
      };
    };
  };
}
