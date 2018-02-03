FROM nginx:1.13.8-alpine

ENV NGINX_HOST=example.com NGINX_PORT=80
COPY ./default.template /etc/nginx/conf.d/default.template
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

CMD nginx -g 'daemon off;'
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
