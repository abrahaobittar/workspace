#!/bin/bash
sudo -S 123 curl -fsSL https://get.docker.com | bash
sudo -S 123 usermod -aG docker $USER
sudo -S 123 dnf install docker-compose
