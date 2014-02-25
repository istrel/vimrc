set guifont=Consolas:h12:cRUSSIAN
color twilight
set guioptions=egt
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
endif

set nobackup
set noswapfile
set number

autocmd BufWritePre * :%s/\s\+$//e
set tabstop=2 shiftwidth=2 expandtab

set autoread

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
