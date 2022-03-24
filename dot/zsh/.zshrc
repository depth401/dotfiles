export PATH="$(brew --prefix)/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/aoba/.sdkman"
[[ -s "/Users/aoba/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/aoba/.sdkman/bin/sdkman-init.sh"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

### starship
eval "$(starship init zsh)"

### Load key bindings
source "$HOME/.zsh/keybindings.zsh"

### Load plugins
source "$HOME/.zsh/plugins.zsh"

### Load alias
source "$HOME/.zsh/alias.zsh"
