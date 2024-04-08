# i3wm config

## Description

- A basic tiling window manager with installation commands reminder and config files.

## Step 1 : i3wm

- Run `sudo apt install i3 i3blocks i3lock i3status xorg lightdm`
- Reboot

## Step 2 : terminal

- Run `sudo apt install kitty`
- Create .xsessionrc & copy content of .xsessionrc
- Reboot

## Step 3 : transparency & rofi

- Run `sudo apt install git gpick rofi picom sysstat flameshot thunar`

## Step 4 : i3wm config

- Make a backup of i3 config : `mv i3 i3.backup`
- Move into config repo : `cd .config/`
- Clone this custom i3 repo :`git clone https://github.com/MartinBINARD/i3`
- Give the rights : `chmod +x ~/.config/* && chmod +x ~/.config/*/*`

## Step 5 : relative links

- Create the repo for relative links : `mkdir ~/.local/bin/`
- Link binaries to the last path : `ls -1 | xargs -I {} ln -s $PWD/{} $HOME/.local/bin/{}`
- Link the picom file : `ln -s $PWD/picom.conf $HOME/.config/`
- Reload i3 : command + Shift + R
- Run to activate picom compositor : `pciom --config picom.conf`

## Step 6 : i3blocks bar

- Clone & clone : `git clone https://github.com/MartinBINARD/i3blocks.git ~/.config/i3blocks`
- Install dependencies : `sudo apt install build-essential autoconf pkg-config`
- In Downloads repo : `git clone https://github.com/vivien/i3blocks.git`
- Then run : `./autogen.sh`
- Then run : `./configure`
- Install with `make`
- Install with `sudo make install`

## OLD COMMAND REMINDER

```
sudo apt install i3 xorg lightdm kitty slick-greeter lightdm-settings lxappearance nitrogen arandr pcmanfm firefox-esr pulseaudio alsa-utils pavucontrol blueman network-manager-gnome thunar libreoffice bleachbit flameshot gparted file-roller htop neofetch vlc bc calculator xpdf redshift xautolock rofi git
```

## Rofi

- Change rofi theme :

```
rofi-theme-selector
```

## Thunar

- In `Edit` → `Configure custom actions...` → `:ferris_wheel:` (edit action menu) → Insert a custom command indicating the current terminal in the command entry
- Ex : `/usr/bin/terminator`
