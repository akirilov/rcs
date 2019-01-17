#!/bin/bash

# Pathogen
if [ ! -d ~/.vim/autoload ]; then
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  echo "Pathogen installed!"
else
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  echo "Pathogen updated!"
fi

# NerdTree
if [ ! -d ~/.vim/bundle/nerdtree ]; then
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
  echo "Nerdtree installed!"
else
  pushd ~/.vim/bundle/nerdtree
  git pull
  echo "Nerdtree updated!"
  popd
fi

# UndoTree
if [ ! -d ~/.vim/bundle/undotree ]; then
  git clone https://github.com/mbbill/undotree.git ~/.vim/bundle/undotree
  echo "Undotree updated!"
else
  pushd ~/.vim/bundle/undotree
  git pull
  echo "Undotree updated!"
  popd
fi
