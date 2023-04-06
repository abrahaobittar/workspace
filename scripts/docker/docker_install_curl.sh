#!/bin/bash

if [ "$UID" -ne 0 ]; then
    echo "You must be root to run this script"
    exit 1
fi

curl -fsSL https://get.docker.com | bash
dnf install docker-compose -y
usermod -aG docker $USER
systemctl enable docker
systemctl start docker
