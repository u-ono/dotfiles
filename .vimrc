" install dir 
let s:dein_dir = expand('~/.cache/dein') "<- dein によってプラグインがインストールされるディレクトリ ##########
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein installation check
if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" begin settings
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    " .toml file
    let g:rc_dir = expand('~/.vim/dein') "<- dein.toml dein_lazy.toml を読み込むディレクトリ ##########
    let s:toml = g:rc_dir . '/dein.toml'
    " let s:lazy_toml = g:rc_dir . '/dein_lazy.toml' "<- dein_lazy.toml を使わない場合はこの行をコメントアウト##########

    " read toml and cache
    call dein#load_toml(s:toml, {'lazy': 0})
    " call dein#load_toml(s:lazy_toml, {'lazy': 1}) "<- dein_lazy.toml を使わない場合はこの行をコメントアウト ##########

    " end settings
    call dein#end()
    call dein#save_state()
endif

" plugin installation check
if dein#check_install()
    call dein#install()
endif

"set encoding=utf-8
"scriptencoding utf-8 

set fileencoding=utf-8 "保存時の文字コード
set fileencodings=iso-2022-jp,sjis,utf-8,euc-jp,cp932 "読み込み時の文字コード
set fileformats=unix "改行コードの自動判別、左が優先
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

syntax on
colorscheme molokai
set t_Co=256

map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> cy ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
vnoremap <silent> cy c<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
nnoremap <silent> ciy ciw<C-r>0<ESC>:let@/=@1<CR>:noh<CR>

set clipboard=unnamed, autoselect
