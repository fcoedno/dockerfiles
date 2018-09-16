#!/usr/bin/env sh

envsubst '$NGINX_HOST $NGINX_PORT $NGINX_ROOT $NGINX_FPM_HOST $NGINX_FPM_PORT' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

exec "$@"
