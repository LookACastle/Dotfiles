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
set mouse= "Mouse does not enter any mode
syntax on

call plug#begin()

" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

" Coc.nvim

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Colourscheme
lua << EOF
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
})
vim.cmd.colorscheme "catppuccin"
EOF
colorscheme catppuccin

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
