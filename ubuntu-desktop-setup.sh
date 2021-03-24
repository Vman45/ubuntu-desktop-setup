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
# htpasswd command
sudo apt install apache2-utils -y

# Gnome Tweak Tool
sudo apt install gnome-tweak-tool -y

# NVIDIA driver
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt install nvidia-driver-460 -y



###############
# Development #
###############
# Terminator
sudo apt install terminator -y

# GIT
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git -y

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
wget -qO - https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 -y
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose -y
sudo usermod -aG docker $USER

# Node.js
wget -qO - https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt install nodejs -y

# Yarn
wget -qO - https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y



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
sudo apt install oracle-java15-installer -y

# IDEA
sudo apt install rename -y
wget https://download-cf.jetbrains.com/idea/ideaIU-2020.3.3.tar.gz
tar -xzvf ideaIU-2020.3.3.tar.gz
rm ideaIU-2020.3.3.tar.gz
rename "s/idea-IU-203.+/IDEA/" *
mkdir ~/Applications -p
mv IDEA ~/Applications

# IDEA shortcut
wget -q https://raw.githubusercontent.com/kokkekpek/ubuntu-desktop-setup/master/idea.desktop
mv idea.desktop ~/.local/share/applications

# LibreOffice
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update
sudo apt install libreoffice libreoffice-gnome -y



##############
# Messengers #
##############
# Telegram
sudo apt install rename -y
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
# KeePassX
sudo apt install keepassx -y

# Create template
touch ~/Templates/Untitled