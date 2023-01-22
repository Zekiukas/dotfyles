source ~/.config/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle docker
antigen bundle nvm
antigen bundle docker-compose
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle zsh-users/zsh-autosuggestions

antigen apply



eval $(ssh-agent) > /dev/null
source $HOME/.aliases
export SHELL=/bin/zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR="nvim"

eval "$(starship init zsh)"
alias gc="gcc.sh"
alias s="sudo"
alias update="sudo apt update && sudo apt upgrade"


neofetch
