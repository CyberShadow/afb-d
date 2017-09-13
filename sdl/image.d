/*
    SDL_image:  An example image loading library for use with SDL
    Copyright (C) 1999-2004 Sam Lantinga

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public
    License along with this library; if not, write to the Free
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

    Sam Lantinga
    slouken@libsdl.org
*/

/* $Id: image.d,v 1.2 2005/04/24 12:05:06 afb Exp $ */

/* A simple library to load images of various formats as SDL surfaces */

module sdl.image;

import sdl.sdl;
import sdl.Version;       // "version" is a D keyword

extern (C) :

/* Printable format: "%d.%d.%d", MAJOR, MINOR, PATCHLEVEL
*/
const uint SDL_IMAGE_MAJOR_VERSION	= 1;
const uint SDL_IMAGE_MINOR_VERSION	= 2;
const uint SDL_IMAGE_PATCHLEVEL	= 4;

/* This macro can be used to fill a version structure with the compile-time
 * version of the SDL_image library.
 */
void SDL_IMAGE_VERSION(out SDL_version X)
{
	X.major = SDL_IMAGE_MAJOR_VERSION;
	X.minor = SDL_IMAGE_MINOR_VERSION;
	X.patch = SDL_IMAGE_PATCHLEVEL;
}

/* This function gets the version of the dynamically linked SDL_image library.
   it should NOT be used to fill a version structure, instead you should
   use the SDL_IMAGE_VERSION() macro.
 */
SDL_version * IMG_Linked_Version();

/* Load an image from an SDL data source.
   The 'type' may be one of: "BMP", "GIF", "PNG", etc.

   If the image format supports a transparent pixel, SDL will set the
   colorkey for the surface.  You can enable RLE acceleration on the
   surface afterwards by calling:
	SDL_SetColorKey(image, SDL_RLEACCEL, image->format->colorkey);
 */
SDL_Surface * IMG_LoadTyped_RW(SDL_RWops *src, int freesrc, char *type);
/* Convenience functions */
SDL_Surface * IMG_Load(char *file);
SDL_Surface * IMG_Load_RW(SDL_RWops *src, int freesrc);

/* Invert the alpha of a surface for use with OpenGL
   This function is now a no-op, and only provided for backwards compatibility.
*/
int IMG_InvertAlpha(int on);

/* Functions to detect a file type, given a seekable source */
int IMG_isBMP(SDL_RWops *src);
int IMG_isPNM(SDL_RWops *src);
int IMG_isXPM(SDL_RWops *src);
int IMG_isXCF(SDL_RWops *src);
int IMG_isPCX(SDL_RWops *src);
int IMG_isGIF(SDL_RWops *src);
int IMG_isJPG(SDL_RWops *src);
int IMG_isTIF(SDL_RWops *src);
int IMG_isPNG(SDL_RWops *src);
int IMG_isLBM(SDL_RWops *src);

/* Individual loading functions */
SDL_Surface * IMG_LoadBMP_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadPNM_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadXPM_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadXCF_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadPCX_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadGIF_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadJPG_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadTIF_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadPNG_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadTGA_RW(SDL_RWops *src);
SDL_Surface * IMG_LoadLBM_RW(SDL_RWops *src);

SDL_Surface * IMG_ReadXPMFromArray(char **xpm);

/* We'll use SDL for reporting errors */
alias SDL_SetError	IMG_SetError;
alias SDL_GetError	IMG_GetError;

