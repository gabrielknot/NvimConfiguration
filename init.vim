call plug#begin('~/local/share/nvim/plugged')	
  	Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
	Plug 'Yggdroot/indentLine'
	Plug 'pedrohdz/vim-yaml-folds'
	Plug 'dense-analysis/ale'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'junegunn/vim-easy-align'
	Plug 'Dinduks/vim-java-get-set'
	Plug 'artur-shaik/vim-javacomplete2'
	Plug 'iamcco/mathjax-support-for-mkdp'
	Plug 'iamcco/markdown-preview.vim'
call plug#end()
"YAML SYTAX
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"indentLine Pluggin Configuration
let g:indentLine_char = '⦙'

nnoremap <c-n> :bn<cr>
inoremap <c-n> <Esc>:bn<cr>

set hidden
set relativenumber
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

nnoremap <S-b> :earlier 30s<CR>
nnoremap <S-f> :later 30s<CR>

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
