call plug#begin('~/local/share/nvim/plugged')	
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'Yggdroot/indentLine'
	Plug 'pedrohdz/vim-yaml-folds'
	Plug 'dense-analysis/ale'
	Plug 'junegunn/vim-easy-align'
	Plug 'Dinduks/vim-java-get-set'
	Plug 'artur-shaik/vim-javacomplete2'
	Plug 'iamcco/mathjax-support-for-mkdp'
	Plug 'dracula/vim', { 'as': 'dracula' }
	" Track the engine.
	Plug 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
	Plug 'honza/vim-snippets'
	Plug 'ervandew/supertab'
	Plug 'Valloric/YouCompleteMe'
call plug#end()
"utilsnipeds
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger="<tab>"
"let g:ycm_key_list_select_completion = ['<C-p>','Down']
"let g:ycm_key_list_previous_completion = ['<C-p>','Up']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsListSnippets="<S-Z>"
let g:UtilSnipsJumpForwardTrigger = "<tab>"
let g:UtilSnipsJumpBackwardTrigger = "<s-tab>"

"Theme
packadd! dracula
syntax enable
colorscheme dracula
"YAML SYTAX
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"indentLine Pluggin Configuration
let g:indentLine_char = '|'
"let g:indentLine_char = '⦙'

nnoremap <c-C>"+Y<cr>

nnoremap <c-n> :bn<cr>
inoremap <c-n> <Esc>:bn<cr>

highlight Normal ctermfg=grey ctermbg=black
set hidden
set relativenumber
set nu!
set inccommand=split


let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <leader>/ A<cr>
inoremap " ""<left>
inoremap < <><left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <c-f> :find .<cr>:set relativenumber<cr>:set modifiable<cr>
nnoremap <c-s> :w<cr>
inoremap <c-s> <Esc>:w<cr>

nnoremap <S-b> :earlier 5s<CR>
nnoremap <S-f> :later 5s>
nnoremap <S-t> :args *<CR>:tab all<CR>
nnoremap <S-k> :tabp<CR>:set relativenumber<CR>
nnoremap <S-j> :tabn<CR>:set relativenumber<CR>

nnoremap <S-h> :set relativenumber<CR>

nnoremap <S-Down> :m+<CR>
nnoremap <S-Up> :m-2<CR>
inoremap <S-Up> <Esc>:m-2<CR>i
inoremap <S-Down> <Esc>:m+<CR>i

nnoremap <S-s> :JCgenerateAccessorSetterGetter<CR>
" JavaComplete Configuration
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

"EasyAlign Configuration
xmap ga <Plug>(EasyAlign)
"Markdown Previwer
let g:python3_host_prog = "/usr/bin/python3"
