#!/bin/bash

#----------
# some module
#----------
pip3 install pydicom pynrrd h5py psutil matplotlib scikit-image

#----------
# opencv c++
#----------
sudo apt install -y  cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt install python3-dev python3-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=OFF \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
    -D BUILD_EXAMPLES=ON ..
make -j4
sudo make install -j4
sudo ldconfig


#----------
# ITK
#----------
sudo apt -yV install build-essential gcc g++ dpkg-dev pkg-config

cd /tmp
git clone https://github.com/Kitware/ITK
cd ITK
mkdir build
cd build
cmake ..
make -j4
sudo make install -j4

# Use editer
# Add /etc/ld.so.conf "/usr/local/lib"


#----------
# denseinference
#----------
sudo apt install -y libboost-dev libboost-all-dev
git clone https://github.com/soumickmj/DenseInferenceWrapper.git
cd DenseInferenceWrapper
make all
sudo pip install .


<< COMMENTOUT
#----------
# gpu driver
#----------
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo reboot
nvidia-smi

#----------
# GPU driver
#----------
sudo apt update
sudo add-apt-repository ppa:graphics-drivers/ppa
ubuntu-drivers devices
sudo apt install nvidia-#Version
sudo reboot

#------------------
# cuda 10.0 (GeForce GTX960)
#------------------
# Download cuda from web
# referring to https://qiita.com/konzo_/items/3e2d1d7480f7ef632603
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda-toolkit-10-0
sudo reboot

#------------------
# cuDNN (cuda 10.0)
#------------------
# Download 3 packages (Runtime, Developer and Code Samples).
sudo dpkg -i libcudnn7_7.6.5.32-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.6.5.32-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-doc_7.6.5.32-1+cuda10.0_amd64.deb

COMMENTOUT

