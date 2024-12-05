# Load and initialise completion system
autoload -Uz compinit
compinit

source "$HOME/.config/zsh/aliases_pub"
source "$HOME/.config/zsh/aliases_priv"

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
