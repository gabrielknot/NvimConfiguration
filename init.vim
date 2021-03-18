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

nnoremap <c-f> :find .<cr>
nnoremap <c-s> :w<cr>

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" JavaComplete Configuration
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)


