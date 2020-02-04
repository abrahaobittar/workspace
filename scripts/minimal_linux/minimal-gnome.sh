#!/bin/bash

sudo dnf install @base-x gnome-shell gnome-terminal dejavu-sans-mono-fonts bash-completion \
    NetworkManager-wifi firefox liberation-*-fonts mozilla-adblockplus gedit \
    nautilus gnome-system-monitor baobab eog gnome-tweaks

sudo systemctl set-default graphical.target
sudo systemctl isolate graphical.target
