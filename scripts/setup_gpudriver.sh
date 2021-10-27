#!/bin/bash

#----------
# install python dev
#----------
sudo apt -y update
sudo apt -y install python3-dev python3-pip python3-setuptools python3-venv
sudo pip3 uninstall ptyprocess sniffio terminado tornado jupyterlab jupyter jupyter-console jupytext nteract_on_jupyter spyder
sudo apt -y install jupyter jupyter-qtconsole spyder3
sudo apt -y install python3-ptyprocess python3-sniffio python3-terminado python3-tornado
sudo pip3 install -U jupyterlab nteract_on_jupyter


#----------
# inable nouveau
#----------
echo 'blacklist nouveau' | sudo tee -a /etc/modprobe.d/blacklist-nouveau.conf
echo 'options nouveau modeset=0' | sudo tee -a /etc/modprobe.d/blacklist-nouveau.conf
cat /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u


#----------
# uninstall nvidia
#----------
sudo apt --purge remove nvidia-*
sudo apt --purge remove cuda-*
sudo apt autoremove
sudo apt -y update
sudo apt -y install linux-headers-$(uname -r)

#----------
# install nvidia driver
#----------
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo update-initramfs -u

echo "#############"
echo "please reboot"
echo "#############"

