au BufRead,BufNewFile *.nsc,*.nscr,*.nscript setlocal filetype=nscript
au BufRead,BufNewFile *.txt if expand('<afile>:t') =~# '^\d\+\.txt$' | setlocal filetype=nscript | endif
