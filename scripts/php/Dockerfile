FROM php:8.0-apache

# Habilitando o modo de reescrita do Apache
RUN a2enmod rewrite

# Instalacao de extensoes basicas do PHP
# Qualquer nova extensao pode ser adicionada aqui
# Utilizar sempre o docker-php-ext-install quando possível ao inves de apt-get,
RUN apt-get update
RUN apt-get install -y libzip-dev zip wget build-essential libncursesw5-dev ffmpeg git
RUN apt-get install python3 -y
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN docker-php-ext-install pdo pdo_mysql zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod +x /usr/local/bin/youtube-dl

#Instalacao e configuracao vscode3.0
RUN yes | pecl install xdebug-3.0.0 \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.mode=develop,coverage,debug" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.discover_client_host=true" >>  /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.client_port=9000" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/conf.d/xdebug.ini