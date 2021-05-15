set nocompatible
set number
set updatetime=100
set mouse=a
set numberwidth=1
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
set noshowmode 
set clipboard=unnamed
set complete-=i

set rtp+=~/.fzf
set list lcs=tab:\|\  
set background=dark


call plug#begin('~/.vim/plugged')

" ColorSchemes and Fonts
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" IDE Features
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
let g:coc_global_extensions = ['coc-emmet', 'coc-vetur', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python']
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'ervandew/supertab'
Plug 'christoomey/vim-tmux-navigator' 
Plug 'preservim/nerdcommenter'
Plug 'OmniSharp/omnisharp-vim' " C# and Unity
Plug 'thosakwe/vim-flutter'
Plug 'wakatime/vim-wakatime'
Plug 'alvan/vim-closetag'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

" Code Formatting and Syntax Highlighting

"Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
"Plug 'Chiel92/vim-autoformat'
"Plug 'pangloss/vim-javascript'
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

"=====OMNISHARP=====
let g:OmniSharp_server_type = 'roslyn'
let g:ale_linters = {
			\'cs': ["OmniSharp"]
			\}
let g:OmniSharp_server_use_mono = 1

let g:javascript_conceal_arrow_function       = "⇒"

"=====ULTISNIPS AND SUPERTAB=====
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<c-s>'
let g:UltiSnipsJumpForwardTrigger      = '<c-b>'
let g:UltiSnipsJumpBackwardTrigger     = '<c-z>'

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"

let g:indentLine_setColors = 0

let g:python3_host_prog="/usr/bin/python3"

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'

imap ´ <Esc>
nmap á :OmniSharpCodeFormat<CR>
nmap ṕ :Prettier<CR>

" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)
autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)

let g:autoformat_autoindent = 1
let g:autoformat_retab = 0
let g:formatdef_my_custom_cs = '"astyle --mode=cs --style=allman -pcHs ".&shiftwidth'

let g:lsc_auto_map = v:true

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"======VIM CLOSE TAG====

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx,ts,tsx,vue'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

