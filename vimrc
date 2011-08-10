" .vimrc
" MacVim Configuration
"
" Mark Reid --- http://mark.reid.name 

" Initialise pathogen to load bundles
" - Most bundles are pulled from the vim-scripts user at GitHub
"   See <http://vim-scripts.org/> for more details
set nocompatible
source ~/.vim/bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()
syntax on
filetype plugin indent on

"===== Editing and Movement =====
" Use , instead of \ for commands
let mapleader = ","

" Don't use Ex mode, use Q for formatting
map Q gq

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Ctrl-E to switch between 2 last buffers
nmap <C-E> :b#<CR>


"===== Module Specific Settings =====
" Syntastic - Automatic syntax checking <https://github.com/vim-scripts/Syntastic>
let g:syntastic_enable_signs=1

" Solarized colour theme <http://ethanschoonover.com/solarized>
set background=dark
colorscheme solarized


