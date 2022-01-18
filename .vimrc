set encoding=utf-8
set nocompatible
set pythonthreedll=c:\Users\Gage\AppData\Local\Programs\Python\Python310\python310.dll
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'
Plugin 'majutsushi/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'powerline/fonts'
call vundle#end()

filetype plugin indent on

set nu 		" Enable line numbers
syntax on	" Enable syntax highliting

set tabstop=4
set shiftwidth=4
set expandtab

set incsearch
set hlsearch

set termguicolors
colorscheme ayu
let g:airline_theme='ayu_mirage'

" au InsertLeave * colorscheme darkblue
" au InsertEnter * colorscheme molokai 

set termwinsize=12x0
set splitbelow
set mouse=a

autocmd VimEnter * NERDTree
autocmd VimEnter * TagbarToggle
autocmd VimEnter * wincmd p

let NERTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeMinimalMenu = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 31

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <F8> :TagbarToggle<CR>
