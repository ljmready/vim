set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileformats=unix,dos
let mapleader = ";"
set background=dark
"colorscheme peaksea
""colorscheme ir_black
colorscheme molokai
"colorscheme solarized
hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE ctermfg=NONE        ctermbg=NONE        cterm=BOLD
hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE ctermfg=NONE        ctermbg=NONE        cterm=BOLD
hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD ctermfg=white       ctermbg=darkgray    cterm=NONE
"基本设置
set nocompatible               " be iMproved
syntax enable
filetype off                   " required!
set laststatus=2 "始终显示状态栏
set tabstop=4 "一个制表符的长度
set nobackup "不生成备份文件
set softtabstop=4 "一个制表符的长度（可以大于tabstop）
set shiftwidth=4 "一个缩进的长度
set expandtab "使用空格替代制表符
set smarttab "智能制表符
set autoindent "自动缩进
set smartindent "只能缩进
set number "显示行号
set ruler "显示位置指示器
set backupdir=/tmp "设置备份文件目录
set directory=/tmp "设置临时文件目录
set ignorecase "检索时忽略大小写
set hls "检索时高亮显示匹配项
set helplang=cn "帮助系统设置为中文
set foldmethod=indent "代码折叠
"set nofoldenable "启动 vim 时关闭折叠代码
"set foldclose=all           " 设置为自动关闭折叠
set foldenable              " 开始折叠
"set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set cursorline "高亮显示当前行
set cursorcolumn "高亮显示当前列

"粘贴时不置换“剪贴板”
xnoremap p pgvy 

set completeopt=longest,menu
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ?  "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ?  "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
"共享剪贴板  
set clipboard+=unnamed 
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'Shougo/neocomplcache'
let g:neocomplcache_enable_at_startup = 1
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mileszs/ack.vim'
Bundle 'alvan/vim-php-manual'
Bundle 'DoxygenToolkit.vim'
" My Bundles here:

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

:map <C-e> :NERDTree<CR>
set laststatus=2
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'
"用空格来控制折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ?  'zc' : 'zo')<CR>
" 当文件在外部被修改，自动更新该文件
set autoread

" -----------------------------------------------------------------------------
set writebackup
"保存文件前建立备份，保存成功后删除该备份
set nobackup
"设置无备份文件
set noswapfile
"设置无临时文件
