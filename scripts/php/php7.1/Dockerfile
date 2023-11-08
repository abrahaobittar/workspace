FROM php:7.1-apache

# Habilitando o modo de reescrita do Apache
RUN a2enmod rewrite

# Instalacao de extensoes basicas do PHP
# Qualquer nova extensao pode ser adicionada aqui
# Utilizar sempre o docker-php-ext-install quando possível ao inves de apt-get,
RUN apt-get update
RUN apt-get install -y libzip-dev zip wget build-essential libpng-dev libncursesw5-dev git nano

RUN docker-php-ext-install pdo pdo_mysql zip gd
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#Instalacao e configuracao vscode3.0
RUN yes | pecl install xdebug-2.9.0 \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini