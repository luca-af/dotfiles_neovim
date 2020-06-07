"Plugin Section"
call plug#begin('$HOME/.local/share/nvim/plugged/')

"Language support"

Plug 'fatih/vim-go'
Plug 'hashivim/vim-packer'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-vagrant'

"Editor support"

Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'vim-airline/vim-airline'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'tpope/vim-fugitive'
Plug 'craigemery/vim-autotag'
Plug 'numkil/ag.nvim'

call plug#end()

"Global Editor config"

syntax on
set encoding=utf-8
set fileencoding=utf-8
set undofile
set undodir=~/.vim/undodir

"Enable mouse"
set mouse=a mousemodel=popup
set termguicolors
set number
set tabstop=8
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set cursorline
set cursorcolumn

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6


"Linter and other magic stuff, done with Ale"
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_set_loclist = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


"Settings Specific to Terraform"
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1

source $HOME/.config/nvim/golang_support.vim

