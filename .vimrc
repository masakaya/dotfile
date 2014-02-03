" ===================================================
" File .vimrc
" Author : Masashi Kayahara <sylphs.mb@gmail.com >
" ===================================================
set nocompatible       " Use vim setting
scriptencoding utf-8   " Script encoding utf-8

"----------------------------------------------------
" Variable
"----------------------------------------------------
filetype off
if !executable(&shell) 
    set shell=sh
endif
let s:isUnix = has('unix')
let s:isWin  = has('win16') || has('win32') || has('win64')
let s:isCygwin = has('win32unix')
let s:isMac = !s:isWin && !s:isCygwin && (has('mac') || has('macunix') || has('guimacvim') || system('uname') =~? '^darwin')

"TBD
" Windows & Mac Setting
let $VIMHOME = expand('~/.vim')
let $VIMRC   = $VIMHOME.'/conf'

"----------------------------------------------------
" Load config
"----------------------------------------------------
"Load global config
if filereadable($VIMRC.'/.vimrc.global') | source $VIMRC/.vimrc.global | endif

"Load autocmd
if filereadable($VIMRC.'/.vimrc.autocmd') | source $VIMRC/.vimrc.autocmd | endif

"Load keymap
if filereadable($VIMRC.'/.vimrc.keymap') | source $VIMRC/.vimrc.keymap | endif

"Load diff keymap
if filereadable($VIMRC.'/.vimrc.diff') | source $VIMRC/.vimrc.diff | endif

"Load path
if filereadable($VIMRC.'/.vimrc.path') | source $VIMRC/.vimrc.path | endif

"Load plugin
if filereadable($VIMRC.'/.vimrc.plugin') | source $VIMRC/.vimrc.plugin | endif

"Load color ( depends plugin : neobundle )
"if filereadable($VIMRC.'/.vimrc.color') | source $VIMRC/.vimrc.color | endif

