#!/bin/bash
# setup ruby and gems like sass, compass, bourbon, etc for webdev
# this more or less works for ubuntu, elementary and arch based distros
# rvm requirements will list other dependancies

if [ -f /etc/debian_version ] ; then
  sudo apt-get install git-core curl build-essential python-software-properties sqlite3 software-properties-common
  sudo apt-get install zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev 
  sudo apt-add-repository -y ppa:brightbox/ruby-ng
  sudo apt-get update
  sudo apt-get install -y ruby2.2 ruby2.2-dev
#elif [ -d /etc/pacman.d ] ; then
#  sudo pacman -Sy
#  sudo pacman -S git curl base-devel
fi

# install gems && find them here: https://rubygems.org/
echo "gem: --no-document" >> ~/.gemrc    # dont install documentation
sudo gem install sass compass bourbon
sudo gem install compass-colors color-schemer
sudo gem install respond-to modular-scale
#gem install breakpoint breakpoint-slicer
#gem install cheat snipcheat
gem list            # list installed gemsets

sudo gem update --system && sudo gem update      # update rubygem and installed gems



# cheat git, cheat cheat, cheat bash
# generate html file from sublime-text snippets
# snipcheat generate -d Packages/Rails -o ~/rails_cheatsheet.html

#gem install bitters toolkit compass-recipes
#gem install foundation semantic-ui-sass

# compass create compass-project -r semantic-ui-sass --using semantic-ui
