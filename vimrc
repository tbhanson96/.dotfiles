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
"let g:airline_powerline_fonts = 1
"Open and close vimrc file
nnoremap <leader>ev :vsplit ~/.dotfiles/vimrc<cr>
nnoremap <leader>sv :source ~/.dotfiles/vimrc<cr>
nmap cp :! cat % \| xclip -selection c<Enter>
nnoremap <leader>n :NERDTreeToggle<cr>
"Switch between vim tabs
nnoremap <leader>a <C-W><C-W>

