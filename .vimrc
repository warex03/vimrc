set encoding=utf-8

" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile	  " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " incremental searching
set laststatus=2  " always display the status line
set autowrite     " automatically :write before running commands

set regexpengine=1 " use new engine

set shell=bash
set nocompatible

" Indentations
set noautoindent
" set nocindent
" set nosmartindent
set smartindent
filetype indent off


" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" replace tabs as 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set numberwidth=5
set relativenumber

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Color Schemes
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

" Files
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'jremmen/vim-ripgrep'

" Snippets
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" CoC
Plugin 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}

" Typescript
Plugin 'leafgarland/typescript-vim'

" Elixir
" Plugin 'slashmili/alchemist.vim'
" Plugin 'elixir-editors/vim-elixir'

" Ruby
" Plugin 'thoughtbot/vim-rspec'
" Plugin 'tpope/vim-rails'

" Productivity measurement
Plugin 'wakatime/vim-wakatime'
call vundle#end()


" Put custom scripts here

" Open NERDTREE when VIM starts up
" autocmd vimenter * NERDTree

" NERDTree fix for ^G characters
" let g:NERDTreeNodeDelimiter = "\u00a0"

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

" Settings
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" netrw configs
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2    " open files in new vertical split
let g:netrw_winsize = 25

" Rspec runner
" let g:rspec_runner = "os_x_iterm2"
" let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"

