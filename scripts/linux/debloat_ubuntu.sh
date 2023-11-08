#!/bin/bash

#Ubuntu 20.04 debloat
sudo apt remove parole xfburn gmusicbrowser simple-scan firefox \
mc gigolo synaptic ristretto pidgin atril info gucharmap nome-font-viewer onboard mate-calc transmission-gtk thunderbird gnome-terminal gnome-calculator gnome-keyring \
gnome-sudoku gnome-mines gnome-accessibility-themes gimp xfce4-screenshooter xfce4-dict xfce4-notes-plugin xfce4-screenshooter -y
sudo apt-get remove --purge libreoffice* -y
sudo apt-get purge sgt-puzzles -y
sudo apt autoremove
