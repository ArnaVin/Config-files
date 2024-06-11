" NVIM Config file --- Vin

set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

" Plugins with Vim-Plug
call plug#begin()

Plug 'https://github.com/preservim/nerdtree'      " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Airline bottom bar
Plug 'https://github.com/ryanoasis/vim-devicons'  " Developer Icons
Plug 'jiangmiao/auto-pairs'                       " Quote and bracket completion
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }  " Fuzzy search

"Python autocomplete with deoplete and jedi
Plug 'deoplete-plugins/deoplete-jedi'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = 'C:\Users\tayaa\AppData\Local\Programs\Python\Python311\python.EXE'
let g:NERDTreeWinPos = "right"
set encoding=UTF-8

call plug#end()

" Keymaps for common nerdtree cmds
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
