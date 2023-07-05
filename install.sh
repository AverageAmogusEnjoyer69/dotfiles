#!/bin/bash

#the -p flag "hides" the error which is usually returned if the directory already exists

mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"

#if you dont use -s, you create an hard link. 
#f forces the creation, removing possible existing files with same name or smt

ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

rm -rf "$HOME/.config/X11"

ln -s "$HOME/dotfiles/X11" "$HOME/.config"
