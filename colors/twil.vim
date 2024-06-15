" ファイル名を変えたときに自動追尾
let g:colors_name = expand('<sfile>:t:r')

" ダークテーマに設定
set background=dark

" ハイライトの削除
highlight clear

" ハイライトの設定
hi Normal ctermfg=15 ctermbg=16

hi Comment ctermfg=75

hi Constant ctermfg=111
hi String ctermfg=178
hi Character ctermfg=178

hi Identifier ctermfg=33

hi Statement ctermfg=212
hi Operator ctermfg=15

hi PreProc ctermfg=189

hi Type ctermfg=195

hi Special ctermfg=182

hi Underlined cterm=underline ctermfg=15

hi Ignore ctermfg=0

hi Error ctermfg=15 ctermbg=9

hi Todo ctermfg=0 ctermbg=11

hi LineNr ctermfg=69

" 括弧関連(手動で反映)
syntax match MyParen /[()]/ containedin=ALL
syntax match MyBrace /[{}]/ containedin=ALL
syntax match MyBracket /[\[\]]/ containedin=ALL

hi MyParen ctermfg=147
hi MyBrace ctermfg=147
hi MyBracket ctermfg=147

" Git関連
hi DiffAdd ctermfg=15 ctermbg=22
hi DiffChange ctermfg=15 ctermbg=4
hi DiffDelete ctermfg=15 ctermbg=1
hi DiffText ctermfg=15 ctermbg=5
