" Only do this for Vim version 5.0 and later.

  " Dave's settings
  set csprg=/usr/bin/cscope
  set cst
  set showmatch
  set textauto
  set tags=s:/tags,s:/TAGS,./tags,./TAGS,tags,TAGS,$make/tags,$dma/tags
  set shellslash 
  filetype plugin on
  set directory=.,./.backup,/tmp

  " Changes for ubuntu
  set clipboard=unnamedplus
  set grepprg=/bin/grep

  " Remove all autocommands in case this file is sourced
  autocmd!

  " Turn on vim defaults (instead of vi compatibility)
  set nocompatible

   " Show end of line tabs/slashes
   :highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
   ":match ExtraWhitespace /\s\+$/
   :match ExtraWhitespace /\s\+\%#\@<!$/

   " Remove trailing whitespace only in specific filetypes.
   "autocmd BufWritePre *.pl,*.cpp,*.h :%s/\s\+//e

  "ubuntu changes
  set shell=/bin/sh
  set shellcmdflag=-c
  "set shellxquote=\"

  " Set window parameters
  set laststatus=2
  set ruler
  set noshowcmd
  set nowrap
  set sidescroll=1
  set splitbelow
  set showcmd
  set winheight=10

  " Set tab & indent options
  set wildchar=^I
  set expandtab
  set shiftwidth=3
  set tabstop=3
  set cindent
  "set cinoptions=t0,(s
  set cinoptions=,(s
  set formatoptions=croq2
  "set formatoptions=cq2

  " Set search options
  set nowrapscan
  set ignorecase
  set hlsearch

  " Keyword completion
  set complete=.,b,u

  " Set key mappings
  mapclear
  map <PageUp> 
  map <PageDown> 
  map <Home> 0
  map <End> $
  map <C-Left> b
  map <C-Right> w
  map <C-Home> 1G
  map <C-End> G$

  map <M-[> -
  map <M-]> +
  map <M-o> :only

  map <M-l> :bnext
  map <M-h> :bprevious
  map <M-k> <Up>
  map <M-j> <Down>

  map <M-c> :cd 

  map <M-b> :buffers:sbuffer 
  " map <C-F4> :bunload
  map <C-F4> :close


  " Remove white space from otherwise empty lines
  map <M-p>w :%s/^[ \t]\+$//``

  " Note that the following command prints the file as it exists on disk,
  " excluding any unsaved changes in the buffer.
  "map <M-p> :!ens %

  " Perforce mappings :)
  map <M-p>a :!p4 add %
  map <M-p>e :!p4 edit %
  "map <M-p>e :let z="!p4 edit ".(substitute (expand ("%:p"),"\\","/","g")):exec z
  map <M-p>c :!checkout %
  map <M-p>r :!p4 revert %:e

  set suffixes=.bak,.obj,.swp



  " Set gui parameters
  " set guifont=courier_new:h8:w6
"  set guifont=courier_new:h10:w6
  set lines=50
  set columns=80
  set guioptions=mg
  set mousehide

  " Set colors
  highlight Normal guibg=#f0f0f0
  highlight Cursor guibg=#00c0c0 guifg=NONE
  highlight StatusLine gui=NONE guibg=#c0c0c0 guifg=#202020
  highlight Constant gui=NONE guibg=grey95

  " Turn on syntax highlighting.
  set textauto
  syntax clear
  syntax on


  "source $VIMRUNTIME/macros/explorer.vim
  "source $VIMRUNTIME/plugin/explorer.vim
  "source $VIMRUNTIME/html2.vim
  source $VIMRUNTIME/mswin.vim
  "source $VIMRUNTIME/html.vim
  "source $VIMRUNTIME/un-html.vim



"	Dave's macros
:map <F12> :set wrap:noremap j gj:noremap k gk
" map <F11> "yy :grep -inr <C-R>y source <cr><cr>

:map ,e :e.
:map  :e #

":map \p O/*<PROTO>/)o^o</PROTO> <HLD></HLD> <LLD></LLD>*/
":map \p 1GO#!/usr/bin/perleval 'exec perl -S $0 ${1+"$@"}'if $running_under_some_shell;
:map \p 1GO#!/bin/env python# -*- coding: utf-8 -*-oimports:import unittestimport os


":map \c oclass  {   //instance variablespublic:protected:private://methodspublic:protected:private:}
:map \c :r ~/bin2/class.txt
:map \C :r ~/bin2/comment.txt

:map \h o#ifndef  ___FOO_H___#define  ___FOO_H___//  includes...//  defines...//  typedefs...//  constants...//  definitions for globally-scoped globals...//  prototypes...//  inline functions and function macros...#endif // ___FOO_H___
:map \i o//  includes...//  globally-scoped globals...//  private globals...//  functions...//  protected, private, and static functions...

":map \n O/* @file foo.h@descHeader file for FOO class.	© Copyright 1998National Instruments Corporation.All rights reserved.@author Dave Madden@since:  June 4, 1998*/
:map \n :r ~/bin2/header.txt

" :map \m O/* @file foo.cpp@descImplementation for the tFoo class.	© Copyright 1998National Instruments Corporation.All rights reserved.@author Dave Madden@since:  June 4, 1998*/
:map \m :r ~/bin2/source.txt

":map \s O#include <stdio.h>#include <stdint.h>#include <conio.h>#include <iostream>#include <string>#include <sstream>#include <algorithm>#include <vector>#include <map>#define tDwmStatus intusing namespace std;intmain (int argc, char **argv){int   rc = 0;return rc;}5k
:map \s O#include <stdio.h>#include <stdint.h>#include <stdlib.h>#include <string.h>intmain (int argc, char **argv){int   rc = 0;return rc;}5k

:map \l 73a-<ESC>o<ESC>
:imap \l <ESC>73a-<ESC>o<ESC>

" Quick date/time section insertion
   :map \t :imap \t <C-R>=strftime("%m/%d/%Y %H:%M:%S")<CR>0i\t=================:iunmap \t
   :imap \mdy <C-R>=strftime("%m/%d/%Y")<CR>

" -------------------------------------------------------------------------
" apple macros
" -------------------------------------------------------------------------

source $VIM/apple.vim

" -------------------------------------------------------------------------
" -------------------------------------------------------------------------


" -------------------------------------------------------------------------
"std:: mappings
" -------------------------------------------------------------------------
:imap \sss stringstream()
:map \sss O\sss


" -------------------------------------------------------------------------
"Compiler mappings
" -------------------------------------------------------------------------
map <F4> :cn<cr>
map <S-F4> :cp<cr>
map <F7> :wa<cr>:make debug <cr><cr>
map <S-F7> :wa<cr>:make clean <cr><cr>
map <F8> :wa<cr>:make release <cr><cr>
map <F1> :set columns=130<cr>:cope<cr>

