#!/bin/bash

# Perform system upgrade
sudo apt-get update -y
sudo apt-get upgrade
# Install Flatpak
sudo apt-get install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# Install Pacstall
sudo bash -c "$(curl -fsSL https://git.io/JsADh || wget -q https://git.io/JsADh -O -)"
# Install software
sudo snap install discord spotify bitwarden element-desktop
sudo snap install code --classic
pacstall -I nala-deb
pacstall -I vivaldi-deb
flatpak install com.usebottles.bottles com.github.tchx84.Flatseal flathub org.gnome.Boxes Yaru-dark com.system76.Popsicle com.raggesilver.BlackBox
echo "---"
echo "Please reboot"
echo "--"
