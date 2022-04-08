scriptencoding utf-8

"" 文件格式
set fileformats=unix                            "" 文件格式
set helplang=cn                                 "" 中文帮助
set guifont=Fira\ Code\ 12                      "" Linux字体设置

"""=============================================================================
"""窗口设置

if has('gui_running')
   set guioptions-=T           "" 隐藏菜单和工具条
   set guioptions-=L           "" 隐藏滚动条
   set guioptions-=r
   set title                   "" 标题栏显示的信息
   set titlestring=%{hostname()}\ -\ %F
   set showtabline=2           "" 显示标签页
   set guitablabel=%N.\ %t     "" 为标签页添加数字
   set guifontwide=Sarasa\ Mono\ SC\ 12
endif

set fillchars=fold:\ ,vert:\|,stl:\ ,stlnc:\  ""在被分割的窗口间显示空白，便于阅读

set equalalways                       ""分割窗口时保持平衡
set splitbelow splitright             ""分割出来的窗口位于当前窗口下边/右边
set lazyredraw                        ""在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能
set switchbuf=useopen,usetab,newtab   ""跳转会先复用已有文件的窗口，再复用已有标签，最后没有的话新建标签
set signcolumn=yes                    ""始终显示列标记
set nostartofline                     ""光标滚动后将光标保留在同一列中
set scrolloff=3                       ""上下移动光标时，光标的上方或下方至少会保留显示的行数
set sidescrolloff=5                   ""Keep at least 5 lines left/right
set linespace=3                       ""行间距，如果默认值太小，代码会非常纠结
set scrolljump=5                      ""lines to scroll when cursor leaves screen
set synmaxcol=999                     "" stop syntax highlight after x lines for performance
set textwidth=81                      ""设置行宽，即一行显示多少个字符。
set wrapmargin=2                      ""指定折行处与编辑窗口的右边缘之间空出的字符数
set cmdheight=2                       ""命令行的高度
set cmdwinheight=5
set winwidth=30
set winminwidth=10
set helpheight=12
set previewheight=12
set pumheight=12                    "补全列表中项目的个数


"""Statusline
set laststatus=2           "" 总是显示状态栏
set ruler                  "" 显示当前的行号列号
set showcmd                "" 在状态栏显示正在输入的命令
set statusline=%<[文件类型:\ %Y]
set statusline+=\ [格式:\ %{&ff}\ \|\ 编码:\ %{(&fenc!=''?&fenc:&enc).(&bomb!=''?'\ With\ Bom':'\ No\ Bom')}]
set statusline+=%=[当前光标所在:\ 第%l行,\ 第%c列\ 文件总计:\ %L行]

"""=============================================================================
"""文本格式化
 

set ambiwidth=double    ""告诉Vim怎么处理东亚二义性宽度字符类，例如破折号、五角星符号等等,防止特殊符号无法正常显示
set formatoptions+=mM    ""允许在两个汉字之间断行，即使汉字之间没有出现空格
set formatoptions+=B    ""合并两行中文时，不在中间加空格
set formatoptions=1jqn     ""自动格式化
set breakindentopt = "shift:2,min:20"
set backspace=indent,eol,start   ""
set whichwrap+=<,>,h,l           ""设退格键和光标键跨越行边界

set nowrap                  ""关闭自动折行
set breakat=\ \	;:,!?       ""长行折行标记字符
set linebreak               ""只有遇到在breakat指定的符号处（比如空格、连词号和其他标点符号），才折行。也就是说，不会在单词内部折行
set showbreak=↳             ""设置set nowrap命令后, 对于超出屏幕范围的行, 会在边界显示↪

set iskeyword+=_,$,@,%,#,-  ""带有如下符号的单词不要被换行分割

"""=============================================================================
"""保存，备份，历史记录

set browsedir=buffer         ""设定文件浏览器目录为当前目录
set autochdir                ""自动切换当前目录为当前文件所在的目录

set confirm                  ""修改只读文件时发出提示
set autoread                 ""文件修改之后自动载入
set autowrite                ""自动保存

set nobackup                 ""取消备份
set noswapfile               ""关闭swap文件

set undofile                 ""保留撤销记录
set undodir=~/.vim/undo
set bufhidden=hide           "" 当buffer被丢弃的时候隐藏它
set history=9999             "" 记住多少次历史操作记录数
set viminfo^=%               "" Remember info about open buffers on close
set viminfo+=!               "" 保存全局变量

"""搜索替换

set hlsearch      "" 搜索高亮
set incsearch     "" 即时搜索
set ignorecase    "" 搜索时忽略大小写
set smartcase     "" 有一个或一个以上大写字母时仍保持对大小写敏感
set nowrapscan    "" 禁止在搜索到文件两端时重新搜索
set gdefault      "" 替换时，缺省启用g标志，即同一行里的所有匹配都会被替换

"""括号匹配

set showmatch       ""显示匹配的括号
set matchtime=3     ""高亮匹配括号时间
set matchpairs+=<:>,(:),{:},[:]     ""匹配括号的规则

""""剪贴板

if has('unnamedplus')    ""vim寄存器和系统剪贴板共享
  set clipboard& clipboard+=unnamedplus
else
  set clipboard& clipboard+=unnamed
endif

"""鼠标
set mouse=a                "" 启用鼠标
set selectmode=mouse,key   "" 使用鼠标或按键进行选择
set selection=inclusive    "" 从光标处进行选择
set mousemodel=popup       "" Set the behaviour of mouse
set mousehide              "" 键入时隐藏鼠标光标

"""设置光标风格
if has('gui_running')
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif

"""=============================================================================
"""其他配置

set hidden                     "" 可以在没有保存的情况下切换buffer，此时的修改由 vim 负责保存
set report=0                   "" Don't report on line changes
set magic                      "" 智能处理正则表达式中的某些符号
set visualbell errorbells      "" 出错的提示声音
set virtualedit=block          "" Virtual edit is useful for visual block edit
set display=lastline           "" Show as much as possible of the last line
set ttyfast                    "" Faster redrawing
set ttymouse=xterm2
"""=============================================================================
"""编程相关配置
"""行号

set number            "" 显示行号
set numberwidth=4     "" 行号栏的宽度
set relativenumber    "" 相对行号

"插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

"" 高亮

set cursorline                    "" 高亮当前行
set colorcolumn=80                "" 高亮显示第80列
autocmd InsertLeave * se nocul    "" 用浅色显示当前行
autocmd InsertEnter * se cul      "" 用浅色高亮当前行


"" 空白字符视觉提示
set list
set listchars=extends:↷,precedes:↶,tab:»»,space:˽,eol:↵
highlight LeaderTab guifg = yellow                         "" 设定行首tab为黄色
match LeaderTab /^\t/                                      "" 匹配行首tab

"" 缩进 {{{

set tabstop=4           "" 1 Tab = 4 spaces
set expandtab           "" 用空格替代Tab
set shiftwidth=4        "" 缩进用的空格数
set softtabstop=4       "" 软制表符宽度
set shiftround
set smarttab

set smartindent
set autoindent

"" }}}

"" 折叠 {{{
if has('folding')
    set foldenable               ""允许代码折叠
    set foldmethod=indent        ""默认使用缩进折叠
    set foldlevel=99             ""默认打开所有缩进
    set foldcolumn=1             ""折叠区域的宽度
    set foldexpr=1               ""代码块折叠后显示的行数
endif
" 新建的文件，刚打开的文件不折叠
autocmd! BufNewFile,BufRead * setlocal nofoldenable
"" }}}

"" 自动补全 {{{

set completeopt=menu
set completeopt+=menuone
set completeopt+=popup
set completeopt+=noinsert

if has('wildmenu')
    set wildmenu
    set wildmode=list:longest,full
    set wildchar=<TAB>
    set wildoptions=tagfile
    set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
    set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib
    set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
    set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
    set wildignore+=*.DS_Store*,*.ipch
    set wildignore+=*.gem
    set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
    set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
    set wildignore+=*/.nx/**,*.app,*.git,.git
    set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
    set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
    set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
    set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
    set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
    set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
    set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
    set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"   ""Tab键在补全列表中跳转
    inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"    ""回车即选中当前项
    autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif   ""离开插入模式后自动关闭预览窗口
endif

"" }}}

"""=============================================================================
"" 自定义设置

au BufNewFile,BufRead *.md          set ft=mkd tw=80 syntax=markdown
au BufNewFile,BufRead *.markdown    set ft=mkd tw=80 syntax=markdown

""" {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

""" }}}

if executable('rg')
      set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case        
      set grepformat=%f:%l:%c:%m
endif

""默认垂直分割窗口进行对比,忽略空白字符
set diffopt=
set diffopt+=vertical  " show diff in vertical position
set diffopt+=filler  " show filler for deleted lines
set diffopt+=closeoff  " turn off diff when one file window is closed
set diffopt+=context:3  " context for diff
set diffopt+=internal,indent-heuristic,algorithm:histogram

