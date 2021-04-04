#!/bin/bash -eu


# Download Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts/
./install.sh
cd ..
rm -rf fonts/

gsettings set org.gnome.desktop.interface monospace-font-name 'Source Code Pro for Powerline Regular 12'

# powerline-shell
cd ~/
mkdir warehouse && cd $_
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell/
sudo python3 setup.py install
cd ~/

pip3 install --user powerline-status

# vim theme - molokai
cd ~/
mkdir ~/.vim && cd $_
mkdir colors/
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
cd ~/

mkdir -p ~/.config/powerline-shell && powerline-shell --generate-config > ~/.config/powerline-shell/config.json

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Lind dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/configs/config.json ~/.config/powerline-shell/config.json
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
