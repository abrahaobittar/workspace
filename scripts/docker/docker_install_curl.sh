#!/bin/bash
echo 123 | sudo -S curl -fsSL https://get.docker.com | bash
echo 123 | sudo -S dnf install docker-compose -y
echo 123 | sudo -S usermod -aG docker $USER
echo 123 | sudo -S systemctl enable docker
echo 123 | sudo -S systemctl start docker
