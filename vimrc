let mapleader=";" " define leader key
filetype off " enble detect file type
filetype plugin on " load plugin with file type
set nocompatible " disable compatible

" 开启语法高亮
syntax on

" install bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

let g:formatterpath = ['/Users/niuoo/Shell']

execute pathogen#infect()
set background=dark
colorscheme molokai 
" solarized options
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
let g:molokai_original = 1
let g:rehash256 = 1


set formatoptions-=r
" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2

" 显示行号
set number
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch " 括号配对情况, 跳转并高亮一下匹配的括号
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
set cursorcolumn " 突出显示当前列
set cursorline " 突出显示当前行
set hlsearch " 高亮搜索
set wildmenu " vim 自身命令行模式智能补全
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" 禁止滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
