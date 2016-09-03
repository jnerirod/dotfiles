filetype off
set nocompatible
set clipboard=unnamed

" Vundle config
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'tomasr/molokai'
Plugin 'whatyouhide/vim-gotham'
Plugin 'YorickPeterse/happy_hacking.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'

" Ending Vundle config
call vundle#end()
filetype plugin indent on

" Theme
syntax on
set termguicolors
colorscheme molokai
let &colorcolumn=join(range(81,81),",")
highlight ColorColumn ctermbg=233 guibg=#1D1F20

" Others
set number
set relativenumber
set list
set listchars=tab:▸\ ,trail:·,eol:¬,extends:»,precedes:«,nbsp:+

" Tabs
set tabstop=4
set shiftwidth=4
" Key mappings
map <f8> :NERDTreeToggle<Enter>
inoremap jj <Esc>

" Leader mappings
nnoremap <leader>p :FZF<Enter>

