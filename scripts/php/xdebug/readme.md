#WAMPPSERVER

#Xdebug 2 sample
[xdebug]
zend_extension="c:/wamp64/bin/php/php7.2.34/zend_ext/php_xdebug-2.9.7-7.2-vc15-x86_64.dll"
xdebug.remote_enable = on
xdebug.remote_autostart=1
xdebug.remote_port=9000
xdebug.profiler_enable=1
xdebug.profiler_enable_trigger = Off
xdebug.profiler_output_name = cachegrind.out.%t.%p
xdebug.profiler_output_dir ="c:/wamp64/tmp"
xdebug.show_local_vars=0

#Xdebug 3 sample
[xdebug]
zend_extension="c:/wamp64/bin/php/php7.4.26/zend_ext/php_xdebug-3.1.1-7.4-vc15-x86_64.dll"
;xdebug.mode allowed are : off develop coverage debug gcstats profile trace
xdebug.mode = develop,debug
xdebug.start_with_request=yes
xdebug.client_port=9000
