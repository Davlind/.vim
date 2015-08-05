set nocompatible               " turns off legacy vi mode
filetype off                   " required!

" Install bundles
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

" Enable line numbers
set number

" set shell=powershell
" set shellcmdflag=-command

" Enable Nerd Tree by default
autocmd vimenter * NERDTree

" Close vim when nerd tree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Fix syntax stuff
set nobackup
syntax enable
set ignorecase
set smartcase

" Get Molokai to look ok
if !has("gui_running")
	set term=xterm
	set t_Co=256
	let &t_AB="\e[48;5;%dm"
	let &t_AF="\e[38;5;%dm"
	colorscheme Molokai
endif

" Make NerdTree opn in current directory
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

" Conque needs to know where Python is
let g:ConqueTerm_PyExe = 'C:\tools\python2\python.exe'

set hidden " hide buffer instead of closing
set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

set mouse=a

" remap : to . to avoid keystrokes
nnoremap ; . 

let g:ConqueTerm_Color = 1
