" syntax
syntax on

" Neovim Setteing
:tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
autocmd TermOpen * startinsert

" lightline
if (has("termguicolors"))
    set termguicolors
endif
let g:cpp_class_scope_highlight = 1

" config
set number
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set smartindent
set expandtab
set fileencoding=utf-8
set tabstop=2
set softtabstop=4
set shiftwidth=2
set cursorline
set showmode
set showmatch
set backspace=indent,eol,start
set inccommand=split
set imdisable
set hidden
set nowritebackup
set conceallevel=0

" htmlのマッチするタグに%でジャンプ
source $VIMRUNTIME/macros/matchit.vim

hi Comment ctermfg=gray

if has('mouse')
  set mouse=a
endif

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " tomlファイルからプラグインのリストをロードしキャッシュする
  call dein#load_toml('~/.cache/dein/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.cache/dein/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}

