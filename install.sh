#!/bin/bash

rm -rf ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -r scripts/* bundle/
vim +PluginInstall +qall!
