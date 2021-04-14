FROM php:7.2-apache
RUN pecl install -f xdebug \
&& echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini;

#instalação plugin zip e libzip
RUN apt-get install -y \
    libzip-dev \
    zip \
    && docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-install zip

#php >= 7.3
#RUN apt-get install -y \
#        libzip-dev \
#        zip \
#  && docker-php-ext-install zip

#instalação composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/ \
    && ln -s /usr/local/bin/composer.phar /usr/local/bin/composer
