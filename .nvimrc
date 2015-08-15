call plug#begin('~/.nvim/plugged')
Plug 'whatyouhide/vim-gotham'
Plug 'Valloric/MatchTagAlways'
call plug#end()

colorscheme gotham
set number
set relativenumber
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set foldmethod=indent
set foldlevel=3
nnoremap ; :
nnoremap <Space> za
inoremap jj <Esc>

