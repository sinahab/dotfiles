DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # [1]

for dotfile in `ls $DIR/dotfiles.d/*.sh`; do
  source $dotfile
done

