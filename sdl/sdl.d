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

/* Main include header for the SDL library */

module sdl.sdl;

import sdl.types;
import sdl.getenv;
import sdl.error;
import sdl.rwops;
import sdl.timer;
import sdl.audio;
import sdl.cdrom;
import sdl.joystick;
import sdl.events;
import sdl.video;
import sdl.byteorder;
import sdl.Version;	// "version" is a D keyword

extern(C):

/* As of version 0.5, SDL is loaded dynamically into the application */

/* These are the flags which may be passed to SDL_Init() -- you should
   specify the subsystems which you will be using in your application.
*/
const uint SDL_INIT_TIMER		= 0x00000001;
const uint SDL_INIT_AUDIO		= 0x00000010;
const uint SDL_INIT_VIDEO		= 0x00000020;
const uint SDL_INIT_CDROM		= 0x00000100;
const uint SDL_INIT_JOYSTICK	= 0x00000200;
const uint SDL_INIT_NOPARACHUTE	= 0x00100000;	/* Don't catch fatal signals */
const uint SDL_INIT_EVENTTHREAD	= 0x01000000;	/* Not supported on all OS's */
const uint SDL_INIT_EVERYTHING	= 0x0000FFFF;

/* This function loads the SDL dynamically linked library and initializes 
 * the subsystems specified by 'flags' (and those satisfying dependencies)
 * Unless the SDL_INIT_NOPARACHUTE flag is set, it will install cleanup
 * signal handlers for some commonly ignored fatal signals (like SIGSEGV)
 */
int SDL_Init(Uint32 flags);

/* This function initializes specific SDL subsystems */
int SDL_InitSubSystem(Uint32 flags);

/* This function cleans up specific SDL subsystems */
void SDL_QuitSubSystem(Uint32 flags);

/* This function returns mask of the specified subsystems which have
   been initialized.
   If 'flags' is 0, it returns a mask of all initialized subsystems.
*/
Uint32 SDL_WasInit(Uint32 flags);

/* This function cleans up all initialized subsystems and unloads the
 * dynamically linked library.  You should call it upon all exit conditions.
 */
void SDL_Quit();
