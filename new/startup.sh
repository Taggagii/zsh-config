#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# mkdir -p $HOME/zsh_plugins
# cd $HOME/zsh_plugins
# [ -d powerlevel10k ] || git clone --depth 1 git@github.com:romkatv/powerlevel10k
# [ -d zsh-syntax-highlighting ] || git clone --depth 1 git@github.com:zsh-users/zsh-syntax-highlighting
# [ -d zsh-completions ] || git clone --depth 1 git@github.com:zsh-users/zsh-completions
# [ -d zsh-autosuggestions ] || git clone --depth 1 git@github.com:zsh-users/zsh-autosuggestions
# [ -d zsh-vi-mode ] || git clone --depth 1 git@github.com:jeffreytse/zsh-vi-mode

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install soem custom plugins into oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

cp "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"
# cp "$SCRIPT_DIR/.p10k.zsh" "$HOME/.p10k.zsh"

