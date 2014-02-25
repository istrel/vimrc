if has("gui_running")
  if has("win32")
    set guifont=Consolas:h12:cRUSSIAN
  else
    set guifont=Monaco:h14
  endif
  set guioptions=egt
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
  color twilight
endif

set nobackup
set noswapfile
set number
set smartindent

autocmd BufWritePre * :%s/\s\+$//e
set tabstop=2 shiftwidth=2 expandtab

set autoread

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
