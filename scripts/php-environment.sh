#!/bin/bash

#Fedora30
sudo dnf update
sudo dnf -y httpd
sudo systemctl enable httpd
sudo setsebool -P httpd_can_network_connect on
sudo systemctl start httpd

sudo dnf -y install php  php-cli php-fpm php-mysqlnd php-zip php-devel php-gd \
                php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json
php -v
sudo pecl install xdebug \
    && echo "[xdebug]" >> /etc/php.ini \
    && echo "zend_extension=/usr/lib64/php/modules/xdebug.so" >> /etc/php.ini \
    && echo "xdebug.remote_enable=on" >> /etc/php.ini \
    && echo "xdebug.remote_autostart=on" >> /etc/php.ini \
    && echo "xdebug.profiler.enable=off" >> /etc/php.ini \
    && echo "xdebug.profiler.enable_trigger=off" >> /etc/php.ini \
    && echo "xdebug.profiler.output_name=cachegrind.out.%t.%p" >> /etc/php.ini \
    && echo "xdebug.profiler.output_dir=\"/tmp\"" >> /etc/php.ini \

systemctl restart httpd
systemctl restart php-fpm