## nodejs, less, sass, yeoman for modern webdev, js dev, mobile dev
#Visit https://github.com/creationix/nvm to find the latest tag version. Today its - v0.17.3

wget https://raw.githubusercontent.com/creationix/nvm/v0.17.3/install.sh
sh install.sh
dos2unix ~/.nvm/nvm.sh
source ~/.bashrc
nvm ls-remote       # lists versions - visit nodejs.org to find the official prod version. Today its v0.10.33
nvm install v0.10.33
nvm use 0.10.33
nvm alias default 0.10.33
which node       # tests all is ok
# nodejs npm packages
npm update -g npm
echo '[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion' >> ~/.bashrc
dos2unix ~/.nvm/bash_completion

echo "install node modules"
# npm install -g npm
npm install -g node-gyp
npm install -g yo protractor karma gulp
npm install -g generator-karma generator-gulp generator-gulp-webapp
npm install -g generator-simple-webapp
npm install -g generator-angular generator-gulp-angular generator-ng-poly generator-mobile
npm install -g generator-polymer-gulp generator-deployd generator-server-configs
npm install -g slush slush-webapp slush-angular
npm install -g traceur vulcanize less jasmine-node
npm install -g autoprefixer jshint feedr kuler2gpl marked
echo "finished installing nodejs"

