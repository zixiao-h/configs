" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

set background=light
let g:colors_name = "my"

highlight Normal ctermfg=black ctermbg=white guifg=black guibg=#F2EEDE
highlight Comment    ctermfg=green ctermbg=NONE   guifg=#216609 guibg=NONE
highlight Function   ctermfg=blue  ctermbg=NONE   guifg=#1E6FCC guibg=NONE
highlight String     ctermfg=yellow ctermbg=NONE  guifg=#B58900 guibg=NONE
highlight Keyword    ctermfg=red    ctermbg=NONE  guifg=#CC3E28 guibg=NONE
highlight Type       ctermfg=cyan   ctermbg=NONE  guifg=#158C86 guibg=NONE
" vim: sw=2

