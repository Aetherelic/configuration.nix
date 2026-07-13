<div align="centre">

# Configuration.nix files

## An aesthetic configuration.nix setup made for editing and ease of use


[![NixOS](https://img.shields.io/badge/NIXOS-READY-458588?style=for-the-badge\&logo=nixos\&logoColor=fbf1c7)](https://nixos.org/)
[![Hyprland](https://img.shields.io/badge/HYPRLAND-OPTIMISED-689d6a?style=for-the-badge\&logo=wayland\&logoColor=fbf1c7)](https://hypr.land/)
[![License](https://img.shields.io/badge/LICENSE-MIT-cc241d?style=for-the-badge)](LICENSE)

<br>

My personal configuration.nix files that are designed to be easily editable, easy to understand and minimal with little to no clutter!
As this is my own personal configuation files, if you want to duplicate this to use within your own system some tweaking will be neccesary
These configuation.nix files assume you are using an Nvidia GPU, Wayland, Hyprland. It also assumes your timezone is London, your LC_ADDRESS is en_GB.UTF-8. All of these are easily changed to the correct ones for your system without any problems.

</div>

<br>

## Preview

<div align="centre"

<img width="2560" height="1440" alt="image" src="https://github.com/user-attachments/assets/ff93f4d2-aab8-49b5-a70a-746221131bc3" />#

<br><br>

<img width="2560" height="1440" alt="image" src="https://github.com/user-attachments/assets/b32a32cd-7fad-4873-ac8b-4ccd7b520abc" />#

<div>

<br>

## Structure

```
/etc/nixos/configuration.nix
├── /etc/nixos/flakes.nix
├── /etc/nixos/modules/core/system.nix                
├── /etc/nixos/modules/core/packages.nix                
├── /etc/nixos/modules/core/shell.nix                
└── /etc/nixos/modules/gaming/steam.nix
```

# Shell Aliases


      # Edit NixOS config
      nix-config = "sudo nano /etc/nixos/configuration.nix";
      nix-flakes = "sudo nano /etc/nixos/flake.nix";
      nix-system = "sudo nano /etc/nixos/modules/core/system.nix";
      nix-pkgs = "sudo nano /etc/nixos/modules/core/packages.nix";
      nix-aliases = "sudo nano /etc/nixos/modules/core/shell.nix";
      nix-gaming = "sudo nano /etc/nixos/modules/gaming/steam.nix";

      # NixOS rebuilds
      update = "sudo nixos-rebuild switch --flake /etc/nixos#aether-nixos";
      tryupdate = "sudo nixos-rebuild test --flake /etc/nixos#aether-nixos";
      bootupdate = "sudo nixos-rebuild boot --flake /etc/nixos#aether-nixos";

      # Maintenance
      clean = "sudo nix-collect-garbage -d";
      optimise = "nix-store --optimise";

      # Checks
      errors = "journalctl -p 3 -xb";
      generations = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
      treecfg = "tree /etc/nixos -L 4";
      nixfiles = "/home/aether/.local/bin/nixfiles";

     # General Aliases for Bash
     hyprland conf = "sudo nano ~/.config/hypr/hyprland.conf"


<br>

## 󰄬 Licence

Released under the [MIT Licence](LICENSE).

You are free to use, modify and redistribute this configuration.

<br>

<div align="center">

### Made with <3, NixOS and an unreasonable amount of mental breakdowns.

<br>

[![GitHub profile](https://img.shields.io/badge/AETHERELIC-GITHUB-d79921?style=for-the-badge\&logo=github\&logoColor=fbf1c7)](https://github.com/Aetherelic)

</div>


