#!/bin/bash
sudo apt-get install git-core curl build-essential python-software-properties sqlite3
sudo apt-get install zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev 
\curl -L https://get.rvm.io | bash -s stable --ignore-dotfiles
source ~/.rvm/scripts/rvm
rvm list known
rvm install 2.1.1 --autolibs=2
echo 'install missing packages'
echo 'then run: rvm install 2.1.1 --autolibs=2'
echo '## ruby'
echo ". $HOME/.rvm/scripts/rvm" >> ~/.bashrc

source ~/.bashrc
echo "gem: --no-ri --no-rdoc" >> ~/.gemrc
echo "gem: --user-install" >> ~/.gemrc
gem update --system

gem install sass compass bourbon  
gem install respond-to modular-scale
gem install breakpoint breakpoint-slicer
gem install compass-colors color-schemer

gem install cheat snipcheat
# cheat git, cheat cheat, cheat bash
# generate html file from sublime-text snippets
# snipcheat generate -d Packages/Rails -o ~/rails_cheatsheet.html

#gem install bitters toolkit compass-recipes
#gem install foundation semantic-ui-sass

# compass create compass-project -r semantic-ui-sass --using semantic-ui
