#!/bin/bash
sudo apt-get install curl
\curl -L https://get.rvm.io | bash -s stable --ignore-dotfiles
source ~/.rvm/scripts/rvm
rvm list known
rvm install 2.0.0 --autolibs=2
echo 'install missing packages'
echo 'then run: rvm install 2.0.0 --autolibs=2'
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
echo '## ruby'
echo ". $HOME/.rvm/scripts/rvm" >> ~/.bashrc
# echo "PATH=$PATH:$HOME/.rvm/bin" >> ~/.bashrc


source ~/.bashrc
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem update --system

gem install sass bourbon neat bitters
gem install compass toolkit compass-recipes
#gem install bundler rake
# https://github.com/team-sass/toolkit
gem install compass-colors color-schemer
gem install foundation semantic-ui-sass
#gem install animate-sass omg-text
gem install respond-to modular-scale
#gem install breakpoint breakpoint-slicer
# cheat git, cheat cheat, cheat bash
gem install cheat snipcheat
# generate html file from sublime-text snippets
# snipcheat generate -d Packages/Rails -o ~/rails_cheatsheet.html
#gem install


# compass create compass-project -r semantic-ui-sass --using semantic-ui
