set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'tmux-plugins/vim-tmux'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'tpope/vim-commentary'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"
" Vim config
"
syntax enable " enable OR on ?
set nu
set encoding=utf-8

" indentation
set autoindent
set expandtab " inserts spaces instead of tabs
set tabstop=4
set shiftwidth=4 " when indenting with > use 4 spaces width
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

set virtualedit=onemore
set directory=tmp,/tmp
set scrolloff=0 " default is 0
set splitbelow
set splitright
set fillchars=vert:│
set hlsearch " use :noh to disable current highlight
set fileformat=unix
"set showmatch
"set clipboard=unnamed

let g:filetype_pl="prolog" " prolog syntax on pl files
let python_highlight_all=1

" mappings
map ñ $

"
" syntastic
"
" recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1 "default: 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_highlighting = 1 "default: 1
let g:syntastic_auto_jump = 3 "default: 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗" "default: '>>'
let g:syntastic_warning_symbol = "⚠" "default: '>>'

"
" gruvbox
"
set bg=dark
let g:gruvbox_contrast_dark = 'medium' " medium(default), soft or hard
colorscheme gruvbox

"
" vim-airline
"
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled = 1

"
" YouCompleteMe
"
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:ycm_show_diagnostics_ui = 0 "needed to let syntastic work propperly - default 1
" will put icons in Vim's gutter on lines that have a diagnostic set.
" Turning this off will also turn off the YcmErrorLine and YcmWarningLine
" highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"
" ctrlp
"
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

"
" nerdtree
"
map <C-n> :NERDTreeToggle<CR>
