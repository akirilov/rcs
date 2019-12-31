#!/bin/bash

# Install dotfiles
rsync -axuv ./home/ ~/

# Sub-installations
./subinstall/install-apt-core.sh
./subinstall/install-apt-extra.sh
./subinstall/install-vim-plugins.sh
