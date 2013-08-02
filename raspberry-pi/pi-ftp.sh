#!/bin/bash
####################################
# rballen
# install ftp and user so you can ftp directly to web root
####################################
clear
# check if user www-data exists and create if not and set password
id -u www-data

if [ $? -eq 1] ; then	
sudo useradd --system www-data
passwd www-data
fi
# assign to www-data group
sudo usermod -g www-data www-data

sudo apt-get install vsftpd
sudo sed -i 's/anonymous_enable=YES/anonymous_enable=NO/g' /etc/vsftpd.conf
sudo sed -i 's/#local_enable=YES/local_enable=YES/g' /etc/vsftpd.conf
sudo sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
sudo sed -i 's/#local_umask=022/local_umask=022/g' /etc/vsftpd.conf
sudo sed -i '$ a\force_dot_files=YES' /etc/vsftpd.conf
echo "make sure that /etc/passwd has www-data's home as /var/www"
echo "www-data:x:33:33:www-data:/var/www:/bin/sh"  
sudo service vsftpd restart