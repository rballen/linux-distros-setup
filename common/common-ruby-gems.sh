#!/bin/bash
####################################
# rballen
# installs ruby 1.9.3-p448 via rvm and useful gems for web development - works on ubuntu, arch, raspberry pi
#
# server: jekyll
# webdev: compass sass toolkit compass-recipes compass-colors color-schemer sassafras respond-to modular-scale 
# utilities: jsduck
# frameworks: bootstrap-sass zurb-foundation normalize
#
# chmod +x common-ruby-gems.sh && ./common-ruby-gems.sh
####################################
clear

cd ~/
\curl -L https://get.rvm.io | bash -s stable
echo '# ruby ' >> ~/.bashrc
echo 'source ~/.rvm/scripts/rvm' >> ~/.bashrc
. ~/.bashrc
rvm requirements
type rvm | head -n 1
rvm list known         
rvm install 1.9.3-p448
rvm use 1.9.3-p448
ruby -v
which ruby
rvm info
touch ~/.gemrc
#don't install the docs for the gmes
echo "gem: --no-ri --no-rdoc " >> ~/.gemrc
gem list
gem install jekyll compass sass
gem install toolkit compass-recipes jsduck
gem install bootstrap-sass zurb-foundation
gem install compass-colors color-schemer sassafras
gem install respond-to modular-scale normalize

echo 'PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting' >> ~/.bashrc
echo 'source ~/.rvm/scripts/rvm' >> ~/.bashrc

