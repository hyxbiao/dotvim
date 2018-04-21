execute pathogen#infect()

syntax on
filetype plugin indent on
color dracula

set ts=4 sw=4 sts=4

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
"set t_Co=256

set nocp

"启动时最大化
autocmd GUIEnter * simalt ~x

" set nu
set ru
set incsearch
set hls
" backspace
set backspace=indent,eol,start
" C/C++
set sm
set cino=:0g0t0(sus
set ai

set foldmethod=indent

"set encoding=utf-8 termencoding=gbk
"设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,chinese,cp936,gb18030,gbk,gb2312,big5,latin1

"colorscheme solarized
"if !has("gui_running")
"    let g:solarized_termtrans=1
"    let g:solarized_termcolors=256
"endif
"set background=dark

" 
augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
" Only do this part when compiled with support for autocommands
if has("autocmd")
" In text files, always limit the width of text to 78 characters
     autocmd BufRead *.txt set tw=78
       " When editing a file, always jump to the last cursor position
        autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal! g'\"" |
        \ endif
endif

