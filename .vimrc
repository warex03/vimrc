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
Plugin 'scrooloose/syntastic'
Plugin 'yonchu/accelerated-smooth-scroll'

" Elixir
Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-editors/vim-elixir'

" Ruby
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'

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

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Rails.vim mappings
map <Leader>r :R<CR>

" Settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rspec_runner = "os_x_iterm"
