FROM php:8.2-cli-alpine as dev

RUN apk add --no-cache $PHPIZE_DEPS linux-headers
RUN pecl install xdebug-3.2.1
RUN docker-php-ext-enable xdebug

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ARG UNAME=dev-user
ARG UID
ARG GID
RUN addgroup -g $GID -S $UNAME && adduser -u $UID -S $UNAME -s /bin/sh -G $UNAME
USER $UNAME
WORKDIR /code
