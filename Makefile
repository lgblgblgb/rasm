CC	= gcc
CFLAGS	= -Wall -Ofast -fno-common -flto
LDFLAGS	= -lm
CCWIN64 = x86_64-w64-mingw32-gcc
CCWIN32	= i686-w64-mingw32-gcc
CCWIN	= $(CCWIN64)
ALLDEPS	= Makefile


rasm: rasm.c *.c *.h $(ALLDEPS)
	$(CC) $< $(CFLAGS) $(LDFLAGS) -o $@

rasm.exe: rasm.c *.c *.h $(ALLDEPS)
	$(CCWIN) $< $(CFLAGS) -fno-asynchronous-unwind-tables -o $@

clean:
	rm -f rasm rasm.exe

install: rasm
	cp rasm /usr/local/bin/rasm
	ls -l /usr/local/bin/rasm
	strip /usr/local/bin/rasm
	ls -l /usr/local/bin/rasm
