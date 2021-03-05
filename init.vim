" curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \
" https://raw.githubuser.content.com/junegunn/vim-plug/master/plug.vim

syntax on

set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=10
set noshowmode
set backspace=indent,eol,start
set signcolumn=yes
set ruler
set colorcolumn=80
set cmdheight=2
set updatetime=50
set shortmess+=c 

highlight ColorColumn ctermbg=0 guibg=lightgrey

" plugin installations
call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sbdchd/neoformat'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'

" some language servers aren't working properly
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox
set background=dark


if executable('rg')
    let g:rg_derive_root='true'
endif

let g:crtlp_user_command_ = ['.git/', 'git --git-dir=$s/.git ls-files -oc --exlclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner=0
let g_netrw_winsize=25

let g:ctrlp_use_caching=0

" hotkey map
"
" move between panes
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" TREES
" show history changes
nnoremap <leader>u :UndotreeShow<CR>
" show directory tree
nnoremap <leader>t :NERDTreeFocus<CR>

" window split
nnoremap <leader>pv :wincmd V<bar> :Ex <bar> :vertical resize 30<CR>

" repgrep
nnoremap <leader>ps :Rg<SPACE>

" lua telescope not working
"nnoremap <Leader>ps :lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep For > ")})<CR>

" resize active pane
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" YCM not working due to vim not being compiled with python3+
nnoremap <silent> <Leader>gd :YcmCompleter Goto<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR> 
