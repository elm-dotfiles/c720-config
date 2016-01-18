" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'scrooloose/syntastic'		" syntax checking
NeoBundle 'scrooloose/nerdcommenter'		" commenting
NeoBundle 'tpope/vim-fugitive'			" improved git
NeoBundle 'airblade/vim-gitgutter'		" gitgutter
NeoBundle 'bling/vim-airline'			" better statusbar
NeoBundle 'chriskempson/base16-vim'		" base16 colors
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" End neobundle stuff

" color scheme
set t_Co=256		"Set colors 256
set background=dark
let base16colorspace=256
colorscheme base16-default

" enable line numbers
set number

" set the leader key: 
let mapleader = ","		"default is \ many people choose ,

" Set update time
" Usefule for vim-gitgutter, as default update is 4 seconds
set updatetime=250

" Needed for airline
set laststatus=2

" Recommended statusline settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntastic checkers
let g:syntastic_javascript_checkers = ['eslint'] 
let g:syntastic_sql_checkers = ['sqlint']
let g:syntastic_html_checkers = ['jshint']
let g:syntastic_jade_checkers = ['jade_lint']
let g:syntastic_JSON_checkers = ['jsonlint']
let g:syntastic_Markdown_checkers = ['mdl']
let g:syntastic_LESS_checkers = ['lessc']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_r_checkers = ['lint']
