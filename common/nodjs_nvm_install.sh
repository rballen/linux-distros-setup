
VERSION="0.10.31"

git clone https://github.com/creationix/nvm.git ~/.nvm
. ~/.nvm/nvm.sh
nvm ls-remote
nvm install "v$VERSION"
nvm use "$VERSION"
nvm alias default "$VERSION"

echo '# NVM NODEJS' >> ~/.bashrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo 'source $HOME/.nvm/nvm.sh' >> ~/.bashrc
echo '[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion' >> ~/.bashrc
echo 'PATH=$NVM_BIN:$PATH' >> ~/.bashrc
. ~/.bashrc


echo "install node modules"
# npm install -g npm
npm install -g node-gyp
npm install -g yo karma gulp
npm install -g generator-karma generator-gulp generator-gulp-webapp
npm install -g generator-angular generator-gulp-angular generator-ng-poly generator-mobile
npm install -g generator-polymer-gulp generator-deployd generator-server-configs
npm install -g slush slush-webapp slush-angular
npm install -g traceur vulcanize less jasmine-node
npm install -g autoprefixer jshint feedr kuler2gpl marked
echo "finished installing nodejs"

