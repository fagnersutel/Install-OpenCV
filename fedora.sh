#!/usr/bin/env bash

sudo dnf install opencv
sudo yum install numpy opencv*
sudo dnf install opencv-devel
sudo dnf install opencv-python

sudo dnf groupinstall 'Development Tools'
sudo dnf install gcc-c++
sudo dnf install rpm-build
sudo dnf install python-devel
sudo dnf install python3-devel

sudo dnf install python-pip
sudo dnf install python3-pip

sudo pip3 install jupyter
sudo python2 -m pip install ipykernel
sudo python2 -m ipykernel install