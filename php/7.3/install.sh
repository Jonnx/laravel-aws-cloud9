#!/bin/bash

LC_ALL=C.UTF-8 
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update

sudo apt-get --force-yes install -qq \
    php7.3 \
    php7.3-fpm \
    php7.3-cli \
    php7.3-common \
    php7.3-json \
    php7.3-opcache \
    php7.3-mysql \
    php7.3-phpdbg \
    php7.3-mbstring \
    php7.3-gd \
    php7.3-imap \
    php7.3-ldap \
    php7.3-pgsql \
    php7.3-pspell \
    php7.3-recode \
    php7.3-tidy \
    php7.3-dev \
    php7.3-intl \
    php7.3-gd \
    php7.3-curl \
    php7.3-zip \
    php7.3-xml \
    php7.3-sqlite \
    php7.3-soap \
    php7.3-zip