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
" NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'tpope/vim-rails'
NeoBundle 'trotzig/import-js'
NeoBundle 'bufexplorer.zip'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'mtscout6/vim-cjsx'
NeoBundle 'mattn/emmet-vim'
" NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'bling/vim-airline'
" haskell
NeoBundle 'Twinside/vim-hoogle'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'vim-scripts/hlint'
NeoBundle 'bitc/vim-hdevtools'
NeoBundle 'majutsushi/tagbar'
" color themes
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'trusktr/seti.vim'
NeoBundle "daylerees/colour-schemes", { "rtp": "vim/" }
NeoBundle 'gosukiwi/vim-atom-dark'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set fileencodings=utf-8,cp1251,koi8-r,cp866

" set langmap=ё`йqцwуeкrеtнyгuшiщoзpх[ъ]фaыsвdаfпgрhоjлkдlж\\;э'яzчxсcмvиbтnьmб\\,ю.Ё~ЙQЦWУEКRЕTНYГUШIЩOЗPХ{Ъ}ФAЫSВDАFПGРHОJЛKДLЖ:Э\\"ЯZЧXСCМVИBТNЬMЮ>Б<

color atom-dark
" color boxuk
" syntax enable
" set background=light
" colorscheme solarized

" set t_Co=256   " This is may or may not needed.
" set background=light
" colorscheme PaperColor
" let g:airline_theme='papercolor'

if has("gui_running")
  if has("win32")
    set guifont=Meslo_LG_M:h13:cRUSSIAN
  else
    set guifont=Meslo_LG_M_Regular_for_Powerline:h12

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
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

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
let g:ctrlp_max_files = 0
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_mode_map={ 'mode': 'active',
"                      \ 'active_filetypes': [],
"                      \ 'passive_filetypes': ['html', 'coffee', 'js'] }
" Syntastic for haskell
" map <silent> <Leader>e :Errors<CR>
" map <Leader>s :SyntasticToggleMode<CR>
" let g:syntastic_auto_loc_list=1
" ghc-mod Reload
map <silent> tu :call GHC_BrowseAll()<CR>
" ghc-mod Type Lookup
map <silent> tw :call GHC_ShowType(1)<CR>
" hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>
" haskell tagbar
nmap <leader>= :TagbarToggle<CR>
nmap <leader>nn :silent !./next<CR>
nmap <leader>pp :silent !./prev<CR>
let g:tagbar_autofocus = 1
" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()

let g:nerdtree_tabs_open_on_gui_startup = 0

set laststatus=2

" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" Mapping most frequent actions
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
map q: :q

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set syntax=ruby

syntax on
