#!/bin/bash

DIR=$(dirname "$0")

sudo cp $DIR/homestead /usr/bin/homestead
sudo chmod +x /usr/bin/homestead