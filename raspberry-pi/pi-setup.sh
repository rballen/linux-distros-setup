#!/bin/bash
####################################
# rballen
# turn my raspberry pi into awesome webdev machine
####################################
clear

chmod +x pi-*.sh

./pi-base.sh
./pi-server.sh
./pi-webdir-user.sh
./pi-ftp.sh
./pi-nodejs.sh
./pi-headless-browser.sh
. ../common/common-ruby-gems.sh