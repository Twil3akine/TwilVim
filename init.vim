set nobackup        "そのまま

set noswapfile      "そのまま

set number      "行番号の表示
set expandtab      "tab=space
set autoindent      "インデントの自動化
set tabstop=4      "tab => space*4
set shiftwidth=4      "インデント後、右に2ずれる

"   カラースキーム
syntax enable
set background=dark
colorscheme twil

inoremap uu <Esc>:w<Enter>:colorscheme twil<Enter>

"j*2 => Esc
inoremap jj <Esc>

"保存で即時反映
augroup AutoReload
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source % 
    autocmd BufWritePost ~/.config/nvim/colors/twil.vim source % 
augroup END

"括弧補完
inoremap ( ()<LEFT>
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap < <><LEFT>

inoremap (<Enter> ()<LEFT><Enter><Enter><Up><Tab>
inoremap [<Enter> []<LEFT><Enter><Enter><Up><Tab>
inoremap {<Enter> {}<LEFT><Enter><Enter><Up><Tab>

"保存
inoremap ss <Esc>:w<Enter>
inoremap qq <Esc>:wq<Enter>

"クリップボードに保存
set clipboard+=unnamedplus

"言語別のコマンド
function! Setup()
    let kind = expand('%:e')  "拡張子の取得
    if kind=='c'  "Clangの場合
        inoremap cc <Esc>:w<Enter>:! cc %<Enter>:! ./a.out<Enter>

    elseif kind=='py'   "Pythonの場合
        inoremap cc <Esc>:w<Enter>:! python3 %<Enter>
    endif
endfunction

command! Setup call Setup()

autocmd BufNewFile,BufRead * Setup


"Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

    "プラグのリストを追加
    Plug 'tpope/vim-sensible'
    Plug 'preservim/nerdtree'

call plug#end()     ":PlugInstallでInstall

"NERDTree関係
let NERDTreeShowHidden = 1


nmap ff :NERDTreeToggle<ENTER>
nmap ww <C-w>w
nnoremap <silent> >> :vertical resize +5<Enter>
nnoremap <silent> << :vertical resize -5<Enter>
