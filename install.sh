#!/bin/bash

# Sub-installations
./subinstall/install-apt-core.sh
./subinstall/install-apt-extra.sh
./subinstall/install-vim-plugins.sh
./subinstall/install-omz.sh

# Install dotfiles
rsync -axuv ./home/ ~/
