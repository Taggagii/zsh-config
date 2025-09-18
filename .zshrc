# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- NVM ---
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME}/nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# --- PYENV ---
export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$PYENV_ROOT/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Path updates
export PATH="$HOME/bash-scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# ------------------ configuration -----------------------

setopt interactivecomments
HISTSIZE=5000
HISTFILE="$(tag-location-folder-output)/zsh-history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
bindkey '^n' history-search-forward
bindkey '^p' history-search-backward

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# source $HOME/zsh_plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/zsh_plugins/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/zsh_plugins/zsh-completions/zsh-completions.plugin.zsh
source $HOME/zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/zsh_plugins/zsh-vi-mode/zsh-vi-mode.zsh

# disable autocomplete for certain commands
pnpm() {
	disable -f _autocomplete 2>/dev/null
	disable -f _autocomplete.fetch 2>/dev/null

	command pnpm "$@"
	autoload -Uz _autocomplete _autocomplete.fetch
}


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# aliases
gc() {
	git clone git@github.com:$1/$2.git $HOME/Documents/Github/$2
}
alias ls="ls --color"
