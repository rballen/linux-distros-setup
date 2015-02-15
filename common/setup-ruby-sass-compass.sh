#!/bin/bash
# setup ruby and gems like sass, compass, bourbon, etc for webdev
# this more or less works for ubuntu, elementary and arch based distros
# rvm requirements will list other dependancies

if [ -f /etc/debian_version ] ; then
  sudo apt-get install git-core curl build-essential python-software-properties sqlite3
  sudo apt-get install zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev 
elif [ -d /etc/pacman.d ] ; then
  sudo pacman -Sy
  sudo pacman -S git curl base-devel
fi

sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby2.2

# install gems && find them here: https://rubygems.org/
echo "gem: --no-document" >> ~/.gemrc    # dont install documentation
gem install sass compass bourbon
gem install compass-colors color-schemer
gem install respond-to modular-scale
#gem install breakpoint breakpoint-slicer
#gem install cheat snipcheat
gem list            # list installed gemsets

gem update --system && gem update      # update rubygem and installed gems



# cheat git, cheat cheat, cheat bash
# generate html file from sublime-text snippets
# snipcheat generate -d Packages/Rails -o ~/rails_cheatsheet.html

#gem install bitters toolkit compass-recipes
#gem install foundation semantic-ui-sass

# compass create compass-project -r semantic-ui-sass --using semantic-ui
