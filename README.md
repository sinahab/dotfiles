
# Setup

1. Make sure vim supports clipboard:
```
vim --version | grep clipboard

# on linux, might need to install vim-gnome
sudo apt-get install vim-gnome

# on mac, might need to update vim
brew upgrade vim
```

2. Install Vundle.

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Copy `.vimrc`, `.bash_profile`, `.tmux.conf`, and `.gitignore` from this repo into your home dir.
```
cp .vimrc .bash_profile .tmux.conf .gitignore ~
```

4. Open vim, and type :PluginInstall to install all vim plugins.

5. Update your `~/.bash_profile` to source `dotfiles.sh` in this dir.

6. If on Linux, source `~/.bash_profile` in your `~/.bashrc`:
```
echo 'source ~/.bash_profile' >> ~/.bashrc
```

7. If you have git installed, make it use the global `.gitignore` config.
```
git config --global core.excludesfile ~/.gitignore
```

8. Open a new terminal session. You're done.

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


