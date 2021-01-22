#!/bin/bash

#----------
# some module
#----------
pip3 install -y pydicom pynrrd h5py psutil matplotlib scikit-image scikit-build

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
# And "sudo /sbin/ldconfig"


#----------
# denseinference
#----------
sudo apt install -y libboost-dev libboost-all-dev
git clone https://github.com/soumickmj/DenseInferenceWrapper.git
cd DenseInferenceWrapper
make all
sudo pip install .

# export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

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
# run displayd command "sudo apt-key adv ~"
sudo apt-get update
sudo apt-get install cuda-toolkit-10-0
# add .bashrc 
# export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
sudo reboot

#------------------
# cuDNN (cuda 10.0)
#------------------
# Download 3 packages (Runtime, Developer and Code Samples).
sudo dpkg -i libcudnn7_7.6.5.32-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.6.5.32-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-doc_7.6.5.32-1+cuda10.0_amd64.deb

#------------------
# caffe
#------------------
sudo apt install -y python python-pip python3-pip python-numpy python-scipy python-matplotlib python-pandas python-sympy python-nose python-tk python-yaml jupyter-notebook jupyter
sudo apt install -y build-essential pkg-config libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler libatlas-base-dev libgflags-dev libgoogle-glog-dev liblmdb-dev libhdf5-dev wget
sudo apt install -y --no-install-recommends libboost-all-dev
pip3 install ipython opencv-python scikit-image protobuf easydict cython



COMMENTOUT

