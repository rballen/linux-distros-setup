raspberry-pi setup (debian hard float)
===================
my wonderful nodejs, nginx, jekyll & ruby, Sass machine
__assumes:__ the [dotfiles/setup](https://github.com/rballen/dotfiles) has been run      


### modules

- pi-setup.sh - calls all the scripts below
- pi-base.sh - bases apps for daily use
- pi-server.sh - nginx 1.2.2 and php5
- pi-webdir-user.sh - setup my web document root and users
- pi-nodejs.sh -  node.js, yeoman, angularjs and more
- pi-ftp.sh - setup vsftpd and user to ftp to web root
- pi-headless-browser.sh - phantomjs
- common/common-ruby-gems.sh -ruby, compass, sass, jekyll, and more