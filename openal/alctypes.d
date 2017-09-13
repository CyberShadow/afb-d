/**
 * OpenAL cross platform audio library
 * Copyright (C) 1999-2000 by authors.
 * Portions Copyright (C) 2004 by Apple Computer Inc.
 * This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Library General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
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

module openal.alctypes;

/** ALC boolean type. */
alias char ALCboolean;

/** ALC 8bit byte. */
alias byte ALCbyte;

/** ALC 8bit ubyte. */
alias ubyte ALCubyte;

/** OpenAL 8bit char */
alias char ALCchar;

/** ALC 16bit short integer type. */
alias short ALCshort;

/** ALC 16bit ushort integer type. */
alias ushort ALCushort;

/** ALC 32bit uinteger type. */
alias uint ALCuint;

/** ALC 32bit integer type. */
alias int ALCint;

/** ALC 32bit floating point type. */
alias float ALCfloat;

/** ALC 64bit double point type. */
alias double ALCdouble;

/** ALC 32bit type. */
alias uint ALCsizei;

/** ALC void type */
alias void ALCvoid;

/** ALC enumerations. */
alias int ALCenum;

/* Bad value. */
const int ALC_INVALID                              = -1;

/* Boolean False. */
const ALCboolean ALC_FALSE                          = 0;

/* Boolean True. */
const ALCboolean ALC_TRUE                           = 1;

/** Errors: No Error. */
const uint ALC_NO_ERROR                             = 0;

const uint ALC_MAJOR_VERSION                        = 0x1000;
const uint ALC_MINOR_VERSION                        = 0x1001;
const uint ALC_ATTRIBUTES_SIZE                      = 0x1002;
const uint ALC_ALL_ATTRIBUTES                       = 0x1003;

const uint ALC_DEFAULT_DEVICE_SPECIFIER             = 0x1004;
const uint ALC_DEVICE_SPECIFIER                     = 0x1005;
const uint ALC_EXTENSIONS                           = 0x1006;

const uint ALC_FREQUENCY							= 0x1007;
const uint ALC_REFRESH								= 0x1008;
const uint ALC_SYNC								    = 0x1009;

/**
 * Capture extension
 */
const uint ALC_CAPTURE_DEVICE_SPECIFIER            = 0x310;
const uint ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER    = 0x311;
const uint ALC_CAPTURE_SAMPLES                     = 0x312;

/** 
 * The device argument does not name a valid dvice.
 */
const uint ALC_INVALID_DEVICE                       = 0xA001;

/** 
 * The context argument does not name a valid context.
 */
const uint ALC_INVALID_CONTEXT                      = 0xA002;  

/**
 * A function was called at inappropriate time,
 *  or in an inappropriate way, causing an illegal state.
 * This can be an incompatible ALenum, object ID,
 *  and/or function.
 */
const uint ALC_INVALID_ENUM						 = 0xA003;

/** 
 * Illegal value passed as an argument to an AL call.
 * Applies to parameter values, but not to enumerations.
 */
const uint ALC_INVALID_VALUE                        = 0xA004;

/**
 * A function could not be completed,
 * because there is not enough memory available.
 */
const uint ALC_OUT_OF_MEMORY                        = 0xA005;



version(darwin) {

//*********************************************************************************
// OSX Specific Properties
//*********************************************************************************

/**
 * Convert Data When Loading.  Default false, currently applies only to monophonic sounds
 */
const uint ALC_CONVERT_DATA_UPON_LOADING         		= 0xF001;

/**
 * Render Quality.  
 */
const uint ALC_SPATIAL_RENDERING_QUALITY               = 0xF002;
const uint ALC_SPATIAL_RENDERING_QUALITY_HIGH          = 0x72716869; // 'rqhi';
const uint ALC_SPATIAL_RENDERING_QUALITY_LOW           = 0x72646c6f; // 'rdlo';

/**
 * Mixer Output Rate.
 */
const uint ALC_MIXER_OUTPUT_RATE		         		= 0xF003;

/**
 *  Maximum Mixer Busses.
 *  Set this before opening a new OAL device to indicate how many busses on the mixer
 *  are desired. Get returns either the current devices bus count value, or the value
 *  that will be used to open a device
 */
const uint ALC_MIXER_MAXIMUM_BUSSES                    = 0xF004;

/**
 * Render Channels.  
 * Allows a user to force OpenAL to render to stereo, regardless of the audio hardware being used
 */
const uint ALC_RENDER_CHANNEL_COUNT                    = 0xF005;
const uint ALC_RENDER_CHANNEL_COUNT_STEREO             = 0x72637374; // 'rcst';
const uint ALC_RENDER_CHANNEL_COUNT_MULTICHANNEL       = 0x72636d63; // 'rcmc';

} // version(darwin)

