#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 php7.0 libapache2-mod-php curl php-curl zip unzip

rm -rf /var/www/html && ln -s /vagrant /var/www/html
sed -i 's/www-user/vagrant/g' /etc/apache2/envvars
service apache2 stop
service apache2 start

cd /vagrant
curl -sS https://getcomposer.org/installer | php
php composer.phar install
