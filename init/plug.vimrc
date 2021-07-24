call plug#begin('~/.vim/plugged')

" ColorSchemes and Fonts
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

" IDE Features
Plug 'terryma/vim-multiple-cursors'
"Plug 'vim-airline/vim-airline-themes'
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
