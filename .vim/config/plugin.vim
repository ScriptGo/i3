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
    Plug 'lambdalisue/fern-git-status.vim'

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 实用插件 {{{

    Plug 'andymass/vim-matchup'
    Plug 'yianwillis/vimcdoc'
    Plug 'lilydjwg/colorizer'
    Plug 'gko/vim-coloresque'
    Plug 'mechatroner/rainbow_csv'
    Plug 'chrisbra/csv.vim'
    Plug 'liuchengxu/graphviz.vim'
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    Plug 'tpope/vim-surround'
    Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

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
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-commentary'
    Plug 'tomtom/tcomment_vim'
    Plug 'skywind3000/asyncrun.vim', {'for': ['python']}
    Plug 'dradtke/vim-dap'
    Plug 'liuchengxu/vista.vim'
    Plug 'wfxr/minimap.vim'
    
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'

    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

"" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()
filetype plugin indent on
