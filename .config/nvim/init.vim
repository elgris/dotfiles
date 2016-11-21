set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en_US

" set up clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" set up path to configuration file
if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

" set up Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc(s:editor_root . '/bundle')
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'

Plugin 'https://github.com/terryma/vim-multiple-cursors'
Plugin 'https://github.com/fatih/vim-go'
Plugin 'https://bitbucket.org/ns9tks/vim-fuzzyfinder/'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
set background=dark
colorscheme monokai

" netrw Tree View configs
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Tabs config
set expandtab
set tabstop=4
set shiftwidth=4
