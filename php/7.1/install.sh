#!/bin/bash

LC_ALL=C.UTF-8 
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update

sudo apt-get -y --allow install -qq \
    php7.1 \
    php7.1-fpm \
    php7.1-cli \
    php7.1-common \
    php7.1-json \
    php7.1-opcache \
    php7.1-mysql \
    php7.1-phpdbg \
    php7.1-mbstring \
    php7.1-gd \
    php7.1-imap \
    php7.1-ldap \
    php7.1-pgsql \
    php7.1-pspell \
    php7.1-recode \
    php7.1-tidy \
    php7.1-dev \
    php7.1-intl \
    php7.1-gd \
    php7.1-curl \
    php7.1-zip \
    php7.1-xml \
    php7.1-mcrypt \
    php7.1-sqlite \
    php7.1-soap