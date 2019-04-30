#!/bin/bash

# fetch and import debian package
wget http://dev.mysql.com/get/mysql-apt-config_0.6.0-1_all.deb
sudo dpkg -i mysql-apt-config_0.6.0-1_all.deb

# cleanup deb package
rm mysql-apt-config_0.6.0-1_all.deb

# install
sudo apt-get update
sudo apt-get install mysql-server
