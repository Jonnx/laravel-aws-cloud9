#!/bin/bash

DIR=$(dirname "$0")

sudo apt-get install nginx

if [ ! -d /home/ubuntu/environment/www ]; then
    mkdir /home/ubuntu/environment/www
    echo "<?php phpinfo();" >> /home/ubuntu/environment/www/index.php
fi;

# setup nginx config
sudo rm /etc/nginx/sites-enabled/default
sudo cp $DIR/nginx.config /home/ubuntu/environment/nginx.config
sudo rm /etc/nginx/sites-enabled/aws-cloud9-laravel
sudo ln -s /home/ubuntu/environment/nginx.config /etc/nginx/sites-enabled/aws-cloud9-laravel
sudo service nginx restart