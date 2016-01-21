" Vim-plug plugin setup
" ########################
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'		" Better status bar
Plug 'scrooloose/syntastic'		" Syntax checking
Plug 'tpope/vim-fugitive'		" Better git
Plug 'airblade/vim-gitgutter'		" Git gutter
Plug 'scrooloose/nerdcommenter'		" Commenting shortcuts
Plug 'chriskempson/base16-vim'		" Color Schemes
call plug#end()

" General Settings
set number			" Show line-numbers
set relativenumber		" Show relative line numbers as well
set cursorline			" Highlight the current line
let mapleader = ","		" change map-leader to comma (default=\)
set updatetime=250		" Update time: default=4; for gitgutter

" Airline-status Settings
" ######################## 
set laststatus=2		" Allows airline-status to always appear
let g:airline_powerline_fonts=1	" Use the powerline fonts

" Syntastic Settings
" ########################

" Statusline config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Linters
let g:syntastic_sql_checkers = ['sqlint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers = ['jshint']
let g:syntastic_less_checkers = ['lessc']
let g:syntastic_jade_checkers = ['jade_lint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_enable_r_lintr_checker = 1

" Base16 Settings
" ########################
set t_Co=256			" I don't know what this does
set background=dark		" Dark/light variant
let base16colorspace=256	" Enable 256 colors
colorscheme base16-flat		" Choose color scheme
