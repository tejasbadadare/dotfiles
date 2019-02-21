" ~/.vimrc
" Lisa McCutcheon
" Wed Feb 07, 2007

" **************************************
" * VARIABLES
" **************************************
set nocompatible		" get rid of strict vi compatibility!
" set nu				" line numbering on
set autoindent			" autoindent on
set modeline			" show what I'm doing
set showmode			" show the mode on the dedicated line (see above)
set nowrap			" no wrapping!
set report=0			" reports changes involving more than 0 lines
set scrolloff=2			" stop scrolling 2 chars before end of file
syntax on			" show syntax

" Tab completion (UNIX Style), shows menu of possibilities
set wildmenu
set wildmode=longest:full
set wildignore=*.o,*.back,*.data,*.class

" Smart indentation
set smartindent
set cindent

" Backups
set backup

set ignorecase			" search without regards to case
set smartcase			" case sensitive when query has an upper case letter
set incsearch			" search while typing
set hlsearch			" results are highlighted

set backspace=indent,eol,start	" backspace over everything
set fileformats=unix,dos,mac	" open files from mac/dos
set exrc			" open local config files
set nojoinspaces		" don't add white space when I don't tell you to
set ruler			" which line am I on?
set showmatch			" ensure Dyck language
set incsearch			" incremental searching
set bs=2			" fix backspacing in insert mode
set bg=light
set formatoptions+=r		" auto-start multi-line comments upon <Enter>
set shiftround			" maintain indents when tabs and spaces are mixed

" Highlight characters over 80 line length
match ErrorMsg '\%>80v.\+'

" Indentation settings
set expandtab
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Show syntax
syntax on

" This is my prefered colorscheme, open a file with gvim to view others
:colors desert

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>

setlocal textwidth=80		" used for text wrapping
