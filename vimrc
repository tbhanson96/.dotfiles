execute pathogen#infect()
set term=screen-256color
colorscheme gruvbox
set background=dark
syntax on
set autoindent
set expandtab
set number
set tabstop=4
set shiftwidth=4
let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nmap cp :! cat % \| xclip -selection c<Enter>

