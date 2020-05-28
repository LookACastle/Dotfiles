" General
set nocompatible
filetype off " Set on later 
set number
set linebreak
syntax on


set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dylanaraps/wal'
Plugin 'vim-syntastic/syntastic'
Plugin 'fsharp/vim-fsharp'
Plugin 'ap/vim-css-color'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'neoclide/coc.nvim'
call vundle#end()
filetype plugin indent on

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

" Spaces instead of tabs
set expandtab 		" tabs are spaces
set shiftwidth=4	" size of indents in spaces
set softtabstop=4	" simulate tabs with this many spaces

" Make fsharp work
autocmd BufNewFile,BufRead *.fsx set syntax=fsharp
autocmd BufNewFile,BufRead *.fs set syntax=fsharp
autocmd BufNewFile,BufRead *.fsl set syntax=fsharp
autocmd BufNewFile,BufRead *.fsp set syntax=fsharp
autocmd BufNewFile,BufRead *.fo set syntax=fasto

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
