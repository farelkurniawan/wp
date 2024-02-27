# setup awal
sudo apt-get update -y
sudo apt-get install git -y

# apache
sudo apt-get install apache2 -y
sudo systemctl status apache2
http://alamat_ip

# mysql
sudo apt-get install mysql-server -y
sudo systemctl status mysql
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'ukk2024';
FLUSH PRIVILEGES;
exit
sudo mysql_secure_installation

# phpmyadmin
sudo apt-get install phpmyadmin -y
// pilih "apache2" lalu "ok"
// pilih "no"
sudo systemctl restart apache2
http://alamat_ip/phpmyadmin # // bisa diakses setelah install php

# php
sudo apt-get install php -y
php -v
sudo nano /var/www/html/info.php
<?php
phpinfo();
http://alamat_ip/info.php

# buat database untuk wordpress
sudo mysql -u root -p
CREATE USER 'farel'@'localhost' IDENTIFIED BY 'ukk2024';
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'farel'@'localhost';
FLUSH PRIVILEGES;
exit

# install wordpress
sudo apt-get install wget unzip -y
wget https://wordpress.org/latest.zip
sudo unzip latest.zip
sudo mv wordpress/ /var/www/html/
sudo chown www-data:www-data -R /var/www/html/wordpress/
sudo chmod -R 755 /var/www/html/wordpress/

# konfigurasi wordpress

mkdir /home/github
cd /home/github
git clone 
cp /home/github/wordpress.conf /etc/apache2/sites-available/wordpress.conf
sudo a2dissite 000-default.conf
sudo a2ensite wordpress.conf
sudo a2enmod rewrite
sudo systemctl restart apache2
http://alamat_ip
