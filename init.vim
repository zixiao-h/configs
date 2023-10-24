map <Left> <C-W>h
map <Right> <C-W>l
map <Up> <C-W>k
map <Down> <C-W>j
nnoremap U <C-R>
set backspace=indent,eol,start
set mouse=a
inoremap <C-BS> <C-W>
nnoremap - :w<CR>
nnoremap H ^
nnoremap L $
nnoremap J <C-d>
nnoremap K <C-u>
nnoremap <C-L> w
nnoremap <C-H> b
inoremap <C-H> <C-Left>
inoremap <C-L> <C-Right>
nnoremap j gj
nnoremap k gk
nnoremap <Space> za
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p
nnoremap <Leader>; :w !python<CR>
nnoremap <leader>b :ls<CR>:b<Space>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

syntax on
set number
set autoindent
set hlsearch
set ignorecase
set incsearch
set noswapfile
set showcmd
set foldmethod=expr
set confirm
set autoread
set tabstop=4
set shiftwidth=4
set expandtab

set nocompatible
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/plugged')
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ap/vim-css-color'
Plugin 'matze/vim-tex-fold'
Plugin 'github/copilot.vim'
Plugin 'romainl/vim-cool'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
call vundle#end()
filetype plugin indent on

let g:airline_theme='sol'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#checks = []

let g:EasyMotion_do_mapping = 0
let g:tex_fold_override_foldtext = 1
let g:tex_fold_sec_char = '>'
let g:tex_fold_additional_envs = ['abstract', 'keywords', 'equation', 'figure', 'multline']

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_complete_enabled = 1
" Make selected text italic using VimTeX
vnoremap <silent> <leader>i :<C-u>s/\%V\(.*\)\%V/\\textit{\1}/g<CR>
vnoremap <silent> <leader>b :<C-u>s/\%V\(.*\)\%V/\\textbf{\1}/g<CR>

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

augroup vimtex_config
  au!
  au User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END
