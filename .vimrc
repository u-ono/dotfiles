set encoding=utf-8
scriptencoding utf-8

set fileencoding=utf-8 "保存時の文字コード
set fileencodings=ucs-boms, utf-8, euc-jp, cp932 "読み込み時の文字コード
set fileformats=unix, dos, mac "改行コードの自動判別、左が優先
set ambiwidth=double "特殊文字が崩れるのを防ぐ

set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set softtabstop=4 "連続した空白に対してTABキーやBSキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に前の行の構文からインデントを増減する
set shiftwidth=4 "smartindentで増減する幅

set incsearch "インクリメンタルサーチ、一文字ごとに検索を行う
set ignorecase "検索パターンに大文字小文字を区別しない
set smartcase "検索パターンに大文字があったら大文字小文字を区別する
set hlsearch "検索結果をハイライト
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR> 
"ESCキー二度押しでハイライトの切り替え

set whichwrap=b,s,h,l,<,>,[,],~ "カーソルの左右移動で行末から次の行頭へジャンプ
set number "行番号表示
set cursorline "カーソルラインをハイライト

set wildmenu "コマンドモードの補完
set history=5000 "保存するコマンド履歴の数
