#!/usr/bin/env sh

USER_ID=${USER_ID:-9001}

echo "Starting with UID : $USER_ID"
adduser -u $USER_ID -D user
sed -i -e 's/www-data/user/g'  /usr/local/etc/php-fpm.d/www.conf

docker-php-entrypoint "$@"
