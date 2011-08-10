let $TEXINPUTS=".:../inc::"

" From http://www.charlietanksley.net/philtex/vim-for-latex-part-3/
let g:LatexBox_output_type = 'pdf'
let g:LatexBox_viewer = 'open'
let g:LatexBox_latexmk_options = '-pvc'

map <silent> <LocalLeader>ls :silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>" "%:p" <CR>
let g:LatexBox_cite_pattern = '\c\\\a*cite\a*\*\?\_\s*{'

nmap <LocalLeader>lS :let b:main_tex_file = expand("%:p:h") . "/slides.tex" <CR>
nmap <LocalLeader>lN :let b:main_tex_file = expand("%:p:h") . "/notes.tex" <CR>

imap <buffer> [[ 		\begin{
imap <buffer> ]]		<Plug>LatexCloseCurEnv
imap <buffer> (( 		\eqref{
nmap <buffer> <F5>		<Plug>LatexChangeEnv
vmap <buffer> <F6>		<Plug>LatexWrapSelection
vmap <buffer> <S-F6>	<Plug>LatexEnvWrapSelection

set foldmethod=marker
set foldmarker=(fold),(end)
