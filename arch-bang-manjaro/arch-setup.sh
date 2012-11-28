#!/bin/bash
####################################
# Setup for my lovely arch
#
# chmod +x setup-arch.sh && sudo ./setup-arch.sh
# 
# burn to usb: dd if=arch*  of=/dev/sdb bs=8M
# restore usb: dd if=/dev/zero of=/dev/sdb bs=4k conv=notrunc
#wget https://aur.archlinux.org/packages/pk/pkgbrowser/pkgbrowser.tar.gz 
#tar -xgf pkgbrows*
#cd pkgbrowser
#makepkg -s
#sudo pacman -U pkgbrowser-0.6-1-x86_64.pkg.tar.xz
####################################
# sudo pacman -U package.pkg.tar.xz
clear

# install apps
# core 
sudo pacman -S base-devel vim coreutils terminator
sudo packer -S pkgbrowser sublime-text synapse
#build tools
#sudo pacman -S dosfstools xfsprogs
#sudo pacman -S glibc gcc gcc-libs binutils libtool

#repos
sudo pacman -S git git-cola subversion

# system
sudo pacman -S ntfsprogs samba
sudo packer -S ttf-ms-fonts

# internet
sudo packer -S google-chrome-dev google-talkplugin
sudo pacman -S firefox pidgin
sudo pacman -S epiphany epiphany-extensions

# archive utilities
sudo pacman -S p7zip zip unzip unrar

# hardware utilities
sudo pacman -S hwinfo lshw

# utilities
sudo pacman -S gftp gparted pdfedit xchm 
sudo packer -S spacefm deepin-scrot zim

# media 
sudo packer -S radiotray xnoise pithos darktable
sudo pacman -S vlc minitube clementine
sudo pacman -S lame gstreamer0.10-ugly-plugins

# media editors/converters
sudo pacman -S easytag
sudo packer -S gnac

# graphics
sudo pacman -S pinta inkscape gimp avidemux-gtk mirage
sudo packer -S gimp-extras 

##########################      
#   dev apps
##########################
# https://wiki.archlinux.org/index.php/Lighttpd
# if ! grep 'dev' /etc/group; then
#    echo 'adding group: dev'
#    sudo addgroup dev
# fi

# if ! grep '^www-data' /etc/passwd; then
#    echo 'adding user: www-data' 
#     sudo useradd -r www-data
# fi

# sudo usermod -g dev www-data

sudo pacman -S lighttpd
sudo cp /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd.conf.original
# sudo sed -i '/^server\.username/ s/http/www-data/' /etc/lighttpd/lighttpd.conf
# sudo sed -i '/^server\.groupname/ s/http/dev/' /etc/lighttpd/lighttpd.conf
# sudo sed -i 's/^server\.document-root/#&/' /etc/lighttpd/lighttpd.conf
# echo 'server.document-root    = "/srv/www/public_html"' >>  /etc/lighttpd/lighttpd.conf

sudo chown -R ra:dev /var/log/lighttpd
sudo chmod 775 -R /var/log/lighttpd

#rc.d start lighttpd
# echo 'TestMe!' >> /srv/http/index.html

# oracle java 7
sudo pacman -R openjdk6
sudo packer -S jdk jdk-docs ttf-dejavu visualvm


#ruby, sass, bundler
# http://rubygems.org/search?utf8=%E2%9C%93&query=vagrant
sudo pacman -S ruby tk
gem update
gem install bundler sass 

# virtualization
# virtual box
sudo pacman -S virtualbox vagrant
sudo pacman -S virtualbox-modules
sudo gpasswd -a ra vboxusers

# grep vboxusers /etc/group
# # with number from above add to /etc/fstab
# one /proc/bus/usb usbfs auto,busgid=108,busmode=0775,devgid=108,devmode=0664 0 0
# mount -a
# sudo touch /etc/modules-load.d/virtualbox.conf
# tee /etc/modules-load.d/virtualbox.conf <<< "vboxdrv"
# depmod -a
# modprobe vboxdrv
# modprobe -a vboxguest vboxsf vboxvideo
# sudo vi /etc/modules-load.d/virtualbox.conf
# # add these to file
# vboxguest
# vboxsf
# vboxvideo
# install extension pack from oracle
# logout


# gem install apps to $HOME/.gem/ruby so add to PATH
echo 'export GEM_HOME="~/.gem/ruby/1.9.1"' >> ~/.bash_profile
echo 'export PATH="$GEM_HOME/bin:$PATH"' >> .bash_profile

#pacman -S wireshark-gtk tcpflow ghex bluefish

# db
pacman -S sqlite sqliteman mongodb


#misc
sudo pacman -S figlet figlet-fonts toilet
sudo pacman -S  meld  mlocate

##########################      
#   php
##########################
sudo pacman -S fcgi php php-sqlite php-cgi php-fpm php-tidy php-docs
#update /etc/php5/php.ini
# cgi.fix_pathinfo=1
# open_basedir = /srv/http/:/home/:/tmp/:/usr/share/pear/:/another/path:/second/path
# date.timezone = America/New_York
# rc.d start php-fpm
# /etc/rc.d/lighttpd start

