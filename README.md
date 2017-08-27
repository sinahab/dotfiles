
# Setup

1. Install Vundle.

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

2. Copy `.vimrc`, `.bash_profile`, and `.tmux.conf` from this repo into your home dir.
```
cp .vimrc .bash_profile .tmux.conf ~
```

3. Open vim, and type :PluginInstall to install all vim plugins.

4. Update your `~/.bash_profile` to source `dotfiles.sh` in this dir.

5. Open a new terminal session. You're done.

# Vim shortcuts

- NERDTree:
Ctrl-n: toggle NERDTree open/close.

- Fuzzy find:
Ctrl-p

# Tmux shortcuts

- bind is: `Ctrl-a`
- Leader is `\`
- To go into copy mode (this is configured with vi mode): `bind Enter`
- To copy after in copy mode: `v`
- To then paste what's in the buffer: `bind p`


