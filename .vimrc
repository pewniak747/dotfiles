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
match ExtraWhitespace /\s\+$/
let g:ctrlp_custom_ignore = '\.git$\|\.bundle$'

" From vimrc_example.vim distributed with Vim 7.
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
