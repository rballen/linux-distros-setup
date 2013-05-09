#!/bin/bash
# This script sets up the common partions and group/name ids so that my data flows accross all the distros, 
# mac osx and windose
#

##############################
# dotfiles 
##############################
# moved them into their own repo to be like the cool kids


##############################
# user & groups 
##############################
# create consistant groups across all *nix computers in my network
sudo groupadd robuntu -g 1111
sudo groupadd dev -g 1112
sudo usermod -aG robuntu,dev ra
sudo usermod -g dev ra

# create extra account and keep pristine in case i mess something up.
# arch
#useradd -m -g dev -G audio,lp,optical,storage,video,wheel,games,power,scanner ra
#userdel -r username
# ubuntu
# useradd -d /home/test -m ra
# usermod -a -G  adm,dip,cdrom,audio,video,plugdev,games,lpadmin,users,sambashare,input test

##############################
# common partitions
##############################
# groups, users and file structure are consistent allowing same partitions to be used across network, locally, from 7 differenet os's, media pc, laptop, raspberry pi,
# nas, ipad, iphone and friends devices, android tablet... all with minimal impact on my workflow and no loss of data
#
# standard account named 'media' and no passwd
#@todo if ( ubuntu )
#sudo usermod -G adm,cdrom,sudo,dip,plugdev,lpadmin,sambashare media
#elseif( arch )
#sudo usermod -G adm,cdrom,sudo,dip,plugdev,lpadmin,sambashare media

sudo mkdir /media/{stage,data,resources} 
sudo chown ra:robuntu /media/stage/ -R
# partition 'stage' is private
sudo chmod 700 /media/stage/ -R 
sudo chown ra:dev /media/data/ -R
sudo chown ra:dev /media/resources/ -R

# hide o.s. partitions by mounting as noauto,nouser,ro 
# they won't show up in nautilus/thunar/spacefm/unity/gnome/openbox/xfce/whatever
sudo mkdir /mnt/{grub,ubuntu,mint,arch,sabayon,voyager,elementary}

sudo cp /etc/fstab /etc/fstab.original
# cant echo to system files so pipe to sed - uncomment all but current /
echo "#"  | sudo tee -a /etc/fstab
echo "/dev/sda9     /media/stage       ext4     defaults	0	0" | sudo tee -a /etc/fstab
echo "/dev/sda10    /media/data	       ext4     defaults	0	0"  | sudo tee -a /etc/fstab
echo "/dev/sda11    /media/resources   ntfs-3g  defaults	0	0"  | sudo tee -a /etc/fstab
echo "#"  | sudo tee -a /etc/fstab
echo "# hide these" | sudo tee -a /etc/fstab
#echo "/dev/sda1     /media/grub       ext4     noauto,nouser,ro    0	0" | sudo tee -a /etc/fstab
#echo "/dev/sda2    /media/ubuntu      ext4     noauto,nouser,ro    0	0"  | sudo tee -a /etc/fstab
#echo "/dev/sda3    /media/mint        ext4     noauto,nouser,ro	   0	0"  | sudo tee -a /etc/fstab
#echo "/dev/sda5    /media/arch	       ext4    noauto,nouser,ro	   0	0"  | sudo tee -a /etc/fstab
#echo "/dev/sda6    /media/sabayon     ext4     noauto,nouser,ro	   0	0"  | sudo tee -a /etc/fstab
#echo "/dev/sda7    /media/elementary   ext4    noauto,nouser,ro	   0	0"  | sudo tee -a /etc/fstab
#echo "/dev/sda8    /media/voyager      ext4    noauto,nouser,ro	   0	0"  | sudo tee -a /etc/fstab

sudo umount -a

##############################
# common folders
##############################
if [ ! -d "$HOME/bin" ] ; then
   mkdir ~/bin
fi
if [ -d "$HOME/Downloads" ] ; then
    rm -rf $HOME/Downloads
fi
if [ -d "$HOME/Documents" ] ; then
    rm -rf $HOME/Documents
fi
if [ -d "$HOME/Music" ] ; then
    rm -rf $HOME/Music
fi
if [ -d "$HOME/Pictures" ] ; then
    rm -rf $HOME/Pictures
fi
if [ -d "$HOME/Templates" ] ; then
    rm -rf $HOME/Templates
fi
if [ -d "$HOME/Videos" ] ; then
    rm -rf $HOME/Videos
fi
if [ -d "$HOME/Public" ] ; then
    rm -rf $HOME/Videos
fi

##############################
# sym links to unite partitions
# partition 'resources' - ntfs - all my shareable resources - music, videos, books, tuts, pics, etc
# partition 'data' - ext4 - my tools, project files, repos ,etc
# partition 'stage' - ext4 - locked down - personal documents, tax stuff, naked photos, etc
##############################
ln -s /media/data/VMs/ ~/
ln -s /media/data/Downloads ~/
ln -s /media/resources/Dropbox ~/
ln -s /media/resources/Dropbox/Documents ~/
ln -s /media/data/Projects/ ~/
ln -s /media/data/Pictures ~/
ln -s /media/resources/Music ~/
ln -s /media/resources/Videos ~/
ln -s /media/resources/Trippy-Gods ~/Vedas
ln -s /media/data/VMs ~/
ln -s /media/resources/Dropbox/common/reference/ ~/.reference
ln -s /media/data/Projects/github/rballen ~/

# link app settings for same data no matter what distro
ln -s ~/rballen/linux-distro-setup/Templates/ ~/
ln -s /media/data/home/ra/filezilla/ ~/.filezilla
ln -s /media/data/home/ra/fonts/ ~/.fonts
ln -s /media/data/home/ra/themes/ ~/.themes
ln -s /media/data/home/ra/icons/ ~/.icons
ln -s /media/data/home/ra/xmind/ ~/.xmind
ln -s /media/data/m2 ~/.m2
#ln -s /media/data/home/ra/workspace/ ~/

# add my wallpaper for easy switching
mkdir -p ~/Pictures/wallpaper
ln -s /media/resources/Dropbox/Media/wallpaper/abstract/ ~/Pictures/wallpaper/
ln -s /media/resources/Dropbox/Media/wallpaper/linux/ ~/Pictures/wallpaper/
ln -s /media/resources/Dropbox/Media/wallpaper/nature/ ~/Pictures/wallpaper/
ln -s /media/resources/Dropbox/Media/wallpaper/the-gods/ ~/Pictures/wallpaper/


##############################
# webdev 
##############################
# system user: 'www-data' group: 'dev'  to run servers
# it's only me so going back to ra:dev
#sudo adduser --system www-data 
#sudo usermod -aG dev www-data 
#sudo chown www-data:dev /media/data/www -R
chmod g+w /srv/www -R
sudo ln -s /media/data/www /srv/

ln -s /srv/www/public_html ~/
ln -s /srv/www ~/

sudo mkdir -p /var/log/lighttpd
sudo chown -R ra:dev /var/log/lighttpd

##############################
# common apps
##############################
# https://github.com/rupa/z
# wget https://github.com/rupa/z/raw/master/z.sh -O /home/ra/bin/z.sh
git clone git://github.com/huyng/bashmarks.git
make install
echo " " >> ~/.bashrc
echo ". ~/.local/bin/bashmarks.sh"  >> ~/.bashrc
echo " " >> ~/.bashrc
. ~/.local/bin/bashmarks.sh
