{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Ensure hyprpaper is installed
  home.packages = with pkgs; [
    hyprpaper
  ];

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    # Preload all your wallpapers for better performance
    preload = ${config.home.homeDirectory}/Pictures/wallpapers/mix/abstract-2.jpg

    # Configure each monitor with the proper wallpaper
    wallpaper = eDP-1,${config.home.homeDirectory}/Pictures/wallpapers/mix/abstract-2.jpg
    wallpaper = DP-8,${config.home.homeDirectory}/Pictures/wallpapers/mix/abstract-2.jpg
    wallpaper = DP-9,${config.home.homeDirectory}/Pictures/wallpapers/mix/abstract-2.jpg
    wallpaper = DP-10,${config.home.homeDirectory}/Pictures/wallpapers/mix/abstract-2.jpg

    # Enable IPC for runtime control
    ipc = on

    # Disable splash screen
    splash = false

    # Configuration for monitors
    # This requires hyprpaper 0.6.0 or newer for the 'fit' option
    fit = eDP-1,fill
    fit = DP-8,stretch
    fit = DP-9,fill
    fit = DP-10,fill
  '';
}
