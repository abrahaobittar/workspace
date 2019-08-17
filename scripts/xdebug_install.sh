# instalação xdebug
sudo pecl install xdebug

//php.ini
[xdebug]
zend_extensions=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so
xdebug.remote_enable=1
xdebug.remote_autostart=1
xdebug.remote_host=192.168.1.107
xdebug.remote_port=9000

