#!/bin/sh

NEW_NEOVIM=~/.config/new-nvim

export NEW_NEOVIM

rm -rf "$NEW_NEOVIM"

mkdir -p "$NEW_NEOVIM"/share
mkdir -p "$NEW_NEOVIM"/nvim

stow --restow --target="$NEW_NEOVIM"/nvim .

alias nnvm='XDG_DATA_HOME=$NEW_NEOVIM/share XDG_CACHE_HOME=$NEW_NEOVIM XDG_CONFIG_HOME=$NEW_NEOVIM nvim'
export nnvm