#!/bin/sh

NEW_NEOVIM=~/.config/new-nvim
export NEW_NEOVIM

alias nnvm='XDG_DATA_HOME=$NEW_NEOVIM/share XDG_CACHE_HOME=$NEW_NEOVIM XDG_CONFIG_HOME=$NEW_NEOVIM nvim'

nnvm