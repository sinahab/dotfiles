
source ~/Dropbox/dev/dotfiles/dotfiles.sh

export TERM=xterm-256color

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="/Users/sinahab/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# don't create .pyc files
export PYTHONDONTWRITEBYTECODE=1

# add anaconda3 to PATH
export PATH="/Users/sinahab/anaconda3/bin:$PATH"
source /Users/sinahab/anaconda3/bin/virtualenvwrapper.sh
export WORKON_HOME=~/Envs

# add anaconda2 and related dirs to PATH
# export PATH="/Users/sinahab/anaconda2/bin:$PATH"

export PATH="/usr/local/opt/openssl/bin:$PATH"

# source /usr/local/opt/autoenv/activate.sh

# needed for brew rabbitmq
export PATH="$PATH:/usr/local/sbin"

export VISUAL=vim
export editor="$VISUAL"
