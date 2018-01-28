FROM php:7.1-cli-alpine

RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev

RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini" \
    && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini" \
    && curl -LsS http://symfony.com/installer > /usr/local/bin/symfony \
    && chmod a+x /usr/local/bin/symfony


WORKDIR /code

ENTRYPOINT ["symfony"]
