# laravel-aws-cloud9

A collection of scripts and tools to quickly setup a development environment
for the Laravel Framework on AWS Cloud9 IDE.

## Disclaimer

All setup steps & scripts should be used for **DEVELOPMENT ONLY**.
Lots of these steps open up your services to make development easy.
They are definitly not secure or protcted in any way.
These should never be considered for production environments.

## Getting Started
You need to have the following:

1) Access (or create) your Amazon AWS Account
2) Go to the [Cloud9 Dashboard](https://console.aws.amazon.com/cloud9)
3) Create a new Evironment using **Ubunutu 18.04 LTS**
4) use the install scripts in this project to install the services you need
5) start developing


## Running Services

Once you install the homestead utility in this bundle, you can start, stop, reload, and
get the status of all the services with the following command:

```
homestead [CMD]
```

## PHP (7.3.*)
Installing PHP is straight forward. As of right now, only version 7.3.* is
supported by these scripts.

Feel free to open a pull request if you know how to reliably install another PHP version on Ubuntu 18.04 LTS.

## Nginx
Unstalling the webserver to view your running application is
pretty straight forward as well: just run the script.

The script will create a ```nginx.config``` file in the root of your environment.
**KEEP THIS FILE**. This is where the site configuration lives to you can easily
change the website configuration and preview your site in real time.

You will most likely want to change the ```root``` option

```
# Home directoy, our server workspace
root /path/to/my/laravel-project/public;
```

Once the necessary changes are made, simply run ```homestead restart```
and the new configuration should take effect.

**Note**: Its very easy to misconfigure the nginx server.
If your configuration does not want to work, lookup debugging steps first.


## MySQL

To access the local mysql instance simply run the mysql command:

```
sudo mysql
```

## Postgres

To access the local postgres instance simply run the mysql command:

```
psql -U postgres
```

To able your local laravel application to communicate with the postgres server,
access the psql command line and then execute the following command:

```
\password postgres
```

Enter your desired password twice and you should be good to go. We recommend using
"secret" which is a common laravel default for development environments.

#### PostGIS

If you are looking to develop geo-spacial centric applications, the PostGIS extension
for Postgres is a great starting point. To install the extension run the following command:

```
./laravel-aws-cloud9/postgres/postgis/install.sh
```

Once the package is installed, you must enable the extension from withing the psql
command line utility:

```
CREATE EXTENSION postgis;
```

## PHP CodeSniffer

Having your formatting be automatically cleaned up to a pre-defined standard
is a major convenience but not necessary. If you want to use [PHP CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer) in
AWS Cloud9, here are the steps:

```
composer global require "squizlabs/php_codesniffer=*"
```

Then open the ```AWS Cloud9``` > ```Preferences``` menu and find the section "PHP Support"

1) enable "Format Code on Save"
2) set "Custom Code Formatter" to ```/home/ubuntu/.composer/vendor/bin/phpcbf "$file"```
