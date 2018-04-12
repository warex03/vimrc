set shell=bash
set nocompatible

" Indentations
set noautoindent
set nocindent
set nosmartindent

filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Color Schemes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" Files
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-editors/vim-elixir'

" Productivity measurement
Plugin 'wakatime/vim-wakatime'
call vundle#end()


" Put custom scripts here

" Open NERDTREE when VIM starts up
autocmd vimenter * NERDTree

syntax on
set background=dark
colorscheme solarized

" Keyboard mappings
map <C-n> :NERDTreeToggle<CR>
