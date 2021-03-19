call plug#begin('~/local/share/nvim/plugged')	
  	Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
	Plug 'junegunn/vim-easy-align'
  	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'Dinduks/vim-java-get-set'
	Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

set hidden
set relativenumber
set inccommand=split


let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <leader>/ A<cr>

nnoremap <c-f> :find .<cr>:set relativenumber<cr>
nnoremap <c-s> :w<cr>
inoremap <c-s> <Esc>:w<cr>

nnoremap <S-b> :earlier 30s<CR>
nnoremap <S-f> :later 30s<CR>

nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" JavaComplete Configuration
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)


