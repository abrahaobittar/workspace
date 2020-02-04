#!/bin/bash

cd /home/abrahao/Code
sudo -S 123 curl -fsSL https://get.docker.com | bash
sudo -S 123 usermod -aG docker $USER
sudo -S 123 apt install docker-compose

