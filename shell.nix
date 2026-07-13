#                                        ██████   █████  ███             
#                                       ▒▒██████ ▒▒███  ▒▒▒              
#                                        ▒███▒███ ▒███  ████  █████ █████
#                                        ▒███▒▒███▒███ ▒▒███ ▒▒███ ▒▒███ 
#                                        ▒███ ▒▒██████  ▒███  ▒▒▒█████▒  
#                                        ▒███  ▒▒█████  ▒███   ███▒▒▒███ 
#                                        █████  ▒▒█████ █████ █████ █████
#                                       ▒▒▒▒▒    ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒ 
#                                 
#                                                                     █████████   ████   ███                                    
#                                                                    ███▒▒▒▒▒███ ▒▒███  ▒▒▒                                     
#                                                                   ▒███    ▒███  ▒███  ████   ██████    █████   ██████   █████ 
#                                                                   ▒███████████  ▒███ ▒▒███  ▒▒▒▒▒███  ███▒▒   ███▒▒███ ███▒▒  
#                                                                   ▒███▒▒▒▒▒███  ▒███  ▒███   ███████ ▒▒█████ ▒███████ ▒▒█████ 
#                                                                   ▒███    ▒███  ▒███  ▒███  ███▒▒███  ▒▒▒▒███▒███▒▒▒   ▒▒▒▒███
#                                                                   █████   █████ █████ █████▒▒████████ ██████ ▒▒██████  ██████ 
#                                                                  ▒▒▒▒▒   ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒▒▒ ▒▒▒▒▒▒   ▒▒▒▒▒▒  ▒▒▒▒▒▒  
                                                             
                                                             
{ config, pkgs, ... }:

{
  users.defaultUserShell = pkgs.bashInteractive;
  users.users.aether.shell = pkgs.bashInteractive;

  programs.bash = {
    completion.enable = true;

    interactiveShellInit = ''
      export GSETTINGS_SCHEMA_DIR="$(find -L /run/current-system/sw/share/gsettings-schemas -path '*/gsettings-desktop-schemas-*/glib-2.0/schemas' -type d | head -n1)"

      if command -v hyfetch >/dev/null 2>&1; then
        hyfetch
      fi
    '';

    shellAliases = {
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
     
    };
  };
}
