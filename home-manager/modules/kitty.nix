{
  programs.kitty = {
    enable = true;

    settings = {
      font_family = "Iosevka Nerd Font";
      font_size = 12;
      cursor_shape = "beam";
      cursor_trail = 1;
      confirm_os_window_close = 0;
      hide_window_decorations = "yes";
      sync_to_monitor = "yes";
    };

    extraConfig = ''
      include themes/noctalia.conf
    '';
  };
}
