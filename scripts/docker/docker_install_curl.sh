#!/bin/bash
<<<<<<< HEAD
echo 123 | sudo -S curl -fsSL https://get.docker.com | bash
echo 123 | sudo -S dnf install docker-compose -y
echo 123 | sudo -S usermod -aG docker $USER
echo 123 | sudo -S systemctl enable docker
echo 123 | sudo -S systemctl start docker
=======
sudo -S 123 curl -fsSL https://get.docker.com | bash
sudo -S 123 usermod -aG docker $USER
sudo -S 123 dnf install docker-compose
>>>>>>> 3cce2f8870d4189c7917bdba52297bd013e88ce2
