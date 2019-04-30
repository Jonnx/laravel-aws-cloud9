#!/bin/bash

# install composer
sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir /usr/bin --filename composer
sudo php -r "unlink('composer-setup.php');"

# permission change
sudo chown -R ubuntu /home/ubuntu/.composer

# add global composer to path
if [[ "$PATH" == ?(*:)"/home/ubuntu/.composer/vendor/bin"?(:*) ]]; then
    echo "PATH HAS: /home/ubuntu/.composer/vendor/bin"
else
    echo "" >> ~/.profile
    echo "" >> ~/.profile
    echo "# COMPSER GLOBAL: BIN" >> ~/.profile
    echo "PATH=\"\$PATH:/home/ubuntu/.composer/vendor/bin\"" >> ~/.profile
    source ~/.profile
fi

# add project composer to path
if [[ "$PATH" == ?(*:)"./vendor/bin"?(:*) ]]; then
    echo "PATH HAS: ./vendor/bin"
else
    echo "" >> ~/.profile
    echo "" >> ~/.profile
    echo "# COMPSER PROJECT: BIN" >> ~/.profile
    echo "PATH=\"\$PATH:./vendor/bin\"" >> ~/.profile
    source ~/.profile
fi
