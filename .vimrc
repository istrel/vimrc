if has("gui_running")
  if has("win32")
    set guifont=Meslo_LG_M:h12:cRUSSIAN
  else
    set guifont=Monaco:h14
  endif
  set guioptions=egt
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
  color twilight
endif

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

match ErrorMsg '\%>80v.\+'

filetype off

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on
