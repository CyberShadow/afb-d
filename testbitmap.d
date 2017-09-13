/* Simple program:  Test bitmap blits */

import sdl.sdl;
import std.string;
import picture;
import std.c.stdio;

extern(C) void* memset(void*, int, uint);
extern(C) int atoi(char *nptr);

SDL_Surface *LoadXBM(SDL_Surface *screen, int w, int h, Uint8 *bits)
{
	SDL_Surface *bitmap;
	Uint8 *line;

	/* Allocate the bitmap */
	bitmap = SDL_CreateRGBSurface(SDL_SWSURFACE, w, h, 1, 0, 0, 0, 0);
	if ( bitmap == null ) {
		throw new Error("Couldn't allocate bitmap");
	}

	/* Copy the pixels */
	line = cast(Uint8 *)bitmap.pixels;
	w = (w+7)/8;
	while ( h-- ) {
		memcpy(line, bits, w);
		/* X11 Bitmap images have the bits reversed */
		{ int i, j; Uint8* buf; Uint8 byt;
			for ( buf=line, i=0; i<w; ++i, ++buf ) {
				byt = *buf;
				*buf = 0;
				for ( j=7; j>=0; --j ) {
					*buf |= (byt&0x01)<<j;
					byt >>= 1;
				}
			}
		}
		line += bitmap.pitch;
		bits += w;
	}
	return(bitmap);
}

extern(C)
int SDL_main(int argc, char **argv)
{
	SDL_Surface *screen;
	SDL_Surface *bitmap;
	Uint8  video_bpp;
	Uint32 videoflags;
	Uint8 *buffer;
	int i, done;
	SDL_Event event;

	/* Initialize SDL */
	if ( SDL_Init(SDL_INIT_VIDEO) < 0 ) {
		throw new Error("Couldn't initialize SDL");
	}

	video_bpp = 32;
	videoflags = SDL_SWSURFACE;
	while ( argc > 1 ) {
		--argc;
		if ( strcmp(argv[argc-1], "-bpp") == 0 ) {
			video_bpp = atoi(argv[argc]);
			--argc;
		} else
		if ( strcmp(argv[argc], "-warp") == 0 ) {
			videoflags |= SDL_HWPALETTE;
		} else
		if ( strcmp(argv[argc], "-hw") == 0 ) {
			videoflags |= SDL_HWSURFACE;
		} else
		if ( strcmp(argv[argc], "-fullscreen") == 0 ) {
			videoflags |= SDL_FULLSCREEN;
		} else {
			printf("Usage: %s [-bpp N] [-warp] [-hw] [-fullscreen]\n",
								argv[0]);
			return (1);
		}
	}

	/* Set 640x480 video mode */
	if ( (screen=SDL_SetVideoMode(640,480,video_bpp,videoflags)) == null ) {
		throw new Error("Couldn't set 640x480 video mode");
		return (2);
	}

	/* Set the surface pixels and refresh! */
	if ( SDL_LockSurface(screen) < 0 ) {
		throw new Error("Couldn't lock the display surface:");
		return (2);
	}
	buffer=cast(Uint8 *)screen.pixels;
	for ( i=0; i<screen.h; ++i ) {
		memset(buffer,(i*255)/screen.h, screen.pitch);
		buffer += screen.pitch;
	}
	SDL_UnlockSurface(screen);
	SDL_UpdateRect(screen, 0, 0, 0, 0);

	/* Load the bitmap */
	bitmap = LoadXBM(screen, picture_width, picture_height,
					cast(Uint8*)picture_bits);
	if ( bitmap == null ) {
		return(1);
	}

	/* Wait for a keystroke */
	done = 0;
	while ( !done ) {
		/* Check for events */
		while ( SDL_PollEvent(&event) ) {
			switch (event.type) {
				case SDL_MOUSEBUTTONDOWN: {
					SDL_Rect dst;

					dst.x = event.button.x - bitmap.w/2;
					dst.y = event.button.y - bitmap.h/2;
					dst.w = bitmap.w;
					dst.h = bitmap.h;
					SDL_BlitSurface(bitmap, null,
								screen, &dst);
					SDL_UpdateRects(screen,1,&dst);
					}
					break;
				case SDL_KEYDOWN:
					/* Any key press quits the app... */
					done = 1;
					break;
				case SDL_QUIT:
					done = 1;
					break;
				default:
					break;
			}
		}
	}
	SDL_FreeSurface(bitmap);
	return(0);
}

int main(char[][] args)
{
	return SDL_InitApplication(args);
}
