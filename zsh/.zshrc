# Load and initialise completion system
autoload -Uz compinit
compinit

PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"

alias ll="ls -la"
alias dev="cd $HOME/Developer"
alias dot="cd $HOME/Developer/Dotfiles"
alias vc="cd $HOME/Developer/nvim"
alias cip="ssh zo04maro@cip1c4.cip.cs.fau.de"
alias cloud="cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs"
alias szsh="source $HOME/Developer/Dotfiles/zsh/.zshrc"

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
source <(fzf --zsh)

# STARSHIP
eval "$(starship init zsh)"

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Conda
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Orbstack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# cargo
source "$HOME/.cargo/env"

