setup for my ubuntu/debian based distros
----------------------------------------

sudo apt-get update    
sudo apt-get upgrade     


## core tools
```sh
sudo apt-get install -y build-essential pkg-config make vim git
sudo apt-get install -y curl python-software-properties
sudo apt-get install -y openssl libssl-dev
sudo apt-get install -y openssh-server libxml2-dev 
sudo apt-get install -y imagemagick synaptic gdebi
```
## fonts
```sh
sudo apt-get install typecatcher font-manager
sudo apt-get install ttf-ancient-fonts fonts-inconsolata fonts-linuxlibertine
sudo apt-get install ttf-mscorefonts-installer
```
## utils
```sh
sudo apt-get install htop hardinfo lshw lshw-gtk lm-sensors hddtemp

sudo apt-add-repository ppa:teejee2008/ppa 
sudo apt-get update
sudo apt-get install conky-all conky-manager

sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo apt-get update
sudo apt-get install y-ppa-manager

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer

sudo add-apt-repository ppa:webupd8team/nemo
sudo apt-get update
sudo apt-get install nemo nemo-fileroller
sudo apt-get install nemo-compare nemo-dropbox nemo-media-columns nemo-pastebin nemo-seahorse nemo-share nemo-emblems nemo-image-converter
sudo ln -s /usr/lib/x86_64-linux-gnu/libpython2.7.so.1 /usr/lib/libpython2.7.so.1
sudo ln -s /usr/lib/libpython2.7.so.1 /usr/lib/libpython2.7.so.1.0
gsettings set org.gnome.desktop.background show-desktop-icons false
```


## accessories

## internet

https://vivaldi.com/#Download
http://www.chromium.org/getting-involved/dev-channel
https://www.mozilla.org/en-US/firefox/developer/?utm_medium=paidsearch&utm_source=google&utm_campaign=dev-sem-q1-2015
http://www.opera.com/

## developer
```sh
sudo echo "fs.inotify.max_user_watches = 524281" >> /etc/sysctl.conf  
sudo apt-get install meld subversion gftp gpic 
sudo apt-get install universalindentgui regexxer pyrenamer
google-chrome http://pad.haroopress.com
  
### ide's
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install brackets

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
```
## media
```sh
sudo apt-get install ubuntu-restricted-extras 
sudo apt-get install radiotray vlc mediainfo 

sudo add-apt-repository ppa:webupd8team/puddletag
sudo apt-get update
sudo apt-get install puddletag

sudo add-apt-repository ppa:pithos/ppa
sudo apt-get update
sudo apt-get install pithos

sudo add-apt-repository ppa:webupd8team/atraci && sudo apt-get update
sudo apt-get install atraci
```
### graphics
```sh
sudo apt-get install autotrace inkscape scrot
google-chrome http://www.xnview.com/en/xnviewmp/
sudo apt-get install darktable mirage
sudo apt-get intall gimp gimp-data-extras gimp-plugin-registry
```
## themes
```sh
sudo add-apt-repository ppa:noobslab/icons
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:numix/ppa
```
