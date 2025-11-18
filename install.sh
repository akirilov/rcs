#!/bin/bash

# Ubuntu sub-install
if uname -a | grep "Ubuntu";
then
  ./subinstall/install-apt-core.sh
fi

# Generic sub-install
./subinstall/install-vim-plugins.sh
./subinstall/install-omz.sh

# Install dotfiles
./subinstall/install-dotfiles.sh
