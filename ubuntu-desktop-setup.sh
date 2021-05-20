#!/bin/bash
##########
# Ubuntu #
##########
sudo apt update
sudo apt dist-upgrade -y
sudo apt autoremove -y



############
# Browsers #
############
# Google Chrome
wget -qO - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable -y

# Tor browser
sudo apt install torbrowser-launcher -y



##########
# System #
##########
# Terminator
sudo apt install terminator -y

# htop
sudo apt install htop -y

# UnRAR
sudo apt install unrar -y

# Gnome Tweak Tool
sudo apt install gnome-tweak-tool -y

# KeePassX
sudo apt install keepassx -y

# My Weather Indicator
sudo add-apt-repository ppa:atareao/atareao -y
sudo apt update
sudo apt install my-weather-indicator -y

# Hardware Sensors Indicator
sudo snap install indicator-sensors

# PulseAudio Volume Control
sudo apt install pavucontrol -y

# NVIDIA driver
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
sudo apt install nvidia-driver-460 -y



#########
# Video #
#########
# OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt install obs-studio -y

# VLC
sudo snap install vlc

# Kdenlive
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo apt update
sudo apt install kdenlive -y



###############
# Development #
###############
# GIT
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git -y

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
wget -qO - https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 -y
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose -y
sudo usermod -aG docker $USER

# Node.js
wget -qO - https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install nodejs -y

# Yarn
wget -qO - https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y

# apache2-utils for htpasswd command
sudo apt install apache2-utils -y



###########
# Editors #
###########
# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /etc/gnome/defaults.list
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /usr/share/applications/defaults.list

# Oracle JAVA for IDEA
sudo add-apt-repository ppa:linuxuprising/java -y
sudo apt update
sudo apt install oracle-java16-installer -y

# IDEA
sudo apt install rename -y
wget https://download-cf.jetbrains.com/idea/ideaIU-2021.1.1.tar.gz
tar -xzvf ideaIU-2021.1.1.tar.gz
rm ideaIU-2021.1.1.tar.gz
rename "s/idea-IU-211.+/IDEA/" *
mkdir ~/Applications -p
rm -rf ~/Applications/IDEA
mv IDEA ~/Applications

# IDEA shortcut
wget -q https://raw.githubusercontent.com/kokkekpek/ubuntu-desktop-setup/master/idea.desktop
sed -i s/user/$USER/g idea.desktop
mv idea.desktop ~/.local/share/applications

# LibreOffice
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update
sudo apt install libreoffice libreoffice-gnome -y

# Postman
wget https://dl.pstmn.io/download/latest/linux64
tar -xf linux64
rm linux64
mkdir ~/Applications -p
mv Postman ~/Applications

# Postman shortcut
wget -q https://raw.githubusercontent.com/kokkekpek/ubuntu-desktop-setup/master/postman.desktop
sed -i s/user/$USER/g postman.desktop
mv postman.desktop ~/.local/share/applications



##############
# Messengers #
##############
# Telegram
wget https://telegram.org/dl/desktop/linux
tar -xf linux
rm linux
mkdir ~/Applications -p
mv Telegram ~/Applications

# Discord
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo apt install ./discord.deb -y
rm discord.deb

# Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb -y
rm zoom_amd64.deb



#########
# Other #
#########
# Create template
touch ~/Templates/Untitled



###########
# Aliases #
###########
echo "alias upgrade='wget -qO - https://raw.githubusercontent.com/kokkekpek/ubuntu-packages-update/master/ubuntu-packages-update.sh | bash -'" >> ~/.bash_aliases