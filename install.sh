#!/bin/bash

# Install dotfiles
rsync -axuv ./home/ ~/

# Sub-installations
./subinstall/install-vim-plugins.sh
