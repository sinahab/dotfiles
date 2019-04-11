set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim.git'
Plugin 'benmills/vimux.git'
Plugin 'christoomey/vim-tmux-navigator.git'
Plugin 'tomlion/vim-solidity'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'neovimhaskell/haskell-vim.git'
Plugin 'leafgarland/typescript-vim.git'
" Plugin 'vim-syntastic/syntastic'
Plugin 'lervag/vimtex'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Valloric/YouCompleteMe'
Plugin 'elzr/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'

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
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" haskell-vim
let g:haskell_indent_disable = 1

" More natural splits
set splitbelow
set splitright

" Don't automatically start new lines as comment
set formatoptions-=o
set formatoptions-=r
set formatoptions-=c

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set wildignore+=*/node_modules/*

set hlsearch
set incsearch

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>

" Fix clipboard madness.
" Check that vim version that has clipboard capability: vim --version | grep clipboard
set clipboard=unnamed

set backspace=indent,eol,start

" elzr/vim-json 
" turn off concealing
let g:vim_json_syntax_conceal = 0

" Valloric/YouCompleteMe
" set jj as shortcut for GoTo definition of the word under cursor.
nmap jj :YcmCompleter GoTo<CR>

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0

" Don't show YCM's preview window
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" YCM: can use either Ctrl-Y or Enter to accept a suggestion.
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

" emmet-vim
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" use ag (the silver searcher) for ack 
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
