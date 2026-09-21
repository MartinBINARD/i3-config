# i3wm config

## Description

- A basic tiling window manager with installation commands reminder and config files.

## Command to run

```
sudo apt install -y i3 xorg lightdm light-gtk-greeter lightdm-settings lxappearance nitrogen arandr autoarandr picom dusnt feh pcmanfm flameshot brightnessctl xss-lock firefox pavucontrol blueman network-manager-gnome thunar libreoffice libreoffce-l10n-fr zathura bleachbit flameshot gparted file-roller htop neofetch vlc xpdf redshift xautolock rofi git materia-gtk-theme papirus-icon-theme fonts-jetbrains-mono fonts-font-awesome
```

### Sound card

```
sudo apt install -y pulseaudio alsa-utils or sudo apt install -y pulse pulse-wire wireplumber
```

### Graphic Card
```
sudo apt install -y nvidia-driver nvidia-cuda-toolkit libvulkan1
```

## Rofi

- Change rofi theme :

```
rofi-theme-selector
```
### Desktop wallpaper and lock screen image
```
sudo apt install -y imagemagick
```

- Always convert in .png format for i3  :

```
convert ~/Pictures/wallpapers/wallpapers.jpg ~/.config/i3/lockscreen.png

// For blur style
convert ~/Pictures/wallpapers/wallpapers.jpg -blur 0x8 ~/.config/i3/lockscreen.png
```
## Thunar

- In `Edit` → `Configure custom actions...` → `:ferris_wheel:` (edit action menu) → Insert a custom command indicating the current terminal in the command entry
- Ex : `/usr/bin/terminator`

## Annoying Beep

- To disable the annoying beep, run the following command :
```
sudo modprobe -r pcspkr
```

- To remove the beep permanently :
```
/etc/modprobe.d/nobeep.conf

blacklist pcspkr
blacklist snd_pcsp
```

## Remove GRUB menu
```
sudo nano /etc/default/grub
```
```
GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_TIMEOUT_STYLE=hidden
```
```
sudo update-grub
```
