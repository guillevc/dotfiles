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
Plugin 'justinmk/vim-sneak'
" Plugin 'kshenoy/vim-signature'
" Plugin 'Yggdroot/indentLine'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tmux-plugins/vim-tmux'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'tpope/vim-commentary'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
" Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mxw/vim-jsx'
" doesnt come with node support Plugin 'othree/javascript-libraries-syntax.vim'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

let g:sneak#streak = 1
"let g:indent_guides_guide_size = 2
let g:syntastic_javascript_checkers = ['jshint']
nnoremap <buffer> <F10> :exec '!python3' shellescape(@%, 1)<cr>

au BufRead,BufNewFile *.pc  set filetype=esqlc
let g:jsx_ext_required = 0

"
" Vim config
"
syntax enable " enable OR on ?
set nu
set encoding=utf-8
set title " set terminal title
set cmdheight=1
set scrolloff=3 " default is 0
set autoread " detect when a file is changed

" toggle invisible characters
" set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
" highlight SpecialKey ctermbg=none
set showbreak=↪
"nmap <leader>l :set list!<cr>

" indentation
set autoindent
set expandtab " inserts spaces instead of tabs
set tabstop=4
set shiftwidth=4 " when indenting with > use 4 spaces width
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2

set virtualedit=onemore

" set directory=tmp,/tmp
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking

set splitbelow
set splitright
set fillchars=vert:│
set hlsearch " use :noh to disable current highlight
set fileformat=unix
"set clipboard=unnamed


set mat=2 " how many tenths of a second to blink
set showmatch

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
let g:syntastic_warning_symbol = "△" "default: '>>' ⚠

let g:syntastic_loc_list_height = 5

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
" let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''

"
" YouCompleteMe
"
let g:ycm_register_as_syntastic_checker = 0 "default 1
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
let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode = 'ra'

"
" nerdtree
"
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen=0


" erlang complete
"set omnifunc=syntaxcomplete#Complete
"let g:ycm_cache_omnifunc = 0

