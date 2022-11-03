#!/bin/bash

#Deblot linux Mint 21
sudo apt remove transmission-gtk  celluloid hypnotix hexchat libreoffice webapp-manager \
thunderbird rhythmbox pix drawing simple-scan mintwelcome mintbackup sticky seahorse onboard \
thingy xfce4-dict xfce4-screenshooter timeshift redshift-gtk warpinator -y
sudo apt-get remove --purge libreoffice* -y
sudo apt-get clean && sudo apt autoremove -y
