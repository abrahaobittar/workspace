#!/bin/bash
#Fedora
sudo dnf install gcc g++ libgnome gtk3 gtk3-devel
sudo dnf install @development-tools
export PUREBASIC_HOME=~/purebasic

#Homologado Linux Mint 21 x64
#Data 27/07/2022

#Instalação Purebasic 6.00 x64
#Extrair Pacote purebasic no diretorio ~/apps

#Dependencias
sudo apt-get install build-essential gcc g++ libwebkit2gtk-4.0-dev libgl1-mesa-dev \
libgl1-mesa-glx qtbase5-dev qttools5-dev qtmultimedia5-dev qtdeclarative5-dev libqt5svg5-dev \
libqt5webkit5-dev libqt5multimedia5-plugins

#Dependencia para executar Purebasic 32bits em ambiente x86_64
sudo apt-get install ia32-libs
sudo apt-get install gcc-multilib libc6-i386 libc6-dev-i386
sudo apt-get install libgtk2.0-dev libsdl1.2-dev

#Atalho purebasic 6 x64
echo "[Desktop Entry]
    Type=Application
    Icon=/home/abrahao/apps/purebasic6/logo.png
    Name=Purebasic v6.0
    Comment=Developer Utility
    Exec=/home/abrahao/apps/purebasic6/compilers/purebasic
    Path=/home/abrahao/apps/purebasic6/compilers
    StartupNotify=false
    Terminal=false
" > /home/$USER/Desktop/PureBasic6.desktop

#Atalho purebasic_5.43 32bits
#echo "[Desktop Entry]
#    Type=Application
#    Icon=/home/abrahao/Downloads/purebasic_543/logo.png
#    Name=Purebasic v5.43
#    Comment=Developer Utility
#    Exec=/home/abrahao/Downloads/purebasic_543/compilers/purebasic
#    Path=/home/abrahao/Downloads/purebasic_543/compilers
#    StartupNotify=false
#    Terminal=false
#" > /home/$USER/Desktop/PureBasic_543.desktop