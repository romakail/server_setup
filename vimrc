" Maintainer:	Evan Salazar <evan@visgence.com>
" A Fancy vimrc with syntax checking and sublime like coloring
" But not to facny on navigaion or control
" Inspired from https://github.com/grigio/vim-sublime
"
"First RUN
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
" 
" Then in vim run :BundleInstall
"Requires pep8 or flake8 for python checking
"
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
 
" Color Themes



" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set nobackup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp
" Only do this part when compiled with support for autocommands.

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

endif " has("autocmd")
if has('syntax') && !exists('g:syntax_on')
      syntax enable
endif


set autoindent		" always set autoindenting on


set expandtab
set softtabstop=4
set tabstop=8
set shiftwidth=4

set number
set ruler
set showcmd
set wildmenu
"set showmode
set showmatch
set laststatus=2

"Set CTL tab commands
nnoremap <C-b>  :tabprevious<CR>
inoremap <C-b>  <Esc>:tabprevious<CR>i
nnoremap <C-n>  :tabnext<CR>
inoremap <C-n>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-k>  :tabclose<CR>
inoremap <C-k>  <Esc>:tabclose<CR>i

"set foldmethod=indent
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1


"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
