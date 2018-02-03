#!/usr/bin/env sh

envsubst '$NGINX_HOST $NGINX_PORT' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

exec "$@"
