
#NixOS Configuration made by Aetherelic :3

{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ./modules/core/boot.nix
    ./modules/core/system.nix
    ./modules/core/packages.nix
    ./modules/core/shell.nix
    ./modules/core/nix.nix
    ./modules/core/cleanup.nix

    ./modules/hardware/audio.nix
    ./modules/hardware/nvidia.nix
    ./modules/hardware/storage.nix

    ./modules/desktop/sddm.nix
    ./modules/desktop/hyprland.nix
    ./modules/desktop/whisker.nix
    ./modules/desktop/theming.nix
    ./modules/desktop/lockscreen.nix
    ./modules/gaming/steam.nix
  ];

  system.stateVersion = "26.05";
}
