#!/usr/bin/env bash
#Atualizamos o Fedora
sudo yum update
sudo yum upgrade
#Instalamos OpenCV
sudo yum install numpy opencv*

#Instalamos as dependencias necessárias
sudo dnf groupinstall 'Development Tools'
sudo dnf install gcc-c++
sudo dnf install rpm-build
sudo dnf install python-devel
sudo dnf install python3-devel
sudo dnf install opencv-devel
sudo dnf install opencv-python
#Instalamos o PIP
sudo dnf install python-pip
sudo dnf install python3-pip
#instalamos jupyter para Python 2 e 3
sudo pip3 install jupyter
sudo python2 -m pip install ipykernel
sudo python2 -m ipykernel install
