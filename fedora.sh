#!/usr/bin/env bash
#Atualizamos o Fedora
sudo yum -y update
sudo yum -y upgrade
#Instalamos OpenCV
sudo yum install -y numpy opencv*

#Instalamos as dependencias necessárias
sudo dnf groupinstall 'Development Tools' -y 
sudo dnf install gcc-c++ -y 
sudo dnf install rpm-build -y 
sudo dnf install python-devel -y 
sudo dnf install python3-devel -y 
sudo dnf install opencv-devel -y 
sudo dnf install opencv-python -y 
#Instalamos o PIP
sudo dnf install python-pip -y 
sudo dnf install python3-pip -y 
#instalamos jupyter para Python 2 e 3
sudo pip3 install jupyter -y 
sudo python2 -m pip install ipykernel -y 
sudo python2 -m ipykernel install -y 
