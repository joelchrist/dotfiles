set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
"Hybrid colorscheme
Plugin 'scwood/vim-hybrid'

"Autocomplete
Plugin 'valloric/YouCompleteMe'

"Git status in gutter
Plugin 'airblade/vim-gitgutter'

"Autoclosing delimiters
Plugin 'raimondi/delimitmate'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
set t_Co=256
syntax on
set background=dark
colorscheme hybrid

set relativenumber number
