#!/bin/bash
#Corrige APT
sudo rm /var/lib/apt/lists/* ;
sudo rm /var/lib/apt/lists/partial/* ;
sudo apt-get -f install ;
sudo apt-get clean ;
sudo apt-get update
