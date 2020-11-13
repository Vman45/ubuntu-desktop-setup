#!/bin/bash
# Update OS
sudo apt update
sudo apt dist-upgrade -y
sudo apt autoremove -y

# Terminator
sudo apt install terminator -y

# Google Chrome
wget -qO - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable -y

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /etc/gnome/defaults.list
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /usr/share/applications/defaults.list

# Gnome Tweak Tool
sudo apt install gnome-tweak-tool -y

# Tor browser
sudo apt install torbrowser-launcher -y

# For htpasswd command
sudo apt install apache2-utils -y

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

# NVIDIA driver
sudo apt install nvidia-driver-440 -y

# Node.js
wget -qO - https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install nodejs -y

# Yarn
wget -qO - https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y

# Oracle JAVA 14 for IDEA
sudo add-apt-repository ppa:linuxuprising/java -y
sudo apt update
sudo apt install oracle-java14-installer -y

# IDEA 2020.1.4
sudo apt install rename -y
wget https://download-cf.jetbrains.com/idea/ideaIU-2020.1.4.tar.gz
mkdir ~/Applications -p
tar -xzvf ideaIU-2020.1.4.tar.gz
rename "s/idea-IU-201.+/IDEA/" *
mv IDEA ~/Applications

# Create template
touch ~/Templates/Untitled