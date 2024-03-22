autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
autocmd Filetype cpp setlocal makeprg=g++\ -pthread\ -Wall\ -o%.exec\ %\ \&\&\ ./%.exec
autocmd Filetype c setlocal makeprg=gcc\ -pthread\ -Wall\ -o%.exec\ %\ \&\&\ ./%.exec
autocmd Filetype python setlocal makeprg=python\ %
filetype indent on
filetype on
filetype plugin on
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set autoindent
set autoread
set autowrite
set backspace=2
set cindent
set clipboard=unnamed 
set cmdheight=1
set completeopt=preview,menu 
set confirm
set enc=utf-8
set expandtab
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fillchars=vert:\ ,stl:\ ,stlnc:\
set gdefault
set guioptions-=m
set guioptions-=T
set helplang=cn
set history=10000
set hlsearch
set ignorecase
set incsearch
set iskeyword+=_,$,@,%,#,-
set langmenu=zh_CN.UTF-8
set laststatus=2
set linespace=0
set magic
set matchtime=1
set nobackup
set nocompatible
set noeb
set noswapfile
set noundofile
"set number
set report=0
set ruler
set scrolloff=3
set selection=exclusive
set shiftwidth=2
set showmatch
set smartindent
set smarttab
set softtabstop=2
set statusline=[%F][%{&encoding}][%{&fileformat}]%y%m%=[Unicode:0x%B(%b)][Line:%l/%L,Column:%c][%p%%]
set syntax=on
set tabstop=2
set viminfo+=!
set wildmenu
