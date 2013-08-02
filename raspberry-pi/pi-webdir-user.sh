#!/bin/bash
####################################
# rballen
# setup working webroot and user
####################################

# check if user www-data exists and create if not
id -u www-data

if [ $? -eq 1] ; then	
	sudo useradd --system www-data
fi
# add to dev group
sudo usermod -aG www-data dev
# add myself ro www-data group
sudo usermod -aG www-data $USER

# web dirs
sudo mkdir -p /var/www	
sudo mkdir -p /var/www/pi.robuntu.dev/{css,data,fonts,img,img/bg,img/icons,js,php,vendor}
sudo mkdir -p /var/www/resources.local/{css,data,fonts,img,img/bg,img/icons,js,php,vendor}
sudo mkdir -p /var/www/docs.local/{css,data,fonts,img,img/bg,img/icons,js,php,vendor}

# change ownership and all subdir/files, for all new file/folders to have group www-data wit h sticky bit
sudo chown -R www-data:www-data /var/www && sudo chmod -R g+s /var/www && sudo chmod -R g+w /var/www
