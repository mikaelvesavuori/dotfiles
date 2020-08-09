export USERNAME=

source ~/.dotfiles/.functions;
source ~/.dotfiles/.alias;
source ~/.dotfiles/.env;

# enable the default zsh completions!
autoload -Uz compinit && compinit

#sh ~/.dotfiles/macosdefaults.sh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH;$HOME/.terraform/;$HOME/.vault/"

export AZURE_SUBSCRIPTION_ID=''
export AZURE_TENANT_ID=''
export AZURE_CLIENT_ID=''
export AZURE_CLIENT_SECRET=''

if [ -f "/Users/$USERNAME/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/$USERNAME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "/Users/$USERNAME/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/$USERNAME/google-cloud-sdk/completion.zsh.inc"; fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USERNAME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $ZSH/oh-my-zsh.sh