#! /bin/bash
# Make sure we have the necessary deps:
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   sudo apt-get install -y git vim
elif [[ "$unamestr" == 'Darwin' ]]; then
   brew install git vim
fi

# Install Prezto
git clone --recursive https://github.com/murphyrandle/prezto.git "$HOME/.zprezto"
zsh ./_zsh_bootstrap.sh
chsh -s /bin/zsh

# Install iVim
curl -L https://raw.github.com/murphyrandle/ivim/master/tools/bootstrap.sh | bash

