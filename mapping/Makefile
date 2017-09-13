
CC=gcc
CFLAGS=-Wall -O2 -g

DC=gdc
DFLAGS=-O -fdebug

LDFLAGS=-lm -lpthread -lphobos


all: testmapping

MAPPINGS=iso88591.o cp437.o cp1252.o macroman.o

# ISO Latin-1 (simple!)
# http://www.unicode.org/Public/MAPPINGS/ISO8859/8859-1.TXT
iso88591.d: 8859-1.TXT
	./mapping2lookup.pl `echo $@ | sed -e s/.d//` < $< > $@

# DOS Latin Console
# http://www.unicode.org/Public/MAPPINGS/VENDORS/MICSFT/PC/CP437.TXT
cp437.d: CP437.TXT
	./mapping2lookup.pl `echo $@ | sed -e s/.d//` < $< > $@

# Windows "Latin-1"
# http://www.unicode.org/Public/MAPPINGS/VENDORS/MICSFT/WINDOWS/CP1252.TXT
cp1252.d: CP1252.TXT
	./mapping2lookup.pl `echo $@ | sed -e s/.d//` < $< > $@

# Mac OS Roman
# http://www.unicode.org/Public/MAPPINGS/VENDORS/APPLE/ROMAN.TXT
macroman.d: ROMAN.TXT
	./mapping2lookup.pl `echo $@ | sed -e s/.d//` < $< > $@


%.o : %.d
	$(DC) $(DFLAGS) -c -o $@ $<

testmapping: testmapping.o mapping.o $(MAPPINGS)

check: testmapping
	./testmapping
	xargs ./testmapping < latin1.txt

clean:
	rm -f *.o testmapping
