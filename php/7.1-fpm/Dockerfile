FROM php:7.1-fpm-alpine3.4
RUN apk update --no-cache \
    && apk add --no-cache $PHPIZE_DEPS \
    && apk add --no-cache postgresql-dev \
    && apk add --no-cache mysql-dev \
    && apk add --no-cache libmcrypt \
    && apk add --no-cache imagemagick-dev \
    && apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev \
    && docker-php-ext-install -j2 pdo pdo_pgsql \
    && docker-php-ext-install -j2 pdo pdo_mysql \
    && docker-php-ext-install -j2 mbstring \
    && docker-php-ext-install -j2 tokenizer 
    #&& pecl install imagick \
    #&& docker-php-ext-enable imagick \
    #&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
    #&& docker-php-ext-install -j2 gd
