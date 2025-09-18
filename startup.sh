#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p $HOME/zsh_plugins
cd $HOME/zsh_plugins
[ -d powerlevel10k ] || git clone --depth 1 git@github.com:romkatv/powerlevel10k
[ -d zsh-syntax-highlighting ] || git clone --depth 1 git@github.com:zsh-users/zsh-syntax-highlighting
[ -d zsh-completions ] || git clone --depth 1 git@github.com:zsh-users/zsh-completions
[ -d zsh-autosuggestions ] || git clone --depth 1 git@github.com:zsh-users/zsh-autosuggestions
[ -d zsh-vi-mode ] || git clone --depth 1 git@github.com:jeffreytse/zsh-vi-mode

# this one is a bit buggy when using `pnpm`
# [ -d zsh-autocomplete ] || git clone --depth 1 git@github.com:marlonrichert/zsh-autocomplete

cp "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"
cp "$SCRIPT_DIR/.p10k.zsh" "$HOME/.p10k.zsh"

