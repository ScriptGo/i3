scriptencoding utf-8

"" 主leader绑定为 <Space>
"" 副leader绑定为 ,

let g:mapleader="\<Space>"
let g:maplocalleader=','

"" 将 : 映射为 ;
nnoremap ; :
xnoremap ; :

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 功能键配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" F1 废弃这个键，防止调出系统帮助
noremap <F1> <ESC>

"" F2 普通模式下相对行号和绝对行号的切换
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <silent> <F2> :call NumberToggle()<CR>

"" F3 显示/隐藏缩进线
nnoremap <silent> <F3> :IndentLinesToggle<CR>:set list! lcs=tab:\\|\<Space><CR>

"" F4 显示/隐藏 Fern
nnoremap <silent> <F4> :Fern . -drawer -toggle -width=25 -reveal=%<CR>

"" F5 AsyncRun
nnoremap <silent> <F5>  :AsyncRun -raw python %<CR>

"" F6 打开QuickFix
nnoremap <silent> <F6> :call asyncrun#quickfix_toggle(6)<CR>

"" F7
"" F8

" 编辑vimrc相关配置文件
nnoremap <leader>e :edit $MYVIMRC<CR>
nnoremap <leader>ev <C-w>s<C-w>j:e $MYVIMRC<cr>


" Quick editing

nnoremap <leader>es <C-w>s<C-w>j:e ~/.vim/snippets/<cr>
nnoremap <leader>eg <C-w>s<C-w>j:e ~/.gitconfig<cr>
nnoremap <leader>ez <C-w>s<C-w>j:e ~/.zshrc<cr>
nnoremap <leader>et <C-w>s<C-w>j:e ~/.tmux.conf<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>


" 复制当前选中到系统剪切板
vmap <leader><leader>y "+y

" 将系统剪切板内容粘贴到vim
nnoremap <leader><leader>p "+p

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 保存与退出

nnoremap <silent> <Leader>fs :update<CR>
" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null
" Reload .vimrc
nnoremap <Leader>fR :source $MYVIMRC<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

inoremap <C-s> <C-o>:w<CR>
inoremap <C-q> <ESC>:wq<CR>

" Use sane regex expression (see `:h magic` for more info)
nnoremap / /\v

"插入模式下输入当前日期和时间
inoremap nwt <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
inoremap ddt <C-R>=strftime("%Y-%m-%d")<CR>


" Replace the word under cursor in current file
nnoremap <leader>rc :%s/\<<C-r><C-w>\>/


" Quit normal mode
nnoremap <silent> <Leader>q  :q<CR>
nnoremap <silent> <Leader>Q  :qa!<CR>

" Move half page faster
nnoremap <Leader>d  <C-d>
nnoremap <Leader>u  <C-u>


" jj | escaping
inoremap jj <Esc>
cnoremap jj <C-c>
" Quit visual mode
vnoremap v <Esc>
" Move to the start of line
nnoremap H ^
" Move to the end of line
nnoremap L $
" Redo
nnoremap U <C-r>


" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" Yank to the end of line
nnoremap Y y$

" Auto indent pasted text
" nnoremap p p=`]<C-o>

" Open shell in vim
if has('nvim') || has('terminal')
  map <silent> <Leader>' :terminal<CR>
else
  map <silent> <Leader>' :shell<CR>
endif
" Search result highlight countermand
nnoremap <silent> <Leader>sc :nohlsearch<CR>
" Toggle pastemode
nnoremap <silent> <Leader>tp :setlocal paste!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 插入模式 {{{

    "" 移动到行首/行尾
    inoremap <C-a> <Home>
    inoremap <C-e> <End>
    inoremap <C-d> <Delete>

    "" 向左/右移动一个字符
    inoremap <C-h> <Left>
    inoremap <C-l> <Right>

    "" 向上/下直线移动一个字符(行)
    inoremap <C-k> <C-\><c-o>gk
    inoremap <C-j> <C-\><c-o>gj

    "" 向左/右移动一个word
    inoremap <C-b> <C-\><C-o>b
    inoremap <C-f> <C-\><C-o>w

"" }}}

"" 命令模式 {{{

    cnoremap <C-a> <Home>
    cnoremap <C-e> <End>
    
    cnoremap <C-h> <Left>
    cnoremap <C-l> <Right>
    
    cnoremap <C-b> <Left>
    cnoremap <C-f> <Right>
    
    cnoremap <C-d> <Delete>

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 编辑

"" 向左/右删除一个字符(BS/Del)
inoremap <A-h> <C-o>db

"" 向左/右删除一个word
inoremap <A-l> <C-o>dw

"" 删除当前行
inoremap <C-d> <C-o>dd

"" 在当前行的下方/上方插入新行
if has('gui_running')
     inoremap <C-enter> <C-o>o
     inoremap <C-Down> <C-o>O
   else
     inoremap <s-enter> <C-o>o
     inoremap <s-Down> <C-o>O
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 窗口切换：ALT+SHIFT+hjkl
" 传统的 CTRL+hjkl 移动窗口不适用于 vim 8.1 的终端模式，CTRL+hjkl 在
" bash/zsh 及带文本界面的程序中都是重要键位需要保留，不能 tnoremap 的

    nnoremap <A-H> <c-w>h
    nnoremap <A-L> <c-w>l
    nnoremap <A-J> <c-w>j
    nnoremap <A-K> <c-w>k

    inoremap <A-H> <ESC><c-w>h
    inoremap <A-L> <ESC><c-w>l
    inoremap <A-J> <ESC><c-w>j
    inoremap <A-K> <ESC><c-w>k

if has('terminal') && exists(':terminal') == 2 && has('patch-8.1.1')
	" vim 8.1 支持 termwinkey ，不需要把 terminal 切换成 normal 模式
	" 设置 termwinkey 为 CTRL 加减号（GVIM），有些终端下是 CTRL+?
	" 后面四个键位是搭配 termwinkey 的，如果 termwinkey 更改，也要改
	
	set termwinkey=<c-_>
	tnoremap <A-H> <c-_>h
	tnoremap <A-L> <c-_>l
	tnoremap <A-J> <c-_>j
	tnoremap <A-K> <c-_>k
	tnoremap <A-q> <c-\><c-n>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Ctrl-Tab and Alt-Tab to switch tab
map    <C-Tab>  :tabnext<CR>
imap   <C-Tab>  <C-O>:tabnext<CR>
map    <M-Tab>  :tabprev<CR>
imap   <M-Tab>  <C-O>:tabprev<CR>
nnoremap <silent> <C-t> :tabnew<CR>
inoremap <silent> <C-t> <C-o>:tabnew<CR>

nnoremap <silent> <leader> tw :tabnew<CR>
nnoremap <silent> <leader> tc :tabclose<CR>
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<CR>/
nnoremap <leader>tm :tabmove<CR>

"" 切换Tab

noremap <silent> <leader>tn :tabnext<CR>
noremap <silent> <leader>tp :tabprev<CR>


noremap <silent><m-1> :tabn 1<CR>
noremap <silent><m-2> :tabn 2<CR>
noremap <silent><m-3> :tabn 3<CR>

inoremap <silent><m-1> <ESC>:tabn 1<CR>
inoremap <silent><m-2> <ESC>:tabn 2<CR>
inoremap <silent><m-3> <ESC>:tabn 3<CR>

" Tabs
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Buffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""{{{

nnoremap <silent> <S-Right>  :bnext<CR>
nnoremap <silent> <S-Left>   :bprevious<CR>

"设置切换Buffer快捷键
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>

"映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

"""关闭
nnoremap <C-x>  :bd<CR>

"""}}}

" Buffers
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>


" Buffer {

nnoremap <silent> <Leader>bp :bprevious<CR>
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <silent> <Leader>bf :bfirst<CR>
nnoremap <silent> <Leader>bl :blast<CR>
nnoremap <silent> <Leader>bd :bd<CR>
nnoremap <silent> <Leader>bk :bw<CR>

" }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 插件按键配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" Treat long lines as break lines (useful when moving around in them)
nmap j gj
nmap k gk
vmap j gj
vmap k gk
" sane regexes
nnoremap / /\v
vnoremap / /\v

" Don't jump when using * for search
nnoremap * *<c-o>

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Begining & End of line in Normal mode
noremap H ^
noremap L g_

" more natural movement with wrap on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l





" Easy window split; C-w v -> vv, C-w - s -> ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s



