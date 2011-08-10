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

" Escape from insert mode using jj
inoremap jj <ESC>

" Make the cursor keys work better with long, visually wrapped lines
nnoremap <up> gk
nnoremap <down> gj
inoremap <up> <C-o>gk
inoremap <down> <C-o>gj
nnoremap j gj
nnoremap k gk

" Make left/right movement at end of line wrap to previous/next line
set whichwrap+=<,>,h,l,[,]


"===== Module Specific Settings =====

"--- Syntastic - Automatic syntax checking <https://github.com/vim-scripts/Syntastic>
let g:syntastic_enable_signs=1

"--- Solarized colour theme <http://ethanschoonover.com/solarized>
set background=dark
colorscheme solarized

"--- NERDCommenter <https://github.com/scrooloose/nerdcommenter>

"--- NERDTree <https://github.com/vim-scripts/The-NERD-tree>
" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>
" ,P to show .vimproject
nmap <silent> <Leader>P :Project<CR>

" Store the bookmarks file in perforce
let NERDTreeBookmarksFile="/Users/mreid/.vim/NERDTreeBookmarks"

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ico$', '\.nav', '\.log', '\.snm', '\.fdb_latexmk', '\.aux', '\.synctex\.gz', '\.toc']

