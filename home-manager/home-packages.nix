{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    fd
    lsd
    unzip
    zip
    btop
    fastfetch
    superfile
    vim

    quickshell

    gcc
    gnumake
    python3
    docker-compose
    codex
    insomnia

    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default

    telegram-desktop
    discord

    anki
    obsidian

    ffmpeg
    imv
    obs-studio
    reaper

    blender
    godot

    nerd-fonts.fira-code
    nerd-fonts.iosevka
  ];
}
