#!/bin/bash

DIR=$(dirname "$0")

# install postgresql
sudo apt-get install --allow postgresql postgresql-contrib

# apply default config
sudo cp $DIR/pg_hba.conf /etc/postgresql/10/main/pg_hba.conf