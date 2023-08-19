" set number
set nonu
set autowrite

set splitright

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

set wrap

set ai
set cin

set showmatch
set hlsearch
set incsearch
set ignorecase

syntax on

" Copy all stuff to the system clipboard (dd, yy, etc)
set clipboard+=unnamedplus

set ic

nnoremap <F3> :noh<cr>

nnoremap N :lnext<cr>
nnoremap B :lprevious<cr>
nnoremap <C-N> :lopen<cr>

com! FormatJSON %!python3 -m json.tool

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

set timeoutlen=1000
set ttimeoutlen=0

"================================== PLUGINS ================================

call plug#begin('~/.vim/plugged')

""Plug 'https://github.com/scrooloose/nerdtree'
""Plug 'https://github.com/jistr/vim-nerdtree-tabs'
""
""Plug 'jiangmiao/auto-pairs'
""
"" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
""
Plug 'https://github.com/plasticboy/vim-markdown'
""
Plug 'https://github.com/powerman/vim-plugin-ruscmd'

call plug#end()

" map nt :NERDTreeToggle<CR>
let g:vim_markdown_folding_disabled = 1
set foldenable
set suffixesadd=.md
