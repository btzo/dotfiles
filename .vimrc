" vim: foldmarker={,} foldlevel=0 foldmethod=marker

" Vundle management {
set nocompatible              " be iMproved, required
filetype off                  " required

"Set the shell to bash ( I'm using Fish shell by default )
set shell=/bin/bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'gcmt/wildfire.vim'
Plugin 'thanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
" }

" General {


syntax on   "Enable syntax highlighting
set mouse=a  " Automatically enable mouse usage
set mousehide  " Hide the mouse cursor while typing
scriptencoding utf-8

set virtualedit=onemore   " Allow for cursor beyond last character
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
    set number                      " Line numbers on
    set showmatch                   " Show matching brackets/parenthesis
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set winminheight=0              " Windows can be 0 line high
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set foldenable                  " Auto fold code
    set list
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace


colorscheme solarized   "Choose colorscheme


colorscheme solarized   "Choose colorscheme

"Enable use paste/yank from OS clipboard
if has('clipboard')
  if has('unnamedplus')
     set clipboard=unnamed,unnamedplus
  else
     set clipboard=unnamed
  endif
endif



"No annoying sound on errors
 set noerrorbells
 set novisualbell
 set t_vb=
 set tm=500


" }

" Formatting {

    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
" }

" Key (re)Mappings {

let mapleader="," "Change mapleader to comma

nmap <silent> <leader>/ :nohlsearch<CR> "Clear search highlights

"Yank from the cursor to the end of the line
 nnoremap Y y$

 " Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h

" Visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv


    " Map <Leader>ff to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>



" }


" Theme {

" set theme as solarized
let g:airline_theme='solarized'

"show airline bar
set laststatus=2
set ttimeoutlen=50

" }


" Plugins {

    " NerdTree {
        if isdirectory(expand("~/.vim/bundle/nerdtree"))
            map <C-e> <plug>NERDTreeTabsToggle<CR>
            map <leader>e :NERDTreeFind<CR>
            nmap <leader>nt :NERDTreeFind<CR>

            let NERDTreeShowBookmarks=1
            let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
            let NERDTreeChDirMode=0
            let NERDTreeQuitOnOpen=1
            let NERDTreeMouseMode=2
            let NERDTreeShowHidden=1
            let NERDTreeKeepTreeInNewTab=1
            let g:nerdtree_tabs_open_on_gui_startup=0
        endif
    " }

" }
