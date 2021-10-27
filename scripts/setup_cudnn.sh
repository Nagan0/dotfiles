#!/bin/bash

cd /tmp
wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu2004/x86_64/nvidia-machine-learning-repo-ubuntu2004_1.0.0-1_amd64.deb
sudo dpkg -i nvidia-machine-learning-repo-ubuntu2004_1.0.0-1_amd64.deb
sudo apt-key adv --fetch-keys \
    http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt update
apt-cache search cudnn
sudo apt -y update
sudo apt -y install libcudnn8 libcudnn8-dev

dpkg -l | grep cuda
