#!/bin/bash
####################################
# rballen
# install nodejs and useful packages
####################################
clear

# i'm the only use on my pi and nvm isn't implemented and thus /opt/node -
sudo mkdir /opt/node
sudo chown -R ra:dev /opt/node
cd /opt/node

# latest stable binary from http://nodejs.org/dist/
wget http://nodejs.org/dist/v0.11.3/node-v0.11.3-linux-arm-pi.tar.gz
tar xvzf node-v0.11.3-linux-arm-pi.tar.gz
rm node-v0.11.3-linux-arm-pi.tar.gz
mv node-v0.11.3-linux-arm-pi/* .
rm -rf node-v0.11.3-linux-arm-pi

echo 'NODE="/opt/node"' >> ~/.bashrc
echo 'export NODE_PATH="/opt/node/lib/node_modules"' >> ~/.bashrc
echo 'PATH="$PATH:$NODE/bin:$NODE/lib/node_modules”' >> ~/.bashrc

npm install -g yo
npm install -g generator-webapp generator-angular generator-foundation
npm install -g enhance-css 
npm install --save feedr
npm install -g express coffee-script jslint less
npm install -g marked jsontool
npm install -g recess connect uglify-js jshint hogan.js