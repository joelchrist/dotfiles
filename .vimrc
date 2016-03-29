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

"Snippets based on language and current file
Plugin 'valloric/YouCompleteMe'

"Git status in gutter
Plugin 'airblade/vim-gitgutter'

"Autoclosing delimiters
Plugin 'raimondi/delimitmate'

"Filebrowser
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Fuzzy file finding
Plugin 'kien/ctrlp.vim'

"HTML autocomplete
Plugin 'alvan/vim-closetag'

"Use maven in vim
Plugin 'mikelue/vim-maven-plugin'

"Get root directory
Plugin 'airblade/vim-rooter'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
set t_Co=256
syntax on
set background=dark
colorscheme hybrid

"Set line numbers relative to cursor position
set relativenumber number
"Place cursor between to expendad curly brackets on a new line.
let delimitMate_expand_cr = 1

"Map nerdtree to leader d
nmap <leader>d :NERDTreeToggle<CR>

"Map fuzzy finding and custom settings
let g:ctrlp_map = '<leader>t'
set wildignore+=*/build/**
let g:ctrlp_use_caching=0

"Complete html tags in  filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml"

"Easy split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"More natural splitting
set splitbelow
set splitright
