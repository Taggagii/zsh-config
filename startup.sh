#!/bin/bash

cd $HOME/zsh_plugins
git clone --depth 1 git@github.com:zsh-users/zsh-syntax-highlighting
git clone --depth 1 git@github.com:marlonrichert/zsh-autocomplete
git clone --depth 1 git@github.com:romkatv/powerlevel10k

cp .zshrc $HOME/.zshrc




