
PREFIX=/usr/local
SHELL=/bin/sh

OS=$(shell uname || uname -s)
ARCH=$(shell arch || uname -m)

DC=gdc
DCFLAGS=-O -frelease

AR=ar
RANLIB=ranlib

LDFLAGS=-L.
PROGRAMS=gears testbitmap testgl testal

###########################################################

SDL_OBJECTS= active.o    cdrom.o     error.o     joystick.o  \
             main.o      quit.o      syswm.o     audio.o     \
             events.o    keyboard.o  mouse.o     rwops.o     \
             thread.o    version.o   byteorder.o endian.o    \
             getenv.o    keysym.o    mutex.o     sdl.o       \
             timer.o     video.o

ifeq ("$(OS) $(ARCH)","Darwin ppc")

LDFLAGS_GL=-Wl,-framework,OpenGL -Wl,-framework,GLUT -lobjc
LDFLAGS_AL=-Wl,-framework,OpenAL
LDFLAGS_SDL=-Wl,-framework,SDL -Wl,-framework,Cocoa -lSDL_d -Lsdl -lSDLmain_d

LIBS_D=libSDL_d.a sdl/libSDLmain_d.a
SDLMAIN_OBJECTS = sdl/SDLMain.o

# for Objective-C too:
CC=/usr/bin/gcc-3.3
CFLAGS=-O2 -Wall

else

LDFLAGS_GL=-lGL -lGLUT
LDFLAGS_AL=-lAL -lALUT
LDFLAGS_SDL=-lSDL -lSDL_d

LIBS_D=libSDL_d.a
SDLMAIN_OBJECTS=

CC=gcc
CFLAGS=-O2 -Wall

endif

###########################################################

all: $(PROGRAMS)
dlibs: $(LIBS_D)

clean:
	$(RM) -f *.o $(PROGRAMS) $(LIBS_D)

###########################################################

%.o : sdl/%.d
	$(DC) $(DCFLAGS) -c $<

glut.o: opengl/glut.d
	$(DC) $(DCFLAGS) -c $<

alut.o: openal/alut.d
	$(DC) $(DCFLAGS) -c $<

SDLMain.o: sdl/SDLMain.m
	$(CC) $(CFLAGS) -c $<

# libSDL_d are objects for wrapper "macros"
libSDL_d.a: $(SDL_OBJECTS)
	$(AR) cr $@ $^
	$(RANLIB) $@

# libSDLmain_d is patched SDLmain function
sdl/libSDLmain_d.a: $(SDLMAIN_OBJECTS)
	$(AR) cr $@ $^
	$(RANLIB) $@

###########################################################

%.o : %.d
	$(DC) $(DCFLAGS) -c $<

# "gears" is a plain OpenGL/GLUT test program
gears: gears.o glut.o
	$(DC) -o $@ $^ $(LDFLAGS) $(LDFLAGS_GL)

# "testbitmap" is a plain SDL test program
testbitmap: testbitmap.o picture.o $(LIBS_D)
	$(DC) -o $@ $^ $(LDFLAGS) $(LDFLAGS_SDL)

# finally, "testgl" test both OpenGL + SDL
testgl: testgl.o $(LIBS_D)
	$(DC) -o $@ $< $(LDFLAGS) $(LDFLAGS_GL)  $(LDFLAGS_SDL)

# "testal" is a plain OpenAL/ALUT test program
testal: testal.o alut.o
	$(DC) -o $@ $^ $(LDFLAGS) $(LDFLAGS_AL)

# "gdtest" is a test program for GD
gdtest: gdtest.o
	$(DC) -o $@ $< $(LDFLAGS) gd/gd.d -lgd -lpng -ljpeg

# "testmac" is a test program for Carbon
testmac: testmac.o
	$(DC) -o $@ $< $(LDFLAGS) -framework Carbon
