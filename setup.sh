#!/bin/bash

# Setting up the dotfiles
# Basically setting up the symlinks

dotDir=`pwd`
cd
ln -s $dotDir/.bashrc .bashrc
ln -s $dotDir/.vimrc .vimrc
