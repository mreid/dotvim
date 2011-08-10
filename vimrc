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

if has("mouse")
  set mouse=a
endif

"===== Display =====

hi User1 term=bold,reverse cterm=bold ctermfg=4 ctermbg=2 gui=bold guifg=Blue guibg=#44aa00
set statusline=%<%1*%f%*\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P

" My custom settings
" Set word wrap by default 
set formatoptions+=l
set lbr

" Indenting
set autoindent
set smartindent
set smarttab
set wrap
set tabstop=4
set shiftwidth=4

" Use custom fonts and movement if running as MacVim
if has("gui_running")
    if has("gui_macvim")
		let macvim_hig_shift_movement = 1
		:set transparency=1
		:set guioptions=aAce
		:set guifont="Anonymous Pro":h14,Inconsolata:h14,Monaco:h14		
	endif
endif

set number
" set lines=60 columns=134

"set textwidth=0         " Do not wrap words (insert)
"set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS
set incsearch           " Incremental search
set autowriteall        " Automatically save before commands like :next and :make
set hlsearch            " Highlight search match
set hidden              " enable multiple modified buffers
set nobackup            " do not write backup files
set foldcolumn=0        " columns for folding
set foldmethod=marker
set foldlevel=9
set history=1000
set wildmenu
set ruler
set visualbell

"fixdel

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

"Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

set backupdir=~/.backup,.
set directory=~/.backup,~/tmp,.


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

" map ,y to show the yankring
nmap <leader>y :YRShow<cr>

let bash_is_sh=1
set cinoptions=:0,(s,u0,U1,g0,t0

set modelines=5
set tags=tags;/

"===== Windows =====
" ,o to make current window the only one (i.e., same as <C-W> o)
nmap <Leader>o :only<CR>

"===== Custom Shortcuts =====
",V opens ~/.vimrc 
nmap <Leader>V :e ~/.vimrc<CR>


"===== Module Specific Settings =====
"--- BufTabs <https://github.com/vim-scripts/buftabs>
set laststatus=2
let g:buftabs_in_statusline=1
let g:buftabs_only_basename=1
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

"--- Syntastic - Automatic syntax checking <https://github.com/vim-scripts/Syntastic>
let g:syntastic_enable_signs=1

"--- Solarized colour theme <http://ethanschoonover.com/solarized>
set background=dark
colorscheme solarized

"--- SnipMate <https://github.com/msanders/snipmate.vim>

"--- Markdown <https://github.com/hallison/vim-markdown>

"--- NERDCommenter <https://github.com/scrooloose/nerdcommenter>

"--- NERDTree <https://github.com/vim-scripts/The-NERD-tree>
" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" Store the bookmarks file in perforce
let NERDTreeBookmarksFile="/Users/mreid/.vim/NERDTreeBookmarks"

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ico$', '\.nav', '\.log', '\.snm', '\.fdb_latexmk', '\.aux', '\.synctex\.gz', '\.toc']

"--- UTL
" Open the URL or file under the cursor using UTL
nmap <Leader>u :Utl<CR>

