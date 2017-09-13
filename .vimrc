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

" Files
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'

" Productivity measurement
Plugin 'wakatime/vim-wakatime'
call vundle#end()


" Put custom scripts here

" Open NERDTREE when VIM starts up
autocmd vimenter * NERDTree

colo molokai
syntax on

" Keyboard mappings
map <C-n> :NERDTreeToggle<CR>
