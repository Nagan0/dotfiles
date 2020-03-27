#!/bin/sh

mv ~/.vimrc ~/dotfiles/
ln -sf ~/dotfiles/.vimrc ~/.vimrc

mv ~/.bashrc ~/dotfiles
ln -sf ~/dotfiles/.bashrc ~/.bashrc
