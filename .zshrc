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

# --- Local bin ---
export PATH="$HOME/.local/bin:$PATH"

# ------------------ configuration -----------------------

setopt interactivecomments

# source $HOME/zsh_plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/zsh_plugins/powerlevel10k/powerlevel10k.zsh-theme

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
alias ls="ls -lath --color"
gc() {
	git clone git@github.com:$1/$2.git $HOME/Documents/Github/$2
}
