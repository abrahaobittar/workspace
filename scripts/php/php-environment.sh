#!/bin/bash

#Fedora30
sudo dnf -y update
sudo dnf -y install httpd
sudo systemctl enable httpd
sudo setsebool -P httpd_can_network_connect on
sudo systemctl start httpd

sudo dnf -y install php  php-cli php-fpm php-mysqlnd php-zip php-devel php-gd \
                php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json
php -v
sudo pecl install xdebug
sudo cp 15-xdebug.ini /etc/php.d/
sudo systemctl restart httpd
sudo systemctl restart php-fpm
