" Vim filetype plugin file
" Language: H-Expression (.hex)
" Maintainer: statusfailed

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" Set comment string for commenting plugins (nerd commenter, etc.)
setlocal commentstring=#\ %s

" Allow b:undo_ftplugin to undo this
let b:undo_ftplugin = "setlocal commentstring<"
