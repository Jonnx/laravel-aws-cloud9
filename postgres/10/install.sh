#!/bin/bash

DIR=$(dirname "$0")

sudo apt-get install --allow postgresql postgresql-contrib

sudo cp $DIR/pg_hba.conf /etc/postgresql/10/main/pg_hba.conf