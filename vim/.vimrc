"通用配置
"通用配置
syntax on  " 开启语法高亮
"colorscheme peachpuff "vim配置方案
"colorscheme wombat256grf
set number  " 显示行号
set hls "搜索时高亮显示被找到的文本
set scrolloff=3 " 上下可视行数
set incsearch   " 搜索时高亮显示被找到的文本
set ignorecase "搜索忽略大小写
set enc=utf-8  "编码设置
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "编码自动识别
map M :set mouse=n <CR> "鼠标普通模式
" set cursorline "选中行出现下划线
map qq :qa!<CR> "多窗口不保存关闭
map ww :wqa!<CR> "多窗口保存关闭
"vim自动打开跳到上次的光标位置
if has("autocmd")
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set nocompatible  "设置backspace的工作方式
set backspace=indent,eol,start " 设置backspace的工作方式
map <F5> :set listchars=tab:>-,trail:-<CR> :set list<CR> " 显示空格和tab
map <F6> :set list!<CR> " 取消显示空格和tab
set ts=4
set expandtab
set autoindent
set foldmethod=syntax "基于语法进行代码折叠, indent:缩进, manual:手动, diff:未更改文本
set nofoldenable	"启动 Vim 时关闭折叠

"配置nerdtree使用F3打开关闭
map <F3> :NERDTreeMirror <CR>
map <F3> :NERDTreeToggle <CR>
"NERDTree配置
let NERDChristmasTree=1       "显示增强
let NERDTreeAutoCenter=1      "自动调整焦点
let NERDTreeShowFiles=1       "显示文件
let NERDTreeShowLineNumbers=1 "显示行号
let NERDTreeHightCursorline=1 "高亮当前文件
let NERDTreeShowHidden=0      "显示隐藏文件
let NERDTreeMinimalUI=0       "不显示'Bookmarks' label 'Press ? for help'
let NERDTreeWinSize=31        "窗口宽度

"默认最大化窗口打开
au GUIEnter * simalt ~x 
"taglist配置信息
 let Tlist_Auto_Open=0 " Let the tag list open automatically
 let Tlist_Auto_Update=1 " Update the tag list automatically
 let Tlist_Compact_Format=1 " Hide help menu
 let Tlist_Ctags_Cmd='ctags' " Location of ctags
 let Tlist_Enable_Fold_Column=0 "do show folding tree
 let Tlist_Process_File_Always=1 " Always process the source file
 let Tlist_Show_One_File=1 " Only show the tag list of current file
 let Tlist_Exist_OnlyWindow=1 " If you are the last, kill yourself
 let Tlist_File_Fold_Auto_Close=0 " Fold closed other trees
 let Tlist_Sort_Type="name" " Order by name
 let Tlist_WinWidth=30 " Set the window 40 cols wide.
 let Tlist_Close_On_Select=1 " Close the list when a item is selected
 let Tlist_Use_SingleClick=1 "Go To Target By SingleClick
 let Tlist_Use_Right_Window=1 "在右侧显示
 map f :TlistToggle<CR>   
 "打开关闭快捷键

"airline状态栏配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
map <c-Left> :bp<CR>    " 切换到上一个
map <c-Right> :bn<CR>   " 切换到下一个
map <F2> :bd<CR>        " 关闭当前窗口
map 11 :b1<CR>          " 切换到编号1
map 22 :b2<CR>          " 切换到编号2
map 33 :b3<CR>          " 切换到编号3
map 44 :b4<CR>          " 切换到编号4
map 55 :b5<CR>          " 切换到编号5
map 66 :b6<CR>          " 切换到编号6
map 77 :b7<CR>          " 切换到编号7
map 88 :b8<CR>          " 切换到编号8
map 99 :bp<CR>          " 切换到编号<F12><F12>
map 00 :bn<CR>         " 切换到编号10

" 1、 \cc 注释当前行和选中行
" 2、 \cn 没有发现和\cc有区别
" 3、 \c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作
" 4、 \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
" 5、 \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
" 6、 \cs 添加性感的注释，代码开头介绍部分通常使用该注释
" 7、 \cy 添加注释，并复制被添加注释的部分
" 8、 \c$ 注释当前光标到改行结尾的内容
" 9、 \cA 跳转到该行结尾添加注释，并进入编辑模式
" 10、\ca 转换注释的方式，比如： /**/和//
" 11、\cl \cb 左对齐和左右对其，左右对其主要针对/**/
" 12、\cu 取消注释
"nerdcommenter插件快速注释
let g:NERDSpaceDelims            = 1      " 在注释符号后加一个空格
let g:NERDCompactSexyComs        = 1      " 紧凑排布多行注释
let g:NERDDefaultAlign           = 'left' " 逐行注释左对齐
let g:NERDAltDelims_java         = 1      " JAVA 语言使用默认的注释符号
let g:NERDCustomDelimiters       = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
let g:NERDCommentEmptyLines      = 1      " 允许空行注释
let g:NERDTrimTrailingWhitespace = 1      " 取消注释时删除行尾空格
let g:NERDToggleCheckAllLines    = 1      " 检查选中的行操作是否成功
map <F12> <plug>NERDCommenterSexy         " 选中注释
map <c-F12> <plug>NERDCommenterUncomment  " 选中取消注释

" " 配置 ctags 的参数 "
map <c-]> g<c-]>  "ctags跳转不自动选择
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
"let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
"let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
"let g:gutentags_modules = []
"if executable('ctags')
"        let g:gutentags_modules += ['ctags']
"endif
"if executable('gtags-cscope') && executable('gtags')
"        let g:gutentags_modules += ['gtags_cscope']
"endif
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags目录中，避免污染工程目录
"let g:gutentags_cache_dir = expand('~/.cache/tags')
" 配置 ctags 的参数，老的 Exuberant-ctags 不能有--extra=+q，注意
"let g:gutentags_ctags_extra_args = ['--fields=+niazS']
"let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
"let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行，老的Exuberant-ctags 不能加下一行
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" 禁用 gutentags 自动加载 gtags 数据库的行为
"let g:gutentags_auto_add_gtags_cscope = 0

" vim-multiple-cursors
" <C-n>: 进入多光标状态/或选择下一个符合当前选择的单词
" <C-x>: 跳过当前候选
" <C-p>: 移除当前单词处的光标及选择状态跳转到上一个光标处
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" vim-interestingwords'
" k: 高亮单词
" shift k: 取消高亮
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1
let g:interestingWordsDefaultMappings = 0   " disable default mapping
map gl :call InterestingWords('n')<cr>  " 高亮 
"map gl :call InterestingWords('v')<cr> 
map gn :call WordNavigation(1)<cr>  " 跳到下一个 
map gu :call UncolorAllWords()<cr>  " 取消所有高亮

" markdown-preview.nvim
let g:vim_markdown_math = 1
let g:vmt_auto_update_on_save = 0
let g:mkdp_path_to_chrome = "/usr/bin/google-chrome-stable"
let g:mkdp_markdown_css=''

" vimdiff
" zo: 展开折叠
" za: 打开关闭折叠
" do：从另外一个问家复制diff
" dp：将diff合并到另外一个文件

"GIT_TERMINAL_PROMPT=0
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/taglist.vim' "Tlist标签列表插件
Plug 'preservim/nerdcommenter' "nerdcommenter快速注释插件
"Plug 'vim-airline/vim-airline' "airline状态栏
"Plug 'ludovicchabant/vim-gutentags' "gutentags异步tags插件
Plug 'vim-scripts/LeaderF' "LeaderF模糊查找插件
Plug 'vim-scripts/AutoComplPop' "查字典补全
" Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
" Plug 'terryma/vim-multiple-cursors' " 多光标插件
Plug 'mhinz/vim-startify' " 快速打开之前浏览的文件
Plug 'lfv89/vim-interestingwords'   " 高亮插件
Plug 'tpope/vim-fugitive'   " git 插件
Plug 'plasticboy/vim-markdown'
Plug 'mileszs/ack.vim'  " ack 搜索
call plug#end()
