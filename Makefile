CC	= gcc
CCWIN64 = x86_64-w64-mingw32-gcc
CCWIN32	= i686-w64-mingw32-gcc
CCWIN	= $(CCWIN64)


rasm: rasm.c *.c *.h Makefile
	$(CC) $< -Wall -Ofast -lm -lrt -march=native -o $@

rasm.exe: rasm.c *.c *.h Makefile
	$(CCWIN) $< -Wall -Ofast -o $@

