/*
    SDL - Simple DirectMedia Layer
    Copyright (C) 1997-2004 Sam Lantinga

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

module sdl.main;

/* The application's main() function must be called with C linkage,
   and should be declared like this:

	extern(C)
	int SDL_main(int argc, char **argv)
	{
	}
*/

extern (C):

/* From the SDL library code -- needed for registering the app on Win32 */
version(Windows) {

import sdl.types;

/* This should be called from your WinMain() function, if any */
void SDL_SetModuleHandle(void *hInst);
}

/* From the SDL library code -- needed for registering QuickDraw on MacOS */
version (Macintosh) {

/* Forward declaration so we don't need to include QuickDraw.h */
struct QDGlobals {};

/* This should be called from your main() function, if any */
void SDL_InitQuickDraw(QDGlobals *the_qd);
}


version (Windows) {

import std.c.windows.windows;

extern(Windows) void* GetModuleHandle(char*);

// in modified SDLmain library:
extern (C) int D_console_main (int argc, char **argv);
extern (Windows) int D_WinMain(HINSTANCE hInst, HINSTANCE hPrev, LPSTR szCmdLine, int nCmdShow);

}
version (darwin) {

// in modified SDLmain library:
extern (C) int D_main (int argc, char **argv);

}

// user should always supply this function:
extern(C) int SDL_main(int argc, char **argv);

extern (D):

import std.string;

int SDL_InitApplication(char[][] args)
{
    char*[] c_args = new char*[args.length];
    foreach (int i, char[] arg; args) {
        c_args[i] = toStringz(arg);
    }

    version (Windows)
        return D_console_main(c_args.length, cast(char**) c_args);
    else version (darwin) 
        return D_main(c_args.length, cast(char**) c_args);
    else
        return SDL_main(c_args.length, cast(char**) c_args);
}

version (TestMain) {

extern(C)
int SDL_main(int argc, char **argv)
{
    try
    {
        /* Load SDL dynamic link library */
        if (SDL_Init(SDL_INIT_NOPARACHUTE) < 0)
            throw new Error("Error loading SDL");

        version(Windows)
            SDL_SetModuleHandle(GetModuleHandle(null));

        // do stuff
    }
    finally
    {
        SDL_Quit();
    }
}

int main(char[][] args)
{
    return SDL_InitApplication(args);
}

}
