set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on


" Put custom scripts here

" Open NERDTREE when VIM starts up
autocmd vimenter * NERDTree
