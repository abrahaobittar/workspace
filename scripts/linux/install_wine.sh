#!/bin/bash

#Distros testadas:
#Xubuntu 20.04.06

sudo dpkg --add-architecture i386 && sudo apt update
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt install software-properties-common
sudo apt-add-repository "deb http://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main"
sudo apt install --install-recommends winehq-stable -y
wine --version