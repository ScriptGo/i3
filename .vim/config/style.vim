if has('gui_running')
   set guioptions-=m                      "" 隐藏菜单栏
   set guioptions-=T                      "" 隐藏工具条
   set guioptions-=L                      "" 隐藏滚动条
   set guioptions-=r
   set title                              "" 标题栏显示的信息
   set titlestring=%{hostname()}\ -\ %F
   set showtabline=2                      "" 显示标签页
   set guitablabel=[%N]\ %t               "" 为标签页添加数字
   set guifontwide=Sarasa\ Mono\ SC\ 12
endif



"" Statusline
set laststatus=2           "" 总是显示状态栏
set ruler                  "" 显示当前的行号列号
set showcmd                "" 在状态栏显示正在输入的命令

set statusline=%<[%f]" 文件名
set statusline+=\ [%1*%M%*%n%R%H]               " buffer 编号和状态
set statusline+=\ [文件类型:\ %Y]                            
set statusline+=\ [格式:\ %{&ff}\ \|\ 编码:\ %{(&fenc!=''?&fenc:&enc).(&bomb!=''?'\ With\ Bom':'\ No\ Bom')}]
set statusline+=%=[当前光标所在:\ 第%l行,\ 第%c列\ 文件总计:\ %L行]


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

"----------------------------------------------------------------------
" 更改样式
"----------------------------------------------------------------------

" 更清晰的错误标注：默认一片红色背景，语法高亮都被搞没了
" 只显示红色或者蓝色下划线或者波浪线
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! clear SpellLocal
if has('gui_running')
	hi! SpellBad gui=undercurl guisp=red
	hi! SpellCap gui=undercurl guisp=blue
	hi! SpellRare gui=undercurl guisp=magenta
	hi! SpellRare gui=undercurl guisp=cyan
else
	hi! SpellBad term=standout ctermfg=1 term=underline cterm=underline
	hi! SpellCap term=underline cterm=underline
	hi! SpellRare term=underline cterm=underline
	hi! SpellLocal term=underline cterm=underline
endif

" 去掉 sign column 的白色背景
hi! SignColumn guibg=NONE ctermbg=NONE

" 修改行号为浅灰色，默认主题的黄色行号很难看，换主题可以仿照修改
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE 
	\ gui=NONE guifg=DarkGrey guibg=NONE

" 修正补全目录的色彩：默认太难看
hi! Pmenu guibg=gray guifg=black ctermbg=gray ctermfg=black
hi! PmenuSel guibg=gray guifg=brown ctermbg=brown ctermfg=gray


"----------------------------------------------------------------------
" 终端设置，隐藏行号和侧边栏
"----------------------------------------------------------------------
if has('terminal') && exists(':terminal') == 2
	if exists('##TerminalOpen')
		augroup VimUnixTerminalGroup
			au! 
			au TerminalOpen * setlocal nonumber signcolumn=no
		augroup END
	endif
endif


"----------------------------------------------------------------------
" quickfix 设置，隐藏行号
"----------------------------------------------------------------------
augroup VimInitStyle
	au!
	au FileType qf setlocal nonumber
augroup END




