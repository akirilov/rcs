#!/bin/bash

# Sub-installations
if [ `uname` = "Linux" ];
then
  ./subinstall/install-apt-core.sh
  ./subinstall/install-apt-extra.sh
fi
./subinstall/install-vim-plugins.sh
./subinstall/install-omz.sh

# Install dotfiles
rsync -axuv ./home/ ~/
