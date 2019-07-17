#instalacao fedora 30

#instalando docker e docker-compose
sudo dnf install docker docker-compose

sudo systemctl enable docker
sudo systemctl start docker
newgrp docker
sudo usermod -aG docker ${USER}
sudo systemctl restart docker

sudo mkdir /home/abrahao/Dev
cd /home/abrahao/Dev
git clone https://github.com/Laradock/laradock.git
cd laradock
cp env-example .env


# Erros possíveis:

#Building mysql
#Step 1/9 : ARG MYSQL_VERSION=latest
#ERROR: Service 'mysql' failed to build: Please provide a source image with `from` prior to commit
#
#E preciso fazer um docker pull mysql:latest (provavelmente um problema com o repositório do docker!)
# docker pull mysql:latest
#
