#!/usr/bin/env bash
#Atualizamos o Fedora
sudo yum -y update
sudo yum -y upgrade
#Instalamos OpenCV
sudo yum install -y numpy opencv*

#Instalamos as dependencias necessárias
sudo dnf  -y groupinstall 'Development Tools'
sudo dnf  -y install gcc-c++ 
sudo dnf  -y install rpm-build 
sudo dnf  -y install python-devel
sudo dnf  -y install python3-devel 
sudo dnf  -y install opencv-devel 
sudo dnf  -y install opencv-python
#Instalamos o PIP
sudo dnf install  -y python-pip 
sudo dnf install  -y python3-pip
#instalamos jupyter para Python 2 e 3
sudo pip3 install jupyter 
sudo python2 -m  pip install ipykernel
sudo python2 -m  ipykernel install
