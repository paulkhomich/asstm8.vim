if exists("b:did_ftplugin")
  finish
endif

" Attention! .s is a basic for all assemblers (if you need - change .s for your specific stm8 asm fyletype)
au BufRead,BufNewFile *.s		set filetype=asstm8
