#!/bin/sh
#!/bin/sh
service nginx start
service mysql restart
/etc/init.d/php7.2-fpm start
tail -f /var/log/mysql/error.log

