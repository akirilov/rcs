#!/bin/bash

# Apt sub-install
./subinstall/install-apt-core.sh
./subinstall/install-apt-extra.sh

# Generic sub-install
./subinstall/install-vim-plugins.sh
./subinstall/install-omz.sh

# Install dotfiles
./subinstall/install-dotfiles.sh
