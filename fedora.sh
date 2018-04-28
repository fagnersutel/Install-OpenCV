#!/usr/bin/env bash
#Atualizamos o Fedora
sudo yum -y update
sudo yum -y upgrade
#Instalamos OpenCV
sudo yum install -y numpy opencv*

#Instalamos as dependencias necessárias
sudo dnf  groupinstall 'Development Tools' -y 
sudo dnf  install gcc-c++  -y 
sudo dnf  install rpm-build  -y 
sudo dnf  install python-devel -y 
sudo dnf  install python3-devel  -y 
sudo dnf  install opencv-devel  -y 
sudo dnf  install opencv-python -y 

#Instalamos o PIP
sudo dnf install  -y python-pip 
sudo dnf install  -y python3-pip
#instalamos jupyter para Python 2 e 3
sudo pip install matplotlib
sudo pip3 install matplotlib
sudo pip install pandas
sudo pip3 install pandas
sudo pip3 install jupyter 
sudo python2 -m  pip install ipykernel
sudo python2 -m  ipykernel install
jupyter notebook
