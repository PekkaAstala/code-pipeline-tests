#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password timelord'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password timelord'

apt-get update
apt-get install -y mysql-server php7.0 php-xml php-mysql php-mbstring zip unzip

cd /vagrant && wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet

service mysql start
