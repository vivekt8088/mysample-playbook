#!/bin/sh
service nginx restart
service mysql restart
systemctl reload nginx
/etc/init.d/php7.2-fpm start

