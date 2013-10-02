#! /bin/bash

# Install Prezto
git clone --recursive https://github.com/murphyrandle/prezto.git "$HOME/.zprezto"
zsh _zsh_bootstrap.sh
chsh -s /bin/zsh

# Install iVim
curl -L https://raw.github.com/murphyrandle/ivim/master/tools/bootstrap.sh | bash

