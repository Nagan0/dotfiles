#!/bin/bash

sudo wget -O /etc/apt/preferences.d/cuda-repository-pin-600 https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo apt-key adv --fetch-keys \
    https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/7fa2af80.pub
sudo add-apt-repository \
    "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo apt -y update
sudo apt -y install cuda-11-3

export CUDA_PATH=/usr/local/cuda-11.3
echo 'export CUDA_PATH=/usr/local/cuda-11.3' >> ${HOME}/.bashrc
export LD_LIBRARY_PATH=/usr/local/cuda-11.3/lib64:${LD_LIBRARY_PATH}
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.3/lib64:${LD_LIBRARY_PATH}' >> ${HOME}/.bashrc
export PATH=/usr/local/cuda-11.3/bin:${PATH}
echo 'export PATH=/usr/local/cuda-11.3/bin:${PATH}' >> ${HOME}/.bashrc

cat /usr/local/cuda-11.3/version.json
