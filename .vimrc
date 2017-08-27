set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim.git'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'benmills/vimux.git'
Plugin 'christoomey/vim-tmux-navigator.git'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

" show line numbers by default
set number

set term=xterm-256color
set background=dark
colorscheme jellybeans

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" More natural splits
set splitbelow
set splitright

" Don't automatically start new lines as comment
set formatoptions-=o
set formatoptions-=r
set formatoptions-=c

" Whitespace
set wrap
set textwidth=79
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>

" Fix clipboard madness.
" Check that vim version that has clipboard capability: vim --version | grep clipboard
set clipboard=unnamed

set backspace=indent,eol,start

