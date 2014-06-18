
VERSION="0.10.28"

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
npm install -g yo gulp
npm install -g traceur
npm install -g generator-karma generator-angular generator-gulp-webapp generator-gulp-ng generator-ng-scaffold
npm install -g slush slush-angular slush-webapp
npm install -g marked feedr
npm install -g autoprefixer jshint less
npm install -g generator-server-configs http-server
npm install -g deployd generator-deployd
echo "finished installing nodejs"

