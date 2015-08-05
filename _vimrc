" set nocompatible             " shouldn't be needed on user config

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install bundles using vundle. Run using :BundleInstall
" You need to install vundle manually before this works.

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'PProvost/vim-ps1'
Bundle 'tomasr/molokai'
Bundle 'mattn/webapi-vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'cd01/poshcomplete-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'Davlind/conque'

filetype plugin indent on      " required!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure NERDTree

" Start NERDTree automatically when Vim starts
autocmd vimenter * NERDTree

" Close vim when NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Make NERDTree open in current directory
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Conque plugin

" Conque needs to know where Python is
let g:ConqueTerm_PyExe = 'C:\tools\python2\python.exe'

" Enable color in conque terminal
let g:ConqueTerm_Color = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and fonts

" Get Molokai to look ok
if !has("gui_running")
	set term=xterm
	set t_Co=256
	let &t_AB="\e[48;5;%dm"
	let &t_AF="\e[38;5;%dm"
	colorscheme Molokai
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface

syntax enable                   " enable syntax highlighting
let mapleader=","               " set a new leader key
set nowrap                      " don't wrap lines
set backspace=indent,eol,start  " makes backspace work over new lines
set number                      " show line numbers
set visualbell                  " show visual beep rather audio
set noerrorbells                " stops it from whining ALL the time
set showmatch                   " set show matching parenthesis
set mouse=a                     " enable mouse support in all modes
set history=500                 " history of commands and search history
set undolevels=1000             " how many undos that are remembered
set title                       " set title to file edited

" ignore the following when expanding for files
set wildignore=*.swp,*.bak,*.pyc,*.class

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search

set ignorecase                  " ignore case when searching
set smartcase                   " dont ignore case when searching for capitals
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs and indents

set tabstop=2                   " a tab equals x spaces
set autoindent                  " auto indent new lines
set copyindent                  " when autoindenting, copy previous indent
set smarttab                    " insert tabs on the start of a line 
set shiftround                  " round to multiples of shiftwidth
set shiftwidth=2                " number of spaces to use for autoindenting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backups

set nobackup                    " don't create backup files when overwriting
set noswapfile                  " don't use temporary swap files

nnoremap . :
