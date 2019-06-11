" This loads after the yask plugins so that plugin mappings can
" be overwritten.

if filereadable(expand("~/.yask/vim/after/.vimrc.after"))
  source ~/.yask/vim/after/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
