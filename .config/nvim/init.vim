" Vim-plug plugin setup
" ########################
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'				" Better status bar
Plug 'scrooloose/nerdtree'				" File browser
Plug 'Xuyuanp/nerdtree-git-plugin'			" Git integration for nerdtree
Plug 'scrooloose/syntastic'				" Syntax checking
Plug 'Valloric/YouCompleteMe', 
	\ { 'do': './install.py --tern-completer' }	" Autocomplete
Plug 'tpope/vim-fugitive'				" Better git
Plug 'airblade/vim-gitgutter'				" Git gutter
Plug 'majutsushi/tagbar'				" Tag browser
Plug 'scrooloose/nerdcommenter'				" Commenting shortcuts
Plug 'tpope/vim-surround'				" Change surroundings
Plug 'chriskempson/base16-vim'				" Color Schemes
Plug 'dag/vim-fish',	
	\ {'for': 'fish'}				" Fish syntax, etc
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript',					
	\ {'for': 'javascript'}				" Javascript syntax
Plug 'JamshedVesuna/vim-markdown-preview',
	\ {'for': 'markdown'}				" Markdown live preview
call plug#end()

" Keybindings
" ########################
let mapleader = ","			" change map-leader to comma from \
nmap <space> zz				" space centers current line
nmap <F8> :TagbarToggle<CR>		" tagbar

" General Settings
" ########################
set number				" Show line-numbers
set relativenumber			" Show relative line numbers as well
set cursorline				" Highlight the current line
set updatetime=250			" Update time: default=4; for gitgutter
syntax enable				" Enable syntax highlighting
filetype plugin indent on		" filetype detection & plugins, indent scripts on
set timeoutlen=1000 ttimeoutlen=0 	" mapping delay, key code delay (for immediate return to normal mode)
set shell=bash				" fish wont work right. set shell=bash
let g:markdown_fenced_languages = 
	\ ['html', 'python', 'bash=sh',
	\ 'javascript', 'fish' ]	" Set fenced codeblock syntax highlighting
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
" set t_Co=256			" I don't know what this does
set background=dark		" Dark/light variant
let base16colorspace=256	" Enable 256 colors
colorscheme base16-flat		" Choose color scheme

" Vim-Fish Settings
" ########################
autocmd FileType fish compiler fish		" Compiler for fish files 
autocmd FileType fish setlocal textwidth=79	" Wrapping
autocmd FileType fish setlocal foldmethod=expr	" Folding

" Various Package Settings
" ########################
let g:vim_markdown_folding_level = 1		" Make markdown fold at lvl 1
let vim_markdown_preview_github=1		" Markdown preview: github flavor
