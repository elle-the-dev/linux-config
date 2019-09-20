#!/bin/bash

DIR=$(pwd);

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi
ln -s "$DIR/.vimrc" ~/.vimrc

if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig.bak
fi
ln -s "$DIR/.gitconfig" ~/.gitconfig

if [ -f ~/.xbindkeysrc ]; then
    mv ~/.xbindkeysrc ~/.xbindkeysrc.bak
fi
ln -s "$DIR/.xbindkeysrc" ~/.xbindkeysrc

if [ -f ~/.xmodmap ]; then
    mv ~/.xmodmap ~/.xmodmap.bak
fi
ln -s "$DIR/.xmodmap" ~/.xmodmap

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi
ln -s "$DIR/.zshrc" ~/.zshrc

if [ -f ~/.xinitrc ]; then
    mv ~/.xinitrc ~/.xinitrc.bak
fi
ln -s "$DIR/.xinitrc" ~/.xinitrc

if [ -f ~/.config/nvim/init.vim ]; then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
fi
if [ -d ~/.config/nvim ]; then
    ln -s "$DIR/.config/nvim/init.vim" ~/init.vim
fi

if [ -f ~/.config/kitty/kitty.conf ]; then
    mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.bak
fi
if [ -d ~/.config/kitty ]; then
    ln -s "$DIR/.config/kitty/kitty.conf" ~/kitty.conf
fi

if [ -f ~/.config/awesome/rc.lua ]; then
    mv ~/.config/awesome/rc.lua ~/.config/awesome/rc.lua.bak
fi
if [ -d ~/.config/awesome ]; then
    ln -s "$DIR/.config/awesome/rc.lua" ~/rc.lua
fi