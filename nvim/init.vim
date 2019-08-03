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
call vundle#end()
filetype plugin indent on

" Colourscheme 
colorscheme wal

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = 'B'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Airline theme
let g:airline_theme = 'solarized'

" Spaces instead of tabs
set expandtab 		" tabs are spaces
set shiftwidth=4	" size of indents in spaces
set softtabstop=4	" simulate tabs with this many spaces

" Make fsharp work
autocmd BufNewFile,BufRead *.fsx set syntax=fsharp
autocmd BufNewFile,BufRead *.fs set syntax=fsharp
