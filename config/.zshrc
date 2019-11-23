#if [ -f ~/.zshrc ]; then
#	source ~/.zshrc
#fi

#set -x

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

#export GOOGLE_APPLICATION_CREDENTIALS="/Users/mikaelvesavuori/Web/automl-demo/machine-learning-4fd08776ba7b.json"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mikaelvesavuori/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mikaelvesavuori/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mikaelvesavuori/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mikaelvesavuori/google-cloud-sdk/completion.zsh.inc'; fi
#eval "$(fnm env --multi)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#sh ~/.dotfiles/macosdefaults.sh