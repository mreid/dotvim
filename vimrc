" .vimrc
" MacVim Configuration
"
" Mark Reid --- http://mark.reid.name 

" Initialise pathogen to load bundles
" - Most bundles are pulled from the vim-scripts user at GitHub
"   See <http://vim-scripts.org/> for more details
set nocompatible
source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()
syntax on
filetype plugin indent on

" syntastic
let g:syntastic_enable_signs=1

