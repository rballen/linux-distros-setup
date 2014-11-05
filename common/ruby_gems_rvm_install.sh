#!/bin/bash
sudo apt-get install curl
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
