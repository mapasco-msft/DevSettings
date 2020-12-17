  
:set number
:set ruler
:set hlsearch

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

call plug#end()

set mouse=nicr
set tabstop=4

" Width
cnoreabbrev zen Goyo 120

inoremap <C-Space> <C-x><C-o>
