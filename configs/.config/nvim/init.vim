" Номера строк
" set number
set nonu
" Автосохранение буферов файлов при открытии через args
set autowrite

" Открытие новых файлов справа, а не слева.
""set splitbelow
set splitright

" Табы
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" Перенос длинных строк
set wrap

" Автоотступ для новых строк и отступы в стиле Си
set ai
set cin

" Подсветка при поиске + скобок
set showmatch
set hlsearch
set incsearch
set ignorecase

" При вставке сохраняются отступы
""set pastetoggle=
""set paste


" Подсветка синтаксиса
syntax on

" Копировать в системный буфер ВСЁ
set clipboard+=unnamedplus

" Поиск без учета регистра
set ic


nnoremap <F3> :noh<cr>
""nnoremap <F4> :make!<cr>
""nnoremap <F5> :make! run<cr>

nnoremap N :lnext<cr>
nnoremap B :lprevious<cr>
nnoremap <C-N> :lopen<cr>

com! FormatJSON %!python3 -m json.tool

"" Подсветка скобочек другим цветом
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
