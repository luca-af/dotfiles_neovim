"Plugin Section"
"If there are no tags, I default on master"
call plug#begin('$HOME/.local/share/nvim/plugged/')



"Editor support"

Plug 'dense-analysis/ale', { 'tag' : 'v3.1.0' }
Plug 'Shougo/deoplete.nvim', { 'do' : ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim', { 'branch' : 'master' }
Plug 'Shougo/neosnippet-snippets', { 'branch' : 'master' }
Plug 'vim-airline/vim-airline', { 'tag' : 'v0.11' }
Plug 'tpope/vim-fugitive', { 'tag' : 'v3.6' }
Plug 'craigemery/vim-autotag', { 'branch' : 'master' }
Plug 'numkil/ag.nvim', { 'branch' : 'master' }
Plug 'preservim/nerdtree', { 'tag' : '6.9.9' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'branch' : 'master' }
call plug#end()

"Global Editor config"

syntax on
set encoding=utf-8
set fileencoding=utf-8
set undofile
set undodir=~/.vim/undodir
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
set nocompatible
let mapleader='\'
filetype plugin on

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', { '_': ['ale'], })

highlight Pmenu ctermbg=8 guibg=#606060
highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

"Specific highlight
autocmd BufEnter,BufRead Containerfile set syn=dockerfile

"VimBuffer
map <C-f> :bnext<CR>
map <C-g> :bprevious<CR>

"NerdTREE options

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"Linter and other magic stuff, done with Ale"
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_set_loclist = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1



function! IncludeIfExists(string)
  if filereadable(expand(a:string))
    exe "source " . expand(a:string)
  endif
endfunction

call IncludeIfExists('$HOME/.config/nvim/golang_support.vim')
call IncludeIfExists('$HOME/.config/nvim/hashicorp_support.vim')
