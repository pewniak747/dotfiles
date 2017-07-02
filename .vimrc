colorscheme molokai
set nu
syntax on
filetype plugin on
set softtabstop=2
set shiftwidth=2
set tabstop=2
set autoindent
set expandtab
set go-=T
set noeb vb t_vb=
set t_Co=256
map <F8> :!rspec %<Enter>
map <F9> :!sh .rspec-suite<Enter>
au BufNewFile,BufRead *.hamlc set filetype=haml
cd ~/code
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/*,*/log/*
highlight ExtraWhitespace ctermbg=red ctermfg=white
match ExtraWhitespace /\s\+$\| \+\ze\t/
let g:ctrlp_custom_ignore = '\.git$\|\.bundle$\|public\/images$\|target$\|node_modules$\|coverage$\|uploads$'
let g:ctrlp_max_files=0
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" From vimrc_example.vim distributed with Vim 7.
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

let g:ack_default_options =
      \ " -s -H --nocolor --nogroup --smart-case --follow"

" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'git://github.com/mileszs/ack.vim.git'
Plugin 'mxw/vim-jsx'
Plugin 'kewah/vim-stylefmt'
Plugin 'chrisbra/Colorizer'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'junegunn/goyo.vim'

call vundle#end()
filetype off
filetype plugin indent on

let g:colorizer_auto_filetype='css,html'
