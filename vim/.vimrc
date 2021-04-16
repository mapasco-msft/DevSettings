
set ignorecase
set number
set ruler
set colorcolumn=80
set nohls
set incsearch
set scrolloff=8
set signcolumn=yes

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
Plug 'prabirshrestha/vim-lsp'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()
let g:deoplete#enable_at_startup = 1

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

map <C-L> :noh<CR>

map <C-F> :Files<CR>
nnoremap <C-g> :Rg<CR>

nnoremap ; :

" OmniSharp
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_server_stdio = 1
autocmd FileType cs nnoremap <C-Space> :OmniSharpGetCodeActions<CR>
autocmd FileType cs inoremap <C-Space> <C-x><C-o>
call deoplete#custom#source('_', 'max_menu_width', 80)


set lcs+=space:·
set list
