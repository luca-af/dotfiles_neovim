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

"Linter and other magic stuff, done with Ale"
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_set_loclist = 0
let g:airline#extensions#ale#enabled = 1




"Settings Specific to Terraform"
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1


"Settings Specifc to GO"

"au FileType go nmap <F12> <Plug>(go-def)"

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"

