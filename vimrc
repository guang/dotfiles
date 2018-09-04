set nocompatible 
" ================ General Config ====================

set number                      "show line number
set so=999
set showcmd                     "show incomplete cmds at bottom
set showmode                    "show current mode at bottom
set cursorline                  "highlight the line cursor is on
set gcr=a:blinkon0              "no cursor blink
set visualbell                  "no sounds
set hlsearch                    "highlight search
set omnifunc=syntaxcomplete#Complete
syntax on
let mapleader=','               "\x to ,x
let maplocalleader=';;'            "local leader

" ================ vim-plug Setup ====================

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'
Plug 'LaTeX-Box-Team/LaTeX-Box'
" Plug 'Lokaltog/powerline'
" Plug 'tpope/vim-fugitive'
Plug 'wincent/command-t'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
" Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'derekwyatt/vim-scala'
" Plug 'fatih/vim-go'

call plug#end()

" ================ Colortheme Setup ====================

:set background=light
colorscheme solarized

" ================ Turn Off Swap Files ====================

set noswapfile
set nobackup
set nowb

" ================ Window ===================

set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" ================ Indentation ====================

" set autoindent
" set smartindent
set smarttab
set shiftwidth=2
" set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
set wrap

" ================ Folds ====================

set foldmethod=indent               "fold based on indent
set foldnestmax=1                   "deepest fold is 3 levels
set nofoldenable                    "dont fold by default

" ================ Custom ====================

nnoremap <esc> :noh<return><esc>

" ================ Plugins ====================
" --------------- python-mode setup ------------------
" let g:pymode_rope = 0
" 
" " Documentation
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'
" 
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
" let g:pymode_lint_write = 1
" 
" " Support virtualenv
" let g:pymode_virtualenv = 1
" 
" " Enable breakpoints plugin
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_key = '<leader>b'
" 
" " syntax highlighting
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
" 
" " Don't autofold code
" let g:pymode_folding = 0
" 
" Ignore pep8 errors
let g:pymode_lint_ignore = ["E501", "E402",]
" 
" --------------- vim-go setup ------------------
"  " use goimports for formatting
let g:go_fmt_command = "goimports"

" turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" --------------- vim-go setup ------------------
let g:CommandTWildIgnore=&wildignore . ",*/node_modules"
