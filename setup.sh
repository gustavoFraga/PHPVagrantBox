sudo apt-get update

sudo apt-get install -y curl apache2

sudo a2enmod rewrite	
sudo a2enmod rewrite actions ssl

sudo a2dissite 000-default.conf
sudo chmod 777 /var/www/

sudo systemctl restart apache2

sudo apt-get install -y libapache2-mod-php php-dev php-curl php-json php-mcrypt php-mbstring php-mysql

debconf-set-selections <<< 'mysql-server mysql-server/root_password password @phpvagrantbox'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password @phpvagrantbox'

sudo apt-get install -y mysql-server

sudo phpenmod mcrypt

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
