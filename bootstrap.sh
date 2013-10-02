#! /bin/bash
# Make sure we have the necessary deps:
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   apt-get install -y git vim zsh
elif [[ "$unamestr" == 'Darwin' ]]; then
   brew install git vim zsh
fi

# Install Prezto
git clone --recursive https://github.com/murphyrandle/prezto.git "$HOME/.zprezto"
curl -L https://raw.github.com/murphyrandle/toolbelt/master/_zsh_bootstrap.sh | zsh

# Install iVim
curl -L https://raw.github.com/murphyrandle/ivim/master/tools/bootstrap.sh | bash

