" General
set nocompatible
filetype on  
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set linebreak
syntax on


call plug#begin()

" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dylanaraps/wal'
Plug 'vim-syntastic/syntastic'
Plug 'fsharp/vim-fsharp'
Plug 'ap/vim-css-color'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'lervag/vimtex'
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'
Plug 'dense-analysis/ale'
call plug#end()

" Coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Colourscheme 
colorscheme wal

" Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Airline theme
let g:airline_theme = 'solarized'

" Automatically compile latex
let g:vimtex_compiler_method = 'tectonic'

" Make fsharp work
autocmd BufNewFile,BufRead *.fsx set syntax=fsharp
autocmd BufNewFile,BufRead *.fs set syntax=fsharp
autocmd BufNewFile,BufRead *.fsl set syntax=fsharp
autocmd BufNewFile,BufRead *.fsp set syntax=fsharp
autocmd BufNewFile,BufRead *.fo set syntax=fasto

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" haskell-vim
let g:haskell_indent_case_alternative = 1

" ale
let g:ale_linters = {}
let g:ale_linters.haskell = ['hlint']
