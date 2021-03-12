  
set ignorecase
set number
set ruler
set hlsearch
set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'vifm/vifm.vim'
Plug 'junegunn/goyo.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ThePrimeagen/vim-be-good'

call plug#end()

set mouse=nicr
set tabstop=4
set shiftwidth=4
set expandtab

set number relativenumber
set nu rnu

" Width
let g:goyo_width=120
cnoreabbrev zen Goyo
map <F3> :zen<CR>

inoremap <C-Space> <C-x><C-o>
map <C-L> :noh<CR>

map <C-F> :Files<CR>

nnoremap ; :

" OmniSharp
nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>
let g:OmniSharp_want_snippet=1
let g:OmniSharp_server_stdio = 1
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_list_window_size = 5

set lcs+=space:·
set list
