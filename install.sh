sudo apt-get update

# Tools
sudo apt-get install -y vim curl python-software-properties
sudo apt-get install -y git-core
sudo apt-get update

# PHP
sudo add-apt-repository -y ppa:ondrej/php5
sudo apt-get install -y php5 
sudo apt-get install -y php5-curl 
sudo apt-get install -y php5-gd 
sudo apt-get install -y php5-mcrypt 
sudo apt-get install -y php5-readline 
sudo apt-get install -y php5-mysql 
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Apache
sudo apt-get install -y apache2 
sudo apt-get install -y libapache2-mod-php5 
sudo a2enmod rewrite
sudo service apache2 restart

# MySQL
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install -y mysql-server-5.5 

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# UPDATE REQUIRED!
# 
# Remove line if database is being created separately
#  -- or --
# Change database name 
#
mysql -u root -proot mysql -e "CREATE DATABASE \`my_database\`;"
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo 'Finished setting up Vagrant box'
