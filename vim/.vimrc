set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scwood/vim-hybrid'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'raimondi/delimitmate'

Plugin 'Valloric/YouCompleteMe'

Plugin 'unblevable/quick-scope'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'scrooloose/syntastic'

Plugin 'marijnh/tern_for_vim'

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

set tabstop=2
set shiftwidth=2
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

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*
let g:ctrlp_custom_ignore='node_modules'

nnoremap <leader>gg :YcmCompleter GoToDefinition<CR>

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

set clipboard=unnamed

let g:tmux_navigator_save_on_switch = 2

let g:syntastic_check_on_open=1

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

set mouse=a
