set number
set updatetime=100
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set sw=2
set tabstop=2
set laststatus=2
set relativenumber
set autoindent
set smartindent

set list lcs=tab:\|\  
set background=dark

call plug#begin('~/.vim/plugged')

" ColorSchemes
Plug 'morhetz/gruvbox'

" IDE Features
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-vetur', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python']
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'ervandew/supertab'
Plug 'OmniSharp/omnisharp-vim' " C# and Unity

" Code Formatting and Syntax Highlighting
Plug 'Chiel92/vim-autoformat'
Plug 'pangloss/vim-javascript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Snippets
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

let mapleader=" "
nmap <Leader>nc :NERDTreeClose<CR>
nmap <Leader>nf :NERDTreeFind<CR>

let g:javascript_conceal_arrow_function       = "⇒"

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<s>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"

let g:indentLine_setColors = 0

let g:python3_host_prog="/usr/bin/python3"

command! -nargs=0 Prettier :CocCommand prettier.formatFile

