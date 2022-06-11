set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set clipboard=unnamedplus
syntax on

call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'norcalli/nvim-colorizer.lua'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tmhedberg/SimpylFold'
call plug#end()

set runtimepath+=~/.config/nvim/plugged/nvim-colorizer.lua/
set termguicolors
lua require'colorizer'.setup()

let g:airline#extensions#tabline#enabled = 1

let g:airline_section_c = '%t'

colorscheme nord

nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

nnoremap <C-f> :Files<CR>
