#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd $HOME/zsh_plugins
[ -d zsh-syntax-highlighting ] || git clone --depth 1 git@github.com:zsh-users/zsh-syntax-highlighting
[ -d zsh-autocomplete ] || git clone --depth 1 git@github.com:marlonrichert/zsh-autocomplete
[ -d powerlevel10k ] || git clone --depth 1 git@github.com:romkatv/powerlevel10k

cp "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"
cp "$SCRIPT_DIR/.p10k.zsh" "$HOME/.p10k.zsh"

