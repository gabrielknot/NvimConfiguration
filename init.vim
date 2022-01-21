call plug#begin('~/local/share/nvim/plugged')	
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
  Plug 'preservim/nerdcommenter'

	" Snippets are separated from the engine. Add this if you want them:
	Plug 'honza/vim-snippets'
	Plug 'ervandew/supertab'
	Plug 'kien/ctrlp.vim'
call plug#end()
"ctrlp
"let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"nerdCommander
"" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"utilsnipeds
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-tab>"


""let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
""let g:UltiSnipsUsePythonVersion = 3
""let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
""let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
""let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger="<tab>"
"let g:ycm_key_list_select_completion = ['<C-p>','Down']
"let g:ycm_key_list_previous_completion = ['<C-p>','Up']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsListSnippets="<S-Z>"
let g:UtilSnipsJumpForwardTrigger = "<tab>"
let g:UtilSnipsJumpBackwardTrigger = "<s-tab>"
nnoremap GV :GV!<CR>
nnoremap gv :GV<CR>

"Theme
packadd! dracula
syntax enable
colorscheme dracula
"YAML SYTAX
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set tabstop=2 shiftwidth=2 expandtab
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
nnoremap <leader> h 

nnoremap <leader>md :next *.md<CR>:tab sball<CR>
nnoremap <leader>py :next *.py<CR>:tab sball<CR>

nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>/ A<cr>
inoremap " ""<left>
inoremap < <><left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <c-f> :vsplit .<cr>70<c-w><
"""":find .<cr>:set relativenumber<cr>:set modifiable<cr>70<C-w>-
nnoremap <c-s> :w<cr>
inoremap <c-s> <Esc>:w<cr>

nnoremap <S-b> :earlier 5s<CR>
nnoremap <S-f> :later 5s<CR>
nnoremap <S-t> :args *<CR>:tab all<CR>
nnoremap <S-k> :tabp<CR>:set relativenumber<CR>
nnoremap <S-j> :tabn<CR>:set relativenumber<CR>

nnoremap <S-h> :set relativenumber<CR>

nnoremap <S-Down> :m+<CR>
nnoremap <S-Up> :m-2<CR>
inoremap <S-Up> <Esc>:m-2<CR>i
inoremap <S-Down> <Esc>:m+<CR>i
vnoremap <expr> m <Esc>:'<,'>m-2
vnoremap <expr> m <Esc>:'<,'>m+

nnoremap <S-s> :JCgenerateAccessorSetterGetter<CR>

" JavaComplete Configuration
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

"EasyAlign Configuration
xmap ga <Plug>(EasyAlign)
"Markdown Previwer
let g:python3_host_prog = "/usr/bin/python3"
