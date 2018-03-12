#!/bin/bash
####################################
# Installs nvm, nodejs and packages. Find the latest versions from below links
# https://nodejs.org/en/
# https://github.com/creationix/nvm
####################################

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash


nvm install lts/carbon  # installs node 8
. ~/.profile
nvm use 8.10.0
nvm alias default 8.10.0
sudo ln -s /home/ra/.nvm/versions/node/v8.10.0/bin/node /usr/bin
npm set progress=false
npm config set python /usr/bin/python2.7 -g

npm install -g node-gyp
npm install -g yo
# npm i -g @storybook/cli

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install --no-install-recommends yarn
# add to .bash_aliases alias nodejs=node

yarn global add generator-jhipster


### ever changing npm installs as reference 

# npm install -g bower karma yo slush
# npm install -g gulp
# npm install -g typescript marked
# npm install -g node-sass less 
# npm install -g @angular/cli@latest
# npm install -g generator-jhipster
# npm install -g csslint eslint semistandard-format semistandard


# npm install -g eslint-config-airbnb-base eslint-plugin-import
# npm install -g generator-fountain-webapp generator-server-configs generator-webapp
# npm install -g jhipster jshint karma less
# npm install -g marked node-sass
# npm install -g protractor
# npm install -g semistandard semistandard-format slush

# npm i -g typings@1.3.3 typescript@2.0.2 ts-node@1.3.0
# npm install -g generator-karma generator-gulp
# npm install -g generator-simple-webapp
# npm install -g generator-gulp-angular generator-ng-poly generator-mobile
# npm install -g generator-deployd generator-server-configs
# npm install -g generator-tldr-static generator-yeogurt
# npm install -g slush-webapp slush-angular-gulp
# npm install -g traceur vulcanize jasmine-node
# npm install -g autoprefixer jshint feedr kuler2gpl 

# phantomjs 2.0.0
# https://github.com/bprodoehl/phantomjs/releases/

