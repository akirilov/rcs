#!/bin/bash

# Install dotfiles
rsync -axuv ./home/ ~/

# Sub-installations
./subinstall/install-apt-packages.sh
./subinstall/install-vim-plugins.sh
