scriptencoding utf-8

call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 启动页 {{{

    Plug 'mhinz/vim-startify'

"" }}}

"" 主题 {{{

    Plug 'joshdick/onedark.vim'
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'dracula/vim', { 'as': 'dracula' }

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 文件管理 {{{

    Plug 'lambdalisue/fern.vim'
    Plug 'yuki-yano/fern-preview.vim'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    Plug 'lambdalisue/glyph-palette.vim'

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 实用插件 {{{

    Plug 'andymass/vim-matchup'
    Plug 'yianwillis/vimcdoc'
    Plug 'lilydjwg/colorizer'
    Plug 'gko/vim-coloresque'
    Plug 'lifepillar/vim-colortemplate'
    Plug 'tpope/vim-surround'
    Plug 'liuchengxu/graphviz.vim'
    Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    
"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Markdown {{{

    Plug 'plasticboy/vim-markdown',      { 'for': 'markdown' }
    Plug 'mzlogin/vim-markdown-toc',     { 'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'UpdateToc', 'RemoveToc'] }

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Coding {{{

    Plug 'rebolek/vim-red'
    Plug 'Yggdroot/indentLine', { 'for': ['python', 'vim', 'sh']}
    Plug 'luochen1990/rainbow'
    Plug 'jiangmiao/auto-pairs'
    Plug 'dense-analysis/ale'
    Plug 'tpope/vim-commentary'
    Plug 'tomtom/tcomment_vim'
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'dradtke/vim-dap'
    Plug 'liuchengxu/vista.vim'
    Plug 'wfxr/minimap.vim'
    
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" UI {{{

    set termguicolors
    colorscheme dracula
    set background=dark

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 文件管理
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Fern {{{

"" 显示隐藏文件
let g:fern#default_hidden=1
let g:fern#renderer = 'nerdfont'

"" 关闭默认按键绑定
let g:fern#disable_default_mappings = 1

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer><nowait> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer><nowait> a <Plug>(fern-action-collapse)
  nmap <buffer><nowait> o <Plug>(fern-action-open)
  nmap <buffer><nowait> l <Plug>(fern-action-expand)
  nmap <buffer><nowait> n <Plug>(fern-action-new-path)
  nmap <buffer><nowait> N <Plug>(fern-action-new-file)
  nmap <buffer><nowait> c <Plug>(fern-action-copy)
  nmap <buffer><nowait> d <Plug>(fern-action-remove)
  nmap <buffer><nowait> m <Plug>(fern-action-move)
  nmap <buffer><nowait> r <Plug>(fern-action-rename)
  nmap <buffer><nowait> R <Plug>(fern-action-reload)
  nmap <buffer><nowait> h <Plug>(fern-action-hidden:toggle)
  nmap <buffer><nowait> t <Plug>(fern-action-mark)
  nmap <buffer><nowait> b <Plug>(fern-action-open:split)
  nmap <buffer><nowait> v <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

augroup FernGroup
  autocmd! *
  autocmd FileType fern setlocal norelativenumber | setlocal nonumber | call FernInit()
augroup END

"" 预览
function! s:fern_settings() abort
    nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
    nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
    nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
    nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
    autocmd!
    autocmd FileType fern call s:fern_settings()
augroup END

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 实用插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" vim-matchup {{{
" Improve performance
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_timeout = 100
let g:matchup_matchparen_insert_timeout = 30

" Enhanced matching with matchup plugin
let g:matchup_override_vimtex = 1

" Whether to enable matching inside comment or string
let g:matchup_delim_noskips = 0

" Show offscreen match pair in popup window
let g:matchup_matchparen_offscreen = {'method': 'popup'}

"" }}}


"" vim-surround {{{

"- ds 删除一个配对符号
"- cs 修改一个配对符号
"- ys 增加一个配对符号

"" }}}


"" vim-easy-align {{{

xnoremap <silent> ga <Plug>(EasyAlign)
nnoremap <silent> ga <Plug>(EasyAlign)
" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

"" }}}

"" which-key {{{
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<CR>
"" }}}

"" LeaderF {{{

let g:Lf_ReverseOrder = 1
let g:Lf_HideHelp = 1        "" don't show the help in normal mode
let g:Lf_ShowHidden = 1      "" show dot files
let g:Lf_UseCache = 0        "" Do not use cache file
let g:Lf_UseMemoryCache = 0  "" Refresh each time we call leaderf
let g:Lf_UseVersionControlTool = 0 " Do not use version control tool to list files under a directory since
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_PopupColorscheme = 'gruvbox_material'
let g:Lf_DefaultMode = 'FullPath'  ""Only fuzzy-search files names
let g:Lf_DefaultExternalTool = "rg" " Use rg as the default search tool

" Popup window settings
let w = float2nr(&columns * 0.8)
if w > 140
  let g:Lf_PopupWidth = 140
else
  let g:Lf_PopupWidth = w
endif
let g:Lf_PopupPosition = [0, float2nr((&columns - g:Lf_PopupWidth)/2)]

" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>f"
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
nnoremap \ :Leaderf rg<Cr>

noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
nnoremap <silent> <leader>fb :<C-U>Leaderf buffer --popup<CR>

noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
nnoremap <silent> <leader>fr :<C-U>Leaderf mru --popup<CR>

noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
nnoremap <silent> <leader>ft :<C-U>Leaderf bufTag --popup<CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" Search files in popup window
nnoremap <silent> <leader>ff :<C-U>Leaderf file --popup<CR>

" Grep project files in popup window
nnoremap <silent> <leader>fg :<C-U>Leaderf rg --no-messages --popup<CR>

" Search vim help files
nnoremap <silent> <leader>fh :<C-U>Leaderf help --popup<CR>


" Change keybinding in LeaderF prompt mode, use ctrl-n and ctrl-p to navigate
" items.
let g:Lf_CommandMap = {'<C-J>': ['<C-N>'], '<C-K>': ['<C-P>']}



" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

" Ignore certain files and directories when searching files
" set up working directory for git repository
let g:Lf_WorkingDirectoryMode = 'a'

let g:Lf_WildIgnore = {
    \ 'dir': ['.git', '__pycache__', '.DS_Store'],
    \ 'file': ['*.exe', '*.dll', '*.so', '*.o', '*.pyc', '*.jpg', '*.png',
    \ '*.gif', '*.db', '*.tgz', '*.tar.gz', '*.zip', '*.bin', '*.pptx',
    \ '*.xlsx', '*.docx', '*.pdf', '*.tmp', '*.wmv', '*.mkv', '*.mp4',
    \ '*.rmvb']
    \}

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" vim-markdown {{{

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:tex_conceal = ''
let g:vim_markdown_math = 0
let g:vim_markdown_new_list_item_indent = 0

let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Codeing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" indentLine {{{

let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊', '▏']

if has('gui_running')
    let g:indentLine_color_gui = '#A4E57E'
else
    let g:indentLine_color_term = 239
endif

"" }}}

"" rainbow {{{

let g:rainbow_active = 1 ""启用rainbow

"" }}}


"" ALE {{{

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_chaged = 'always'

"" 自定义error和warning图标
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

"" 显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = '✖ '
let g:ale_echo_msg_warning_str = '⚠ '
let g:ale_echo_msg_format = ' [ %severity% : %code% ] %s [ %linter% ]'

"" 使用指定的Linter
let g:ale_linters_explicit = 1
let g:ale_linters = {'python': ['flake8'], 'vim': ['vint']}
let g:ale_python_flake8_options="--ignore=E114,E116,E131 --max-line-length=120"
let g:ale_fixers = {'python': ['isort', 'black', 'remove_trailing_lines', 'trim_whitespace']}

"" 关闭本地列表,使用 quickfix
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

"" }}}


"" AsyncRun {{{

let g:asyncrun_open = 8    "" 自动打开 quickfix window ，高度为 8
let g:asyncrun_bell = 1    "" 任务结束时候响铃提醒
let $PYTHONUNBUFFERED = 1  "" 看到 Python 实时输出

"" }}}

"" vista {{{

let g:vista#renderer#icons = {
      \ 'member': '',
      \ }

" Do not echo message on command line
let g:vista_echo_cursor = 0
" Stay in current window when vista window is opened
let g:vista_stay_on_open = 0

nnoremap <silent> <Space>t :<C-U>Vista!!<CR>

"" }}}

"" LSP {{{
"" }}}