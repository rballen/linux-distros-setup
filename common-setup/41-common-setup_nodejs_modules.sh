#!/bin/bash
####################################
# setup-nodejs-modules.sh
# chmod +x setup-nodejs-modules.sh && ./setup-nodejs-modules.sh
# setup global modules used in developement
####################################
clear
# essential global modulles
npm install -g express coffee-script jslint less
npm install -g node-dev node-inspector
npm install -g marked jsontool 
npm install -g testacular

# needed by appjs
npm install -g node-gyp
# needed for twitter bootstrap
npm install -g recess connect uglify-js jshint 
npm install -g ngneer
npm install -g grunt
npm install -g grunt-angular-seed
npm install angular -g
npm install -g brunch
# brunch new appname | brunch build | brunch watch --server
# needed for logio.org
#npm install -g socket.io socket.io-client forever connect.js underscore.js 

# awesome phantom.js
wget -O ~/bin/phantomjs-1.7.0-linux-x86_64.tar.bz2 http://phantomjs.googlecode.com/files/phantomjs-1.7.0-linux-x86_64.tar.bz2
cd ~/bin
tar xjf phantomjs-1.7.0-linux-x86_64.tar.bz2
rm phantomjs-1.7.0-linux-x86_64.tar.bz2
cp ~/bin/phantomjs-1.7.0-linux-x86_64/bin/phantomjs ~/bin

# base64 all images referenced in css file
npm install -g enhance-css
echo 'verify installation of modules'
node --version
npm --version

npm install -g docpad

npm install --save docpad-plugin-highlightjs
npm install --save docpad-plugin-cleanurls
npm install --save docpad-plugin-haml
npm install --save docpad-plugin-related
npm install --save docpad-plugin-live-reload
npm install --save docpad-plugin-feedr
npm install --save docpad-plugin-coffeekup
npm install --save docpad-plugin-gist
npm install --save docpad-plugin-uglify
npm install --save docpad-plugin-markdown
npm install --save docpad-plugin-stylus
npm install --save docpad-plugin-sass
npm install --save docpad-plugin-partials
npm install --save docpad-plugin-marked
npm install --save docpad-plugin-jade
npm install --save docpad-plugin-less
npm install --save docpad-plugin-html2coffee
npm install --save docpad-plugin-handlebars
npm install --save docpad-plugin-eco
npm install --save docpad-plugin-handlebars
npm install --save docpad-plugin-coffeescript
npm install --save docpad-plugin-cachr
npm install --save docpad-plugin-associatedfiles


npm install -g docpad
git clone http://github.com/georgeOsdDev/slidepad.git
cd slidepad
npm install


echo "validate for yeoman"
echo "curl -L get.yeoman.io | bash"
echo "once yeoman validate run:" 
echo "npm install -g yeoman"
