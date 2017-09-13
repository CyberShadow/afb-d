/**
 * OpenAL cross platform audio library
 * Copyright (C) 1999-2000 by authors.
 * This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Library General Public
 *  License as published by the Free Software Foundation; either
 *  version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 *  License along with this library; if not, write to the
 *  Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 *  Boston, MA  02111-1307, USA.
 * Or go to http://www.gnu.org/copyleft/lgpl.html
 */
 
#ifndef _ALUT_H_
#define _ALUT_H_

/* define platform type */
#if !defined(MACINTOSH_AL) && !defined(LINUX_AL) && !defined(WINDOWS_AL)
  #ifdef __APPLE__
    #define MACINTOSH_AL
    #else
    #ifdef _WIN32
      #define WINDOWS_AL
    #else
      #define LINUX_AL
    #endif
  #endif
#endif

#include "altypes.h"
#include "aluttypes.h"

#ifdef _WIN32
#define ALUTAPI
#define ALUTAPIENTRY    __cdecl
#define AL_CALLBACK
#else  /* _WIN32 */

#ifdef TARGET_OS_MAC
#if TARGET_OS_MAC
#pragma export on
#include <Carbon/Carbon.h>
#include "al.h"
#endif /* TARGET_OS_MAC */
#endif /* TARGET_OS_MAC */

#ifndef ALUTAPI
#define ALUTAPI
#endif

#ifndef ALUTAPIENTRY
#define ALUTAPIENTRY
#endif

#ifndef AL_CALLBACK
#define AL_CALLBACK
#endif 

#endif /* _WIN32 */

#ifdef __cplusplus
extern "C" {
#endif
   
#ifndef AL_NO_PROTOTYPES

ALUTAPI void ALUTAPIENTRY alutInit(int *argc, char *argv[]);
ALUTAPI void ALUTAPIENTRY alutExit(ALvoid);

#ifdef LINUX_AL
/* this function is Linux-specific and will probably be removed from this header */
ALUTAPI ALboolean ALUTAPIENTRY alutLoadWAV( const char *fname, ALvoid **wave, ALsizei *format, ALsizei *size, ALsizei *bits, ALsizei *freq );
#endif

#ifndef MACINTOSH_AL
/* Windows and Linux versions have a loop parameter, Macintosh doesn't */
ALUTAPI void ALUTAPIENTRY alutLoadWAVFile(ALbyte *file, ALenum *format, ALvoid **data, ALsizei *size, ALsizei *freq, ALboolean *loop);
ALUTAPI void ALUTAPIENTRY alutLoadWAVMemory(ALbyte *memory, ALenum *format, ALvoid **data, ALsizei *size, ALsizei *freq, ALboolean *loop);
#else
ALUTAPI void ALUTAPIENTRY alutLoadWAVFile(ALbyte *file, ALenum *format, ALvoid **data, ALsizei *size, ALsizei *freq);
ALUTAPI void ALUTAPIENTRY alutLoadWAVMemory(ALbyte *memory, ALenum *format, ALvoid **data, ALsizei *size, ALsizei *freq);
#endif
ALUTAPI void ALUTAPIENTRY alutUnloadWAV(ALenum format, ALvoid *data, ALsizei size, ALsizei freq);

#else
ALUTAPI void      ALUTAPIENTRY (*alutInit)(int *argc, char *argv[]);
ALUTAPI void 	  ALUTAPIENTRY (*alutExit)(ALvoid);

#ifdef LINUX_AL
/* this function is Linux-specific and will probably be removed from this header */
ALUTAPI ALboolean ALUTAPIENTRY (*alutLoadWAV)( const char *fname, ALvoid **wave, ALsizei *format, ALsizei *size, ALsizei *bits, ALsizei *freq );
#endif

#ifndef MACINTOSH_AL
ALUTAPI void      ALUTAPIENTRY (*alutLoadWAVFile(ALbyte *file,ALenum *format,ALvoid **data,ALsizei *size,ALsizei *freq,ALboolean *loop);
ALUTAPI void      ALUTAPIENTRY (*alutLoadWAVMemory)(ALbyte *memory,ALenum *format,ALvoid **data,ALsizei *size,ALsizei *freq,ALboolean *loop);
#else
ALUTAPI void      ALUTAPIENTRY (*alutLoadWAVFile(ALbyte *file,ALenum *format,ALvoid **data,ALsizei *size,ALsizei *freq);
ALUTAPI void      ALUTAPIENTRY (*alutLoadWAVMemory)(ALbyte *memory,ALenum *format,ALvoid **data,ALsizei *size,ALsizei *freq);
#endif
ALUTAPI void      ALUTAPIENTRY (*alutUnloadWAV)(ALenum format,ALvoid *data,ALsizei size,ALsizei freq);


#endif /* AL_NO_PROTOTYPES */

#ifdef TARGET_OS_MAC
   #if TARGET_OS_MAC
      #pragma export off
   #endif
#endif

#ifdef __cplusplus
}
#endif

#endif
