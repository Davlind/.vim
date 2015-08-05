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
" Colors and fonts

" Get Molokai to look ok
if !has("gui_running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
  	colorscheme Molokai

    inoremap <Esc>[62~ <C-X><C-E>
    inoremap <Esc>[63~ <C-X><C-Y>
    nnoremap <Esc>[62~ <C-E>
    nnoremap <Esc>[63~ <C-Y>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface

syntax enable                   " enable syntax highlighting
let mapleader = ","             " set a new leader key
let g:mapleader = ","           " set a new leader key
set encoding=utf8               " use utf8 by default
set nowrap                      " don't wrap lines
set ruler												" show current position
set scrolloff=7                 " show 7 lines when scrolling 
set backspace=indent,eol,start  " makes backspace work over new lines
set number                      " show line numbers
set visualbell                  " show visual beep rather audio
set noerrorbells                " stops it from whining ALL the time
set showmatch                   " set show matching parenthesis
set mouse=a                     " enable mouse support in all modes
set history=500                 " history of commands and search history
set undolevels=500              " how many undos that are remembered
set title                       " set title to file edited
set autoread                    " update when file changes outside of vim

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
set expandtab                   " use spaces instead of tabs
set autoindent                  " auto indent new lines
set copyindent                  " when autoindenting, copy previous indent
set smarttab                    " insert tabs on the start of a line 
set shiftround                  " round to multiples of shiftwidth
set shiftwidth=2                " number of spaces to use for autoindenting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backups
set nobackup                    " don't create backup files when overwriting
set noswapfile                  " don't use temporary swap files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings

nnoremap . :

nmap <leader>w :w!<cr>
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
map <leader>n :NERDTree .<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc

" auto reload vimrc when it changes
autocmd! bufwritepost _vimrc source % 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure NERDTree

" Start NERDTree automatically when Vim starts
autocmd vimenter * NERDTree

" Close vim when NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Make NERDTree open in current directory
set autochdir
let NERDTreeChDirMode=2

" let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure Conque plugin

" Conque needs to know where Python is
let g:ConqueTerm_PyExe = 'C:\tools\python2\python.exe'

" Enable color in conque terminal
let g:ConqueTerm_Color = 1

