#!/bin/bash
####################################
# rballen
# setup raspberry pi as webserver/dev environment
####################################
clear
# update firmware
sudo rpi-update
# update apps
sudo apt-get update && sudo apt-get upgrade

#set root password
sudo passwd

# utilities for building
sudo apt-get install build-essential curl 
sudo apt-get install libssl-dev binutils libxml2-dev 

#utilities for coding
sudo apt-get install -y vim git subversion

# misc
sudo apt-get install -y htop zip unzip  ca-certificates 

# database: sqlite3, couchdb 
###########################
sudo apt-get install sqlite3 couchdb


# my filesystem runs on a 64G usb drive and is better than the shitty sd card
# swapon -s
# @ra; not working
# echo 'CONF_SWAPSIZE=512' | sudo tee -a /dphys-swapfile
# sudo dphys-swapfile setup