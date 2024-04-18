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

" Python autocomplete with deoplete and jedi
Plug 'deoplete-plugins/deoplete-jedi'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = 'C:\Users\tayaa\AppData\Local\Programs\Python\Python311\python.EXE' " Find python path using :checkhealth
let g:NERDTreeWinPos = "right"
set encoding=UTF-8

call plug#end()

" Keymaps for common nerdtree cmds
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
