FROM php:8.2-cli-alpine as dev

RUN apk add --no-cache $PHPIZE_DEPS linux-headers
RUN pecl install xdebug-3.2.1
RUN docker-php-ext-enable xdebug

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ARG UID
ARG GID

USER $UID:$GID
WORKDIR /code
