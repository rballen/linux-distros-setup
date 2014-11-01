#!/bin/bash
#
# set up the common partions, group/name for my linux home network
# chmod +x setup-common.sh && ./setup-common.sh
#############################

# user & groups
# default ubuntu groups: 4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),112(lpadmin),124(sambashare)
sudo groupadd robuntu -g 1111
sudo groupadd dev -g 1112
sudo usermod -aG robuntu,dev,fuse ra    # added fuse to help connecting with ios stuff
sudo usermod -g dev ra

mkdir -p ~/.local/bin
mkdir -p ~/tmp
mkdir ~p ~/bin
cd ~/bin
git clone git://github.com/huyng/bashmarks.git
cd bashmarks
make install


# # generate ssh keys
# echo "generating ssh keys"
# ssh-keygen -t rsa -C "robert.burch.allen@gmail.com"
# # passphrase like root's; enter for file name and anything else

# # add key to ssh-agent
# ssh-add ~/.ssh/id_rsa

#UUID=A80E38E70E38B064 /mnt/Storage ntfs-3g  defaults,umask=077,uid=1000 0 0

#sudo mkdir -p /media/{data,robuntu}     # my common partions
sudo mkdir -p  /mnt/{elementary,voyager,gnome,test}
sudo cp /etc/fstab /etc/fstab.original


#sudo chown ra:robuntu /media/robuntu/ -R
# partition 'robuntu' is private
#chmod 770 /media/robuntu/
#sudo chown ra:dev /media/data/

# grab my dotfiles
git clone https://github.com/rballen/dotfiles.git

# common resources
ln -s /media/data/home/fonts ~/.fonts
ln -s /media/data/home/icons ~/.icons
ln -s /media/data/home/themes ~/.themes
cp /media/data/home/ssh ~/.ssh -R

ln -s /media/robuntu/.private ~/.private

##############################
# common folders
##############################
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
    rm -rf $HOME/Public
fi
##############################
# sym links to unite partitions
# partition 'resources' -  ntfs to share  with windows else use ext4 - shareable resources: music, videos, books, tuts, pics, etc
# partition 'data'       - ext4 - shareable work and projects: java apps & jars, project files, repos ,etc
# partition 'robuntu'      - ext4 - locked down - personal documents, tax stuff, naked photos, etc
##############################
ln -s /media/data/home/desktop/ ~/Desktop/
ln -s /media/data/home/tmp/ ~/
ln -s /media/data/VMs/ ~/
ln -s /media/data/Downloads ~/
ln -s /media/data/Dropbox ~/
ln -s /media/data/gdrive ~/
ln -s /media/data/Dropbox/Documents ~/
ln -s /media/data/Projects/ ~/
ln -s /media/data/Pictures ~/
ln -s /media/data/Music ~/
ln -s /media/data/Videos ~/
ln -s /media/data/Trippy-Gods ~/
ln -s /media/data/home/linux-distros-setup/Templates/ ~/

ln -s /media/data/home/conky/ ~/.conky
ln -s /media/data/home/conky-weather/ ~/.conky-weather

ln -s /media/data/m2 ~/.m2
# add my wallpaper for easy switching
mkdir -p ~/Pictures/wallpaper
ln -s /media/data/Dropbox/Media/wallpaper/abstract/ ~/Pictures/wallpaper/
ln -s /media/data/Dropbox/Media/wallpaper/backgrounds/ ~/Pictures/backgrounds/
ln -s /media/data/Dropbox/Media/wallpaper/nature/ ~/Pictures/wallpaper/
ln -s /media/data/Dropbox/Media/wallpaper/the-gods/ ~/Pictures/wallpaper/

sudo ln -s /media/data/www/ /var
ln -s /var/www/public_html ~/
ln -s /var/www ~/
sudo chown ra:dev /var/www
# create virtual host directories
# localhost is /var/www/public_html
# all other virtual hosts will be in /var/www/<hostname>/
# sudo ln -s /media/data/www /var
# # change ownership and all subdir/files, for all new file/folders to have group dev wit h sticky bit
# sudo chown -R www-data:dev /var/www && sudo chmod g+s /var/www && sudo chmod -R g+w /var/www



# ln -s /media/data/home/sunflower ~/.config/
# ln -s /media/data/home/config/sublime-text-3/User ~/.config/sublime-text-3/Packages
# cp setup/config/bookmarks.xml ~/.local/share/radiotray/


## shared apps
ln -s /media/data/home/nbi ~/.nbi
ln -s /media/data/home/netbeans ~/.netbeans
ln -s /media/data/home/netbeans-derby ~/.netbeans-derby
ln -s /media/data/home/WebStorm7 ~/.WebStorm7
ln -s /media/data/home/ideaquicknotes ~/.ideaquicknotes
ln -s /media/data/home/IntelliJIdea12 ~/.IntelliJIdea12

# firefox
mkdir -p ~/.mozilla/firefox/firefox.default
cp /media/data/home/mozilla/profiles.ini ~/.mozilla/firefox
ln -s /media/data/home/mozilla/colorzilla/ ~/.mozilla/firefox/firefox.default/colorzilla
ln -s /media/data/home/mozilla/epub/ ~/.mozilla/firefox/firefox.default/epub
ln -s /media/data/home/mozilla/rainbow-easel/ ~/.mozilla/firefox/firefox.default/rainbow-easel
ln -s /media/data/home/mozilla/sessions/ ~/.mozilla/firefox/firefox.default/sessions
ln -s /media/data/home/mozilla/stylish.sqlite ~/.mozilla/firefox/firefox.default/stylish.sqlite

#

# opera sessions
echo 'run opera, close opera and link sessions across distros'
cd ~/.opera
rm -rf sessions
ln -s /media/data/home/opera/sessions .


# startup sound
sudo cp /media/data/Graphics/om-start3.ogg /usr/share/sound


echo 'set root password'
echo 'ubuntu:$ sudo su; passwd'


echo "download and install sublime-text3"
firefox http://www.sublimetext.com/3

echo "install package manager for sublime-text-3"
https://sublime.wbond.net/installation#st3

echo "download chrome and install: sudo dpkg -i google-chrome"
firefox https://www.google.com/intl/en/chrome/browser/thankyou.html?brand=CHFX

echo "download hangouts plugin"
firefox https://www.google.com/tools/dlpage/hangoutplugin

echo " download opera"
firefox http://www.opera.com/

echo "intel graphics driver"
https://01.org/linuxgraphics/downloads

echo "download virtual box "
https://www.virtualbox.org/wiki/Downloads
