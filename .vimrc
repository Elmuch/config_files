set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set gfn=Ubuntu\ Mono\ derivative\ Powerline\ 11

Plugin 'gmarik/Vundle.vim'

Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'https://github.com/motemen/git-vim.git'
Plugin 'yantze/pt_black'
Plugin 'comments.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-perl/vim-perl'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'bitc/vim-bad-whitespace'

set background=dark

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files

set wildignore=*.o,*~,*.pyc

" => Files, backups and undo

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

set smarttab

 " 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
"
" Linebreak on 500 characters
set lbr
set tw=500
"
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Status line
" """"""""""""""""""""""""""""""
" Always show the status line

set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

set t_Co=256
set nu
syntax on
colorscheme hybrid

set encoding=utf-8
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set mouse=a
if has('gui_running')
  :set guioptions -=T
  :set guioptions -=r
  :set guioptions -=l
endif 
call vundle#end()            " required
filetype plugin indent on    " required
