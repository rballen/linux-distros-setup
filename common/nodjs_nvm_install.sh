## nodejs, less, sass, yeoman for modern webdev, js dev, mobile dev
#Visit https://github.com/creationix/nvm to find the latest tag version. Today its - v0.17.3

curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | bash
echo '# NVM NODEJS' >> ~.bashrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~.bashrc
echo 'source $HOME/.nvm/nvm.sh' >> ~.bashrc
echo '[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion' >> ~.bashrc
echo 'PATH=$NVM_BIN:$PATH' >> ~.bashrc

source ~/.bashrc
nvm ls-remote       # lists versions - visit nodejs.org to find the official prod version. Today its v0.10.33
nvm install v0.12.2
nvm use 0.12.2
nvm alias default 0.12.2
which node       # tests all is ok
# nodejs npm packages
npm update -g npm

echo "install node modules"
# npm install -g npm
npm install -g node-gyp
npm install -g bower grunt-cli gulp yo
npm install -g generator-karma generator-gulp generator-gulp-webapp
npm install -g generator-simple-webapp
npm install -g generator-angular generator-gulp-angular generator-ng-poly generator-mobile
npm install -g generator-polymer-gulp generator-deployd generator-server-configs
npm install -g slush slush-webapp slush-angular
npm install -g traceur vulcanize less jasmine-node
npm install -g autoprefixer jshint feedr kuler2gpl marked
echo "finished installing nodejs"

