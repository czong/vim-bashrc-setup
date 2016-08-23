"set t_Co=256
"set term=xterm-256color
syntax enable           " enable syntax processing 
"highlight Normal ctermfg=grey ctermbg=black
"set background=dark
"let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
" 
set tabstop=4           " number of spaces in tab when visual mode
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces  
set fileformat=unix

" UI config
set number              " show line numbers
set showcmd             " show last command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Movement
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

" Leader Shortcuts
let mapleader=","       " leader is comma
" jk is escape 
inoremap jk <esc>       

set shiftwidth=4
set nohlsearch 
set nowrap
let g:SuperTabDefaultCompletionType = "context"
"call pathogen#infect()

set smartindent

" vim switch between splits
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" backspace remove indent,end of line and start of insert
set backspace=indent,eol,start

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'davidhalter/jedi-vim'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline',{'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"enable folding
set foldmethod=indent
set foldlevel=99
"enable folding with the spacebar
nnoremap <space> za
"access to your system clipboard
set clipboard=unnamed

"python with virtualenv support
"py << EOF
"import os
"import sys
"home = os.path.expanduser("~")
"path = home + "/anaconda2/lib/python2.7/site-packages"
"if not path in sys.path:
"    sys.path.insert(0,path)
"EOF

"let g:jedi#auto_initialization=1
"let g:jedi#auto_vim_configuration=1
let g:jedi#popup_on_dot=0
"let g:jedi#popup_select_first=1
"let g:jedi#auto_close_doc=1
"let g:jedi#show_call_signatures=1
"let g:jedi#smart_auto_mappings=1

colorscheme desert
colorscheme solarized

" configure NERDTree
let NERDTreeIgnore=['\.pyc$','\~$'] "hide .pyc files
autocmd vimenter * NERDTree          "open NERDTree automatically when vim starts up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif     "together with previous line, open NERDTree automatically when vim starts up if no files were specified
map <C-n> :NERDTreeToggle<CR>    "toggle the NERDTree window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif   "close vim if the only window left open is NERDTree
