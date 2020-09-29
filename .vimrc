
"----------------------------
" プラグインvim-plug(:PlugInstall)
"----------------------------
call plug#begin()

Plug 'vim-airline/vim-airline' "vim-airline
Plug 'vim-airline/vim-airline-themes'

Plug 'iamcco/markdown-preview.vim' "Markdown
"Using :MarkdownPreview, :MarkdownPreviewStop

call plug#end()


"----------------------------
" 検索
"----------------------------
set hlsearch "検索ハイライトの設定
set incsearch "インクリメンタルサーチの設定

"-----------------------
" タブ&インデント
"-----------------------
" タブの代わりに空白文字を挿入する
set expandtab
" タブ文字の表示幅
set tabstop=4
" Vimが挿入するインデントの幅
set shiftwidth=4
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent


"----------------------------
" 表示
"----------------------------
syntax on "シンタックスハイライト
set number "行番号の設定
set cursorline "カーソルラインの設定
set listchars=tab:^\ ,trail:~ "行末のスペースの可視化
set virtualedit=onemore "行末の1文字先まで移動可   
set fenc=utf-8 "文字コードをUTF-8に
set wildmenu "コマンドライン補完
set showmatch "対応する括弧やブレースを表示する

" Do not make .swp
set noswapfile

" Escを2回押すとハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR> 

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>
inoremap ""  ""<left>
inoremap $$  $$<left>
inoremap ''  ''<left>
inoremap ()  ()<left>
inoremap <>  <><left>
inoremap []  []<left>

" カラースキーマの設定
colorscheme molokai
set t_Co=256
set showtabline=2
syntax enable " 構文に色を付ける
set background=dark "暗い背景色に合わせた配色にする
set ambiwidth=double "○や□の文字が崩れる問題を回避

" Powerline系フォントを利用する
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'papercolor'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:previm_open_cmd = 'open -a Google\ Chrome' "ブラウザとしてGoogle Chrome

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_alt_sep = '⮁'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''



