
# Setup

* Make sure vim supports clipboard:
```
vim --version | grep clipboard

# on linux, might need to install vim-gnome
sudo apt-get install vim-gnome

# on mac, might need to update vim
brew upgrade vim
```

* Install Vundle.

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

* Copy `.vimrc`, `.bash_profile`, `.tmux.conf`, and `.gitignore` from this repo into your home dir.
```
cp .vimrc .bash_profile .tmux.conf .gitignore ~
```

* Open vim, and type :PluginInstall to install all vim plugins.

* Setup the `YouCompleteMe` vim plugin.

```
# compile it
cd ~/.vim/bundle/YouCompleteMe
./install.py

# needed for Javascript code completion
npm install -g typescript
```

*Note*: you need to create a jsconfig.json file in the root folder of your Javascript projects (or a tsconfig.json for Typescript projects) for completion to work correctly.

* Install [`Ag`](https://github.com/ggreer/the_silver_searcher) (the silver searcher) as it's needed by the Ack vim plugin.

* Update your `~/.bash_profile` to source `dotfiles.sh` in this dir.

* If on Linux, source `~/.bash_profile` in your `~/.bashrc`:
```
echo 'source ~/.bash_profile' >> ~/.bashrc
```

* If you have git installed, make it use the global `.gitignore` config.
```
git config --global core.excludesfile ~/.gitignore
```

* Open a new terminal session. You're done.

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


