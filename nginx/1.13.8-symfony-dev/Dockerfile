FROM nginx:1.13.8-alpine
COPY ./default.template /etc/nginx/conf.d/default.template
ENV NGINX_HOST=example.com NGINX_PORT=80
CMD envsubst '$NGINX_HOST $NGINX_PORT' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
