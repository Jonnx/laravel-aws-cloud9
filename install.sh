#!/bin/bash

DIR=$(dirname "$0")

# install php
$DIR/php/7.1/install.sh

# install mysql
$DIR/mysql/5.7/install.sh

# install postgres
$DIR/postgres/10/install.sh

# install redis
$DIR/redis/install.sh

# install nginx
$DIR/nginx/install.sh

# install homestead utility
$DIR/homestead/install.sh