set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Color Schemes
Plugin 'tomasr/molokai'

" Files
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'

" Productivity measurement
Plugin 'wakatime/vim-wakatime'
call vundle#end()


filetype plugin indent on


" Put custom scripts here

" Open NERDTREE when VIM starts up
autocmd vimenter * NERDTree

colo molokai
syntax on
