#!/bin/bash

# repo installs
sudo apt-get update
sudo apt-get install awesome
sudo apt-get install python-neovim
sudo apt-get install parcellite
sudo apt-get install git
sudo apt-get install leafpad
sudo apt-get install kiki
sudo apt-get install apache2
sudo apt-get install php php-intl php-bcmath php-xml php-mbstring php-curl php-imap php-zip php-mysql
sudo apt-get install mysql-server
sudo apt-get install ctags
sudo apt-get install curl
sudo apt-get install vivaldi
sudo apt-get install firefox
sudo apt-get install google-chrome
sudo apt-get install rofi
sudo apt-get install flameshot
sudo apt-get install unclutter
sudo apt-get install nm-applet
sudo apt-get install mycli

# kitty terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# zsh installs
sudo apt-get install zsh
sudo apt-get install fzf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# use zsh as default shell
chsh -s zsh

# required for neovim clipboard support
sudo apt-get install xclip

# build tools
sudo apt-get install cmake
sudo apt-get install libtool-bin
sudo apt-get install m4
sudo apt-get install automake

# awesome settings
sudo cp /etc/xdg/awesome ~/.config/
git clone --recursive https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/* ~/.config/awesome && rm -rf awesome-copycats

# defaults
sudo update-alternatives --config x-terminal-emulator
sudo update-alternatives --config editor

# docker install
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "127.0.1.1    mysql redis" | sudo tee -a /etc/hosts

mkdir ~/bin

# nasc calculator
sudo apt install vasac libgee-0.8-dev libgtk3.0-cil-dev libgranite-dev libsoup2.4-dev libgtksourceview-3.0-dev libqalculate-dev
mkdir ~/applications -p \
    && cd ~/applications \
    && git clone https://github.com/parnold-x/nasc.git \
    && mkdir nasc/build \
    && cd nasc/build \
    && cmake -DCMAKE_INSTALL_LIBDIR=/usr/lib -DCMAKE_INSTALL_PREFIX:PATH=/usr .. \
    && make \
    && sudo make install \
    && ln -s com.github.parnold-x.nasc ~/bin/nasc

# razer mouse
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install razercfg qrazercfg
sudo apt install qrazercfg-applet

# don't reset wallpaper when opening nautilus
# https://askubuntu.com/questions/306362/when-i-run-nautilus-or-guake-from-awesome-wm-the-wallpaper-is-reverted-to-my-uni