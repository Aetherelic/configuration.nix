<div align="center">

# ❄️ Aether NixOS Configuration

### My personal modular NixOS configuration built around Flakes, Hyprland and Whisker.

<br>

[![NixOS](https://img.shields.io/badge/NIXOS-26.05-5277C3?style=for-the-badge\&logo=nixos\&logoColor=white)](https://nixos.org/)
[![Flakes](https://img.shields.io/badge/NIX-FLAKES-7EBAE4?style=for-the-badge\&logo=nixos\&logoColor=white)](https://wiki.nixos.org/wiki/Flakes)
[![Hyprland](https://img.shields.io/badge/HYPRLAND-WAYLAND-58E1FF?style=for-the-badge\&logo=wayland\&logoColor=111827)](https://hypr.land/)
[![Steam](https://img.shields.io/badge/GAMING-READY-1B2838?style=for-the-badge\&logo=steam\&logoColor=white)](#-gaming)
[![MIT License](https://img.shields.io/badge/LICENSE-MIT-8B5CF6?style=for-the-badge)](LICENSE)

<br>

My personal NixOS configuration I use for my main PC.

Built around **Flakes**, **Hyprland**, **Whisker**, **PipeWire**, **Steam**, **NVIDIA**, and a collection of quality-of-life shell aliases.

<br>

[Features](#-features) •
[Repository Layout](#-repository-layout) •
[Installation](#-installation) •
[Shell Aliases](#-shell-aliases)

</div>

---

# ✦ Features

* ❄️ Nix Flakes
* 🖥️ Hyprland
* 🥃 Whisker desktop shell
* 🎮 Steam + GameMode + MangoHud
* 🎵 PipeWire audio
* 🎨 Spicetify integration
* ⚡ Modular configuration layout
* 🛠️ Helpful rebuild and editing aliases
* 🔄 Rollback-friendly workflow

---

# ✦ Repository Layout

```text
.
├── configuration.nix
├── flake.nix
├── shell.nix
├── packages.nix
├── steam.nix
├── system.nix
└── modules/
```

### Core files

| File                | Purpose                              |
| :------------------ | :----------------------------------- |
| `configuration.nix` | Main configuration entry point       |
| `flake.nix`         | Flake inputs and system definition   |
| `packages.nix`      | Installed packages                   |
| `shell.nix`         | Bash configuration and aliases       |
| `steam.nix`         | Gaming configuration                 |
| `system.nix`        | Hostname, locale and system settings |

---

# ✦ Included Modules

The configuration is split into smaller modules covering areas such as:

* Core system configuration
* Desktop
* Gaming
* Audio
* NVIDIA
* Boot
* Storage
* Theming
* Whisker
* Shell configuration

---

# ✦ Shell Aliases

One of the goals of this configuration is reducing repetitive commands.

Examples include aliases for:

### Editing

```text
nix-config
nix-flakes
nix-system
nix-pkgs
nix-aliases
nix-gaming
```

### Rebuilding

```text
update
tryupdate
bootupdate
```

### Maintenance

```text
clean
optimise
errors
generations
treecfg
```

This means most day-to-day NixOS management only requires a few short commands instead of repeatedly typing long `nixos-rebuild` commands.

---

# ✦ Gaming

Included gaming configuration provides:

* Steam
* Proton support
* GameMode
* MangoHud
* ProtonUp-Qt
* Prism Launcher

---

# ✦ Installation

Clone the repository:

```bash
git clone https://github.com/Aetherelic/configuration.nix.git
```

Review the configuration before replacing anything inside `/etc/nixos`.

Once you're happy with the configuration:

```bash
sudo nix flake check

sudo nixos-rebuild test --flake /etc/nixos#aether-nixos

sudo nixos-rebuild switch --flake /etc/nixos#aether-nixos
```

---

# ✦ Notes

This repository is built for **my own hardware and workflow**.

You will likely need to change:

* Username
* Hostname
* Hardware configuration
* Monitor configuration
* GPU settings
* Storage configuration
* Locale and timezone

Treat this repository as a reference or starting point rather than a universal NixOS installer.

---

# ✦ Licence

Released under the MIT Licence.

---

<div align="center">

### Declarative systems. Fewer headaches.

<br>

[![Aetherelic](https://img.shields.io/badge/CREATED_BY-AETHERELIC-8B5CF6?style=for-the-badge\&logo=github\&logoColor=white)](https://github.com/Aetherelic)

</div>
