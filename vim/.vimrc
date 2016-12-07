set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scwood/vim-hybrid'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'raimondi/delimitmate'

Plugin 'Shougo/vimproc'

Plugin 'Quramy/tsuquyomi'

Plugin 'leafgarland/typescript-vim'

Plugin 'icholy/typescript-tools.git'

Plugin 'Valloric/YouCompleteMe'

Plugin 'mattn/emmet-vim'

Plugin 'unblevable/quick-scope'

Plugin 'suan/vim-instant-markdown'

call vundle#end()

filetype plugin indent on

set t_Co=256
syntax on
set background=dark
colorscheme hybrid
set relativenumber number

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set tabstop=4
set shiftwidth=4
set expandtab

set nowrap

if &term =~ '256color'
    set t_ut=
endif

set backspace=indent,eol,start

nmap <leader>d :NERDTreeToggle<CR>

let delimitMate_expand_cr = 1

let g:ctrlp_map = '<leader>t'
let g:ctrlp_use_caching=1
let g:ctrlp_custom_ignore='node_modules'

nnoremap <leader>gg :YcmCompleter GoToDefinition<CR>

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

set clipboard=unnamed
