#!/bin/bash


sudo apt update

# -- pip --
sudo apt install -y python3-pip

# -- curl --
sudo apt install -y curl

# -- Git --
sudo apt install -y git
git config --global user.name "Nagan0"
git config --global user.email "49261854+Nagan0@users.noreply.github.com"

# -- Vim --
sudo apt --purge remove -y vim-common vim-tiny
sudo apt install -y vim

# -- Mozc --
sudo apt install ibus-mozc
killall ibus-daemon
ibus-daemon -d -x &

# -- scripts --
./scripts/setup_powerline.sh

