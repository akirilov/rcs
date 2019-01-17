#!/bin/bash

# Install dotfiles
rsync -axuv ./home/ ~/

# Sub-installations
./subinstall-vim-plugins.sh
