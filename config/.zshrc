#if [ -f ~/.zshrc ]; then
#	source ~/.zshrc
#fi

#set -x

export USERNAME=

source ~/.dotfiles/.functions;
source ~/.dotfiles/.alias;
source ~/.dotfiles/.env;

#sh ~/.dotfiles/macosdefaults.sh

# enable the default zsh completions!
autoload -Uz compinit && compinit

#sh ~/.dotfiles/macosdefaults.sh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH;$HOME/.terraform/;$HOME/.vault/"

export AZURE_SUBSCRIPTION_ID=''
export AZURE_TENANT_ID=''
export AZURE_CLIENT_ID=''
export AZURE_CLIENT_SECRET=''

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/$USERNAME/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/$USERNAME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/$USERNAME/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/$USERNAME/google-cloud-sdk/completion.zsh.inc"; fi
#eval "$(fnm env --multi)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USERNAME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh