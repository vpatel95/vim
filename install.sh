#!/bin/bash

rm -rf ~/.vim/bundle
cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -r scripts/* bundle/
vim +PluginInstall +qall!
