set nocompatible

" HLSL
au BufNewFile,BufRead *.fx,*.fxl,*.hlsl setf fx

" NSF
au BufNewFile,BufRead *.nsf setf cfg

" vsh, psh
au BufNewFile,BufRead *.vsh,*.psh setf masm

" as
au BufNewFile,BufRead *.as setf actionscript

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

set columns=120
set lines=50
set nowrap
set guioptions+=b
set backupdir=%Temp%
set directory=%Temp%

set fileencodings=ucs-bom,utf-8,cp949

if has( 'gui_running' )
	set guifont=Droid_Sans_Mono:h10:cANSI
endif

