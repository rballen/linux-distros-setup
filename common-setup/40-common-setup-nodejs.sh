#!/bin/bash
####################################
# Setup node.js with latest version and usual set of modules for a development environment
# http://blog.nodejs.org/2011/04/04/development-environment/
# find latest version here http://nodejs.org/ and update the LATEST_VERSION below
# chmod +x 20-setup-nodejs.sh
# ./20-setup-nodejs.sh
# to uninstall remove referenece in ~.bashrc and delete .npm/  .nvm/
####################################
# By default node checks the following directories for modules:
# <node binary>/../../lib/node
# $HOME/.node_libraries
# $NODE_PATH
#######################################################
LATEST_VERSION="v0.9.2"
#CLOUD9_VERSION="v0.6.19"
#STABLE_VERSION="v0.8.12"
NVM_DIR="$HOME/.nvm"
sudo apt-get install -y build-essential curl checkinstall  make pkg-config 
sudo apt-get install -y openssl libxml2-dev libssl-dev gcc g++  apache2-utils

git clone git://github.com/creationix/nvm.git ~/.nvm
echo ' ' >> ~/.bashrc
echo '##-------------> node.js' >> ~/.bashrc
echo '. '$NVM_DIR'/nvm.sh' >> ~/.bashrc && . $NVM_DIR/nvm.sh
#nvm install $STABLE_VERSION
nvm install $LATEST_VERSION
echo 'export NVM_DIR='$NVM_DIR >> ~/.bashrc
echo '[[ -r '$NVM_DIR'/bash_completion ]] && . '$NVM_DIR'/bash_completion' >> ~/.bashrc
echo '# nvm usage' >> ~/.bashrc
echo '# nvm sync # update the local machine with available versions from server' >> ~/.bashrc
echo '# nvm ls   # displays all available and installed versions' >> ~/.bashrc
echo '# nvm install vx.x.x' >> ~/.bashrc
echo '# nvm alias default vX.X.X   #set default to the latest' >> ~/.bashrc
echo '# nvm [tab][tab]' >> ~/.bashrc
echo '# nvm alias [tab][tab]' >> ~/.bashrc
echo '# nvm use [tab][tab]' >> ~/.bashrc
echo '# nvm uninstall [tab][tab]' >> ~/.bashrc
nvm alias default $LATEST_VERSION
nvm ls 
nvm use default
npm update npm -g
echo 'nvm use default' >> ~/.bashrc
echo 'NODE_PATH=$(npm root -g)' >> ~/.bashrc
echo 'export NODE_PATH=$NODE_PATH' >> ~/.bashrc
               


