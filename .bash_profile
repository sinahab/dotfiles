
# specific bash commands for mac
[ -f ~/.bash_macos.sh ] && source ~/.bash_macos.sh

source /Users/sinahab/dev/dotfiles/dotfiles.sh

export TERM=xterm-256color

export VISUAL=vim
export editor="$VISUAL"

# setup virtualenvwrapper
export WORKON_HOME=~/Envs
[ -f /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh || source ~/anaconda3/bin/virtualenvwrapper.sh

# don't create .pyc files
export PYTHONDONTWRITEBYTECODE=1

