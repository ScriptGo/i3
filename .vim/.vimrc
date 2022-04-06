"" 全局配置 {{{

set nocompatible        "" 关闭兼容模式
set shortmess=atI       "" 不显示援助乌干达儿童的提示


"" 编码配置

set encoding=utf-8        "" 内部编码
scriptencoding utf-8
set termencoding=utf-8    "" 终端编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gbk,gb2312,big5 "" 自动识别文件编码
set fileencoding=utf-8    "" 编辑及保存文件编码

"" 定义配置文件目录

let $VIMCONFIG=$HOME.'/.vim'
let s:config = $VIMCONFIG.'/config'

"" 定义LoadScript命令加载配置文件

command! -nargs=1 LoadScript exec 'source '.s:config.'/'.'<args>'

"" 加载配置文件

LoadScript base.vim          "" 基础配置
LoadScript map.vim           "" 按键映射
LoadScript plugin.vim        "" 插件列表
LoadScript config.vim        "" 插件配置

"" Disable
let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
let g:loaded_node_provider = 0
let g:did_install_default_menus = 1

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

let g:loaded_2html_plugin = 1
let g:loaded_zipPlugin = 1
let loaded_gzip = 1
let g:loaded_tarPlugin = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_matchit = 1
let g:loaded_matchparen = 1

"" }}}
