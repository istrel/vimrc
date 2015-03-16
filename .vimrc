"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'gosukiwi/vim-atom-dark'
NeoBundle 'tpope/vim-rails'
NeoBundle 'trotzig/import-js'
NeoBundle 'bufexplorer.zip'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'mtscout6/vim-cjsx'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'bling/vim-airline'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set fileencodings=utf-8,cp1251,koi8-r,cp866

set langmap=ё`йqцwуeкrеtнyгuшiщoзpх[ъ]фaыsвdаfпgрhоjлkдlж\\;э'яzчxсcмvиbтnьmб\\,ю.Ё~ЙQЦWУEКRЕTНYГUШIЩOЗPХ{Ъ}ФAЫSВDАFПGРHОJЛKДLЖ:Э\\"ЯZЧXСCМVИBТNЬMЮ>Б<

color atom-dark

if has("gui_running")
  if has("win32")
    set guifont=Meslo_LG_M:h12:cRUSSIAN
  else
    set guifont=Meslo_LG_M_Regular_for_Powerline:h11

    let g:airline_powerline_fonts = 1
  endif
  set guioptions=egt
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  color atom-dark-256
  " let g:solarized_termcolors=256
endif

let mapleader = ' '

set encoding=utf-8

set nobackup
set noswapfile
set number
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

set autoread

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype off

set wildmode=longest,list

filetype plugin indent on

" Show tabs with airline
let g:airline#extensions#tabline#enabled = 1        " Enable airline for tab-bar
let g:airline#extensions#tabline#show_buffers = 0   " Don't display buffers in tab-bar with single tab
let g:airline#extensions#tabline#fnamemod = ':t'    " Display only filename in tab

" Indent guides settings
" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['nerdtree']

" CtrlP settings
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|build|bower_components)$'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }

set laststatus=2

" Mapping most frequent actions
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
map q: :q

syntax on
