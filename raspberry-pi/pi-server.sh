#!/bin/bash
####################################
# rballen
# install nginx 1.2.2 and php5
####################################
clear

sudo apt-get install nginx
sudo service nginx start
# nginx site config        
sudo cp ~/linux-distros-setup/raspberry-pi/pi.robuntu.dev /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/pi.robuntu.dev /etc/nginx/sites-enabled/
sudo rm /etc/nginx/sites-enabled/default
# sudo cp ~/linux-distros-setup/raspberry-pi/resources.local /etc/nginx/sites-available/
# sudo cp ~/linux-distros-setup/raspberry-pi/docs.local /etc/nginx/sites-available/
# sudo ln -s /etc/nginx/sites-available/resources.local /etc/nginx/sites-enabled/
# sudo ln -s /etc/nginx/sites-available/docs.local /etc/nginx/sites-enabled/

# php
sudo apt-get install php5-fpm 
sudo apt-get install php5-imagick php5-sqlite php5-cgi php5-tidy 

# modify files /etc/php5/fpm/php.ini
sudo sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 10M/g' /etc/php5/fpm/php.ini
sudo sed -i 's/;default_charset = "UTF-8"/default_charset = "UTF-8"/g' /etc/php5/fpm/php.ini
sudo sed -i '/; Dynamic Extensions ;/a extension=imagick.so' /etc/php5/fpm/php.ini
# sudo sed -i '/; Dynamic Extensions ;+5/a extension=imagick.so' /etc/php5/fpm/php.ini
sudo sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php5/fpm/php.ini
sudo sed -i 's/ ;date.timezone =/date.timezone = America/New_York/g' /etc/php5/fpm/php.ini

echo "<?php phpinfo(); ?>" >> /var/www/pi.robuntu.dev/info.php
echo "<?php print_r(PDO::getAvailableDrivers()); ?>" >> /var/www/pi.robuntu.dev/info.php

sudo service php5-fpm restart
sudo service nginx restart

