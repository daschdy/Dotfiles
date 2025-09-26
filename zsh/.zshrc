# Load and initialise completion system
autoload -Uz compinit
compinit

PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"

alias ll="ls -la"
alias dev="cd $HOME/Developer"
alias dot="cd $HOME/Developer/Dotfiles"
alias vc="cd $HOME/Developer/nvim"
alias szsh="source $HOME/Developer/Dotfiles/zsh/.zshrc"
alias lg="lazygit"

source $HOME/Developer/Dotfiles/zsh/alias_private

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source <(fzf --zsh)

eval "$(starship init zsh)"

export PATH="/opt/homebrew/bin:$PATH"

source "$HOME/.cargo/env"
