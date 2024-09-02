"vim setting
set nu
set nocompatible
syntax enable
colorscheme monokai
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set ruler
set cursorline
set mouse=a

"pathogen setting
execute pathogen#infect()
syntax on
filetype plugin indent on

"NERDTree setting
autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:nerdtree_tabs_open_on_console_startup=1

"taglist setting
let Tlist_Auto_Open=1
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=1 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序

" ctags 索引文件
set tags+=~/.vim/tags/cpp_src/tags
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1 " 输入 . 后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest
" 设置颜色
highlight Pmenu ctermbg=darkgrey
highlight PmenuSel ctermbg=lightgrey ctermfg=black

"ale setting
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ate_linters = {
			\   'c++': ['clang'],
			\   'c': ['clang'],
			\   'python': ['pylint'],
\}
