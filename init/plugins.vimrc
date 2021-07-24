let mapleader=" "
nmap <Leader>nc :NERDTreeClose<CR>
nmap <Leader>nf :NERDTreeFind<CR>
nmap <Leader>f :GFiles<CR>

"=====OMNISHARP=====
let g:OmniSharp_server_type = 'roslyn'
let g:ale_linters = {
			\'cs': ["OmniSharp"]
			\}
let g:OmniSharp_server_use_mono = 1

"=====ULTISNIPS AND SUPERTAB=====
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<c-s>'
let g:UltiSnipsJumpForwardTrigger      = '<c-b>'
let g:UltiSnipsJumpBackwardTrigger     = '<c-z>'

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"

let g:indentLine_setColors = 0
let g:indentLine_setConceal = 0

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
