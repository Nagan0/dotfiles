#!/bin/bash

sudo add-apt-repository universe
sudo apt update && sudo apt install python2
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python2 get-pip.py

