" install vim-plug 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" start plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()

" Enable status bar from lightline plugin
set laststatus=2

" remove old vi things
set nocompatible

" enable syntax colors
syntax enable

" search
filetype plugin on

" show line numbers
set number

" search down into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Create the 'tags' file
command! MakeTags !ctags -R .

" Tweaks for browsing files with netrw
let g:netrw_banner=0 "disable the banner

" Read a empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" set tab to 4 spaces
set tabstop=4

" insert spaces when tab is pressed
set expandtab

" indent with 4 spaces
set shiftwidth=4
