linux-distros-setup
===================
I'm a distro junkie and multi boot into 4-5 OS's on my laptop and 4 on my desktop plus numerous vitual machines and a raspberry pi. These scripts along with my dotfiles setup allow me to get a distro up and running with minimal impact to my workflow and no loss of data. I used to call this 'the idiots guide to multibooting' cause it was a long hard road to get here. 

__assumes the [dotfiles/setup](https://github.com/rballen/dotfiles) has been run__

## arch
setup for arch based distros
-  arch-base.sh

    
## common
setup distro independant apps like ruby, gems, nodejs, etc
- common-ruby.sh
- common-nodejs.sh **use pi-nodejs for raspberry pi**
- common-webdir-user

### raspberry-pi(debian hard float)
my wonderful nodejs, nginx, jekyll & ruby, Sass machine

- pi-setup.sh - calls all the scripts below
- pi-base.sh - bases apps for daily use
- pi-server.sh - nginx 1.2.2 and php5
- pi-webdir-user.sh - setup my web document root and users
- pi-nodejs.sh -  node.js, yeoman, angularjs and more
- pi-ftp.sh - setup vsftpd and user to ftp to web root
- pi-headless-browser.sh - phantomjs on the pi
- common/common-ruby-gems.sh -ruby, compass, sass, jekyll, and more

## scripts
various scripts - mostly from other  good developers

## ubuntu
setup for debian/ubuntu family
    -   ubuntu-base.sh 


### todo
- [ ] give brief summary of partitions and linking for data and resources
- [ ] add conky
- [ ] finish consoladating scripts and mark ready for use
