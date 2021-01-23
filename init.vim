" =---------============================================================= "
" |  INDEX  |                                                           | "
" =---------============================================================= "
"  Searchable Headers
"  = GENERAL
"  = NAV TOOL
"  = MORE REMAPS
"  = PLUGINS
"
" =-----------=========================================================== "
" |  GENERAL  |                                                         | "
" =-----------=========================================================== "
"
syntax on set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
"
"
" =------------========================================================== "
" |  NAV TOOL  |  doom-emacs style navigation                           | "
" =------------========================================================== "
"
" The DOOM key:
let mapleader = " "
"    <leader> = (spacebar)
"          
" [v]imrc 
nnoremap <leader>ve :e $MYVIMRC<cr>
"              + [e]dit
nnoremap <leader>vv :vsplit $MYVIMRC<cr>
"              + [v]ertical
nnoremap <leader>vs :split $MYVIMRC<cr>
"              + [s]plit
nnoremap <leader>vp :source $MYVIMRC<cr>
"              + [p]ull
"
" [w]indow
nnoremap <leader>wh <c-w>h
"              + [h]eft   (left)
nnoremap <leader>wj <c-w>j
"              + [j]own   (down)
nnoremap <leader>wk <c-w>k
"              + [k]p     (up)
nnoremap <leader>wl <c-w>l
"              + [l]ight  (right)
nnoremap <leader>wq <c-w>q
"              + [q]uit
"
" [/]earch (clears search buffer to get rid of highlights)
nnoremap <silent> <leader>/ :let @/=""<cr>
"
"
" =---------------======================================================= "
" |  MORE REMAPS  |                                                     | "
" =---------------======================================================= "
"
" Terminal
tnoremap <Esc> <C-\><C-n>
"
" Stronger H & L
nnoremap H ^
nnoremap L $
nnoremap dH d^
nnoremap dL d$
"
" help files
augroup file_help
	autocmd Filetype help nnoremap <buffer> q <c-w>q
augroup END
"
"
" =-----------=========================================================== "
" |  PLUGINS  |                                                         | "
" =-----------=========================================================== "
call plug#begin('~/AppData/Local/nvim-data/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
"
" Use in 0.5+
" Plug 'neovim/nvim-lspconfig'  Great autocomplete but needs 0.5 to run   
    " h lsp-quickstart
"
call plug#end()
"
source $HOME/AppData/Local/nvim-data/plug-config/coc.vim
source $HOME/AppData/Local/nvim-data/plug-config/fzf.vim
"
"
" [ END ] [ END ] [ END ] [ END ] [ END ] [ END ] [ END ] [ END ] [ END ] "
