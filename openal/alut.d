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
 
import openal.al;

version = ALUT_USE_LOOP;

const int ALUT_API_MAJOR_VERSION                = 1;
const int ALUT_API_MINOR_VERSION                = 0;

const int ALUT_ERROR_NO_ERROR                   = 0;
const int ALUT_ERROR_OUT_OF_MEMORY              = 0x201;
const int ALUT_ERROR_INVALID_ENUM               = 0x202;
const int ALUT_ERROR_INVALID_VALUE              = 0x203;
const int ALUT_ERROR_INVALID_OPERATION          = 0x204;
const int ALUT_ERROR_NOT_INITIALISED            = 0x205;
const int ALUT_ERROR_NO_DEVICE_AVAILABLE        = 0x206;
const int ALUT_ERROR_NO_CONTEXT_AVAILABLE       = 0x207;
const int ALUT_ERROR_FILE_NOT_FOUND             = 0x208;
const int ALUT_ERROR_FILE_NOT_READABLE          = 0x209;
const int ALUT_ERROR_UNSUPPORTED_FILE_TYPE      = 0x20A;
const int ALUT_ERROR_UNSUPPORTED_FILE_SUBTYPE   = 0x20B;
const int ALUT_ERROR_CORRUPT_OR_TRUNCATED_FILE  = 0x20C;

const int ALUT_WAVEFORM_SINE                    = 0x100;
const int ALUT_WAVEFORM_SQUARE                  = 0x101;
const int ALUT_WAVEFORM_SAWTOOTH                = 0x102;
const int ALUT_WAVEFORM_WHITENOISE              = 0x103;
const int ALUT_WAVEFORM_IMPULSE                 = 0x104;

extern (C) :
   
ALvoid	alutInit(ALint *argc,ALbyte **argv);
ALvoid	alutExit();

version (ALUT_USE_LOOP)
	ALvoid	alutLoadWAVFile(ALchar *file,ALenum *format,ALvoid **data,ALsizei *size,ALsizei *freq, ALboolean *loop);
else
	ALvoid	alutLoadWAVFile(ALchar *file,ALenum *format,ALvoid **data,ALsizei *size,ALsizei *freq);
ALvoid  alutLoadWAVMemory(ALbyte *memory,ALenum *format,ALvoid **data,ALsizei *size,ALsizei *freq);
ALvoid  alutUnloadWAV(ALenum format,ALvoid *data,ALsizei size,ALsizei freq);

extern (D) :

import std.string;

void alutInit(inout char[][] args)
{
    ALint argc = args.length;
    ALbyte*[] argv = new ALbyte*[argc];
    for(int i = 0; i < argc; i++)
        argv[i] = cast(ALbyte*) toStringz(args[i]);

    alutInit(&argc, argv.ptr);

    args.length = argc;
    for(int i = 0; i < argc; i++)
        args[i] = toString(cast(char*) argv[i]);
}

