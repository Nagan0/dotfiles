#!/bin/bash


# -- pip --
sudo apt install -y python-pip python3-pip
python -m pip install --upgrade pip
python3 -m pip install --upgrade pip
pip install --upgrade pip

# -- Terminator --
sudo apt install -y terminator

# -- Git --
sudo apt install -y git
git config --global user.name "Nagan0"
git config --global user.email"49261854+Nagan0@users.noreply.github.com"

# -- Vim --
sudo apt-add-repository -y ppa:jonathonf/vim
sudo apt -y update
sudo apt install -y vim-gnome && sudo apt -y remove vim-tiny

# -- Google Chrome --
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt-get -fy install
cd ~/dotfiles

# -- scripts --
./scripts/setup_powerline.sh

