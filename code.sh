#!/bin/bash
sudo apt purge snapd -y
sudo apt purge vim -y
sudo rm -rf /etc/apt/preferences.d/nosnap.pref
sudo rm -rf /etc/apt/preferences.d/nonautilus.pref
sudo rm -rf /etc/apt/preferences.d/nolibreoffice.pref
sudo rm -rf /etc/apt/preferences.d/nogdm.pref
sudo rm -rf /etc/netplan/01-network-manager-all.yaml
sudo rm -rf /etc/os-release
sudo wget https://github.com/SteavenGamerYT/Gnome-Customizations/raw/main/SteavenBuntu/nosnap.pref -P /etc/apt/preferences.d/
sudo wget https://github.com/SteavenGamerYT/Gnome-Customizations/raw/main/SteavenBuntu/01-network-manager-all.yaml -P /etc/netplan/
sudo wget https://github.com/SteavenGamerYT/Gnome-Customizations/raw/main/SteavenBuntu/os-release -P /etc/
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt update
sudo apt upgrade -y
yes | sudo apt-get install xorg xterm menu gksu synaptic gnome-session gnome-panel metacity gnome-terminal gnome-control-center --no-install-recommends
yes | sudo apt install gnome-shell-extension-dash-to-panel gnome-shell-extension-desktop-icons gnome-shell-extension-gamemode nemo xinit git wget papirus-icon-theme firefox gnome-shell-extension-top-icons-plus gedit pulseaudio network-manager gnome-system-monitor
wget https://github.com/SteavenGamerYT/Gnome-Customizations/raw/main/SteavenBuntu/pop-gnome-shell-theme_5.3.1_all.deb -O ~/pop-shell-theme.deb
wget https://github.com/SteavenGamerYT/Gnome-Customizations/raw/main/SteavenBuntu/pop-gtk-theme_5.3.1_all.deb -O ~/pop-gtk-theme.deb
wget https://github.com/SteavenGamerYT/Gnome-Customizations/raw/main/SteavenBuntu/pop-sound-theme_5.3.1_all.deb -O ~/pop-sound-theme.deb
sudo dpkg --force-all -i ~/pop-shell-theme.deb
sudo dpkg --force-all -i ~/pop-gtk-theme.deb
sudo dpkg --force-all -i ~/pop-sound-theme.deb
sudo apt install -f -y
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.desktop.interface gtk-theme Pop
gsettings set org.gnome.desktop.wm.preferences theme Pop
gsettings set org.gnome.desktop.interface icon-theme Papirus-Light
gnome-extensions enable dash-to-panel@jderose9.github.com
gnome-extensions enable desktop-icons@csoriano
gnome-extensions enable gamemode@christian.kellner.me
gnome-extensions enable TopIcons@phocean.net
