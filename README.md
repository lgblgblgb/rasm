# Important

This an **unofficial** and **obsoleted** repository, since the author now has its own one now: https://github.com/EdouardBERGE/rasm

# Rasm (roudoudou assembler) Z80 assembler

doc & latest official release at: http://www.cpcwiki.eu/forum/programming/rasm-z80-assembler-in-beta/

You may send requests/bugs in the same topic

## This software is using MIT "expat" license

« Copyright © BERGE Edouard (roudoudou)

Permission  is  hereby  granted,  free  of charge,to any person obtaining a copy  of  this  software
and  associated  documentation/source   files   of RASM, to deal in the Software without restriction,
including without limitation the  rights  to  use, copy,   modify,   merge,   publish,    distribute,
sublicense,  and/or  sell  copies of the Software, and  to  permit  persons  to  whom the Software is
furnished  to  do  so,  subject  to  the following conditions:

The above copyright  notice  and  this  permission notice   shall   be  included  in  all  copies  or
substantial portions of the Software.
The   Software   is   provided  "as is",   without warranty   of   any   kind,  express  or  implied,
including  but  not  limited  to the warranties of merchantability,   fitness   for   a    particular
purpose  and  noninfringement.  In  no event shall the  authors  or  copyright  holders be liable for
any  claim, damages  or other  liability,  whether in  an  action  of  contract, tort  or  otherwise,
arising from,  out of  or in connection  with  the software  or  the  use  or  other  dealings in the
Software. »

## Compilation - without Makefile

Linux compilation with GCC or Clang:
cc rasm_v0116.c -O2 -lm -lrt -march=native -o rasm
strip rasm

Windows compilation with Visual studio:
cl.exe rasm_v0116.c -O2 -Ob3

pure MS-DOS 32 bits compilation with Watcom:
wcl386 rasm_v0116.c -6r -6s -fp6 -d0 -k4000000 -ox /bt=DOS /l=dos4g

MorphOS compilation (ixemul):
ppc-morphos-gcc-5 -O2 -c -o rasm rasm_v0116.c
strip rasm

MacOS compilation:
cc rasm_v0116.c -O2 -lm -march=native -o rasm
