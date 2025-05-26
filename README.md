# i3wm config

## Description

- A basic tiling window manager with installation commands reminder and config files.

## Command to run

```
sudo apt install i3 xorg lightdm slick-greeter lightdm-settings lxappearance nitrogen arandr pcmanfm firefox pulseaudio alsa-utils pavucontrol terminator blueman network-manager-gnome thunar libreoffice bleachbit flameshot gparted file-roller htop neofetch vlc bc calculator xpdf redshift xautolock rofi git materia-gtk-theme papirus-icon-theme
```

## Rofi

- Change rofi theme :

```
rofi-theme-selector
```

## Thunar

- In `Edit` → `Configure custom actions...` → `:ferris_wheel:` (edit action menu) → Insert a custom command indicating the current terminal in the command entry
- Ex : `/usr/bin/terminator`