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

module openal.altypes;

/** OpenAL boolean type. */
alias char ALboolean;

/** OpenAL 8bit byte. */
alias byte ALbyte;

/** OpenAL 8bit ubyte. */
alias ubyte ALubyte;

/** OpenAL 8bit char */
alias char ALchar;

/** OpenAL 16bit short integer type. */
alias short ALshort;

/** OpenAL 16bit ushort integer type. */
alias ushort ALushort;

/** OpenAL 32bit uinteger type. */
alias uint ALuint;

/** OpenAL 32bit integer type. */
alias int ALint;

/** OpenAL 32bit floating point type. */
alias float ALfloat;

/** OpenAL 64bit double point type. */
alias double ALdouble;

/** OpenAL 32bit type. */
alias uint ALsizei;

/** OpenAL void type */
alias void ALvoid;

/** OpenAL enumerations. */
alias int ALenum;

/* Bad value. */
const int AL_INVALID                                 = -1;

/* Disable value. */
const uint AL_NONE									 = 0;

/* Boolean False. */
const ALboolean AL_FALSE                             = 0;

/* Boolean True. */
const ALboolean AL_TRUE                              = 1;

/** Indicate source has absolute coordinates. */
const uint AL_SOURCE_ABSOLUTE                       = 0x201;

/** Indicate Source has listener relative coordinates. */
const uint AL_SOURCE_RELATIVE                       = 0x202;

/**
 * Directional source, inner cone angle, in degrees.
 * Range:    [0-360] 
 * Default:  360
 */
const uint AL_CONE_INNER_ANGLE                      = 0x1001;

/**
 * Directional source, outer cone angle, in degrees.
 * Range:    [0-360] 
 * Default:  360
 */
const uint AL_CONE_OUTER_ANGLE                      = 0x1002;

/**
 * Specify the pitch to be applied, either at source,
 *  or on mixer results, at listener.
 * Range:	 [0.5-2.0]
 * Default:  1.0
 */
const uint AL_PITCH                                 = 0x1003;

/** 
 * Specify the current location in three dimensional space.
 * OpenAL, like OpenGL, uses a right handed coordinate system,
 *  where in a frontal default view X (thumb) points right, 
 *  Y points up (index finger), and Z points towards the
 *  viewer/camera (middle finger). 
 * To switch from a left handed coordinate system, flip the
 *  sign on the Z coordinate.
 * Listener position is always in the world coordinate system.
 */ 
const uint AL_POSITION                              = 0x1004;
  
/** Specify the current direction as forward vector. */
const uint AL_DIRECTION                             = 0x1005;
  
/** Specify the current velocity in three dimensional space. */
const uint AL_VELOCITY                              = 0x1006;

/**
 * Indicate whether source has to loop infinite.
 * Type: ALboolean
 * Range:    [AL_TRUE, AL_FALSE]
 * Default:  AL_FALSE
 */
const uint AL_LOOPING                               = 0x1007;

/**
 * Indicate the buffer to provide sound samples. 
 * Type: ALuint.
 * Range: any valid Buffer id.
 */
const uint AL_BUFFER                                = 0x1009;

/**
 * Indicate the gain (volume amplification) applied. 
 * Type:     ALfloat.
 * Range:    ]0.0-  ]
 * A value of 1.0 means un-attenuated/unchanged.
 * Each division by 2 equals an attenuation of -6dB.
 * Each multiplicaton with 2 equals an amplification of +6dB.
 * A value of 0.0 is meaningless with respect to a logarithmic
 *  scale; it is interpreted as zero volume - the channel
 *  is effectively disabled.
 */
const uint AL_GAIN                                  = 0x100A;

/**
 * Indicate minimum source attenuation.
 * Type:     ALfloat
 * Range:	 [0.0 - 1.0]
 *
 * Logarithmic
 */
const uint AL_MIN_GAIN                              = 0x100D;

/**
 * Indicate maximum source attenuation.
 * Type:	 ALfloat
 * Range:	 [0.0 - 1.0]
 *
 * Logarithmic
 */
const uint AL_MAX_GAIN                              = 0x100E;

/** 
 * Specify the current orientation.
 * Type:	 ALfv6 (at/up)
 * Range:	 N/A
 */
const uint AL_ORIENTATION                           = 0x100F;

/**
 * Specify the channel mask. (Creative)
 * Type:	 ALuint
 * Range:	 [0 - 255]
 */
const uint AL_CHANNEL_MASK =                          0x3000;


/**
 * Source state information
 */
const uint AL_SOURCE_STATE                          = 0x1010;
const uint AL_INITIAL                               = 0x1011;
const uint AL_PLAYING                               = 0x1012;
const uint AL_PAUSED                                = 0x1013;
const uint AL_STOPPED                               = 0x1014;

/**
 * Buffer Queue params
 */
const uint AL_BUFFERS_QUEUED =                        0x1015;
const uint AL_BUFFERS_PROCESSED =                     0x1016;

/**
 * Source buffer position information
 */
const uint AL_SEC_OFFSET =                            0x1024;
const uint AL_SAMPLE_OFFSET =                         0x1025;
const uint AL_BYTE_OFFSET =                           0x1026;

/*
 * Source type (Static, Streaming or undetermined)
 * Source is Static if a Buffer has been attached using AL_BUFFER
 * Source is Streaming if one or more Buffers have been attached using alSourceQueueBuffers
 * Source is undetermined when it has the NULL buffer attached
 */
const uint AL_SOURCE_TYPE                           = 0x1027;
const uint AL_STATIC                                = 0x1028;
const uint AL_STREAMING                             = 0x1029;
const uint AL_UNDETERMINED                          = 0x1030;

/** Sound buffers: format specifier. */
const uint AL_FORMAT_MONO8                          = 0x1100;
const uint AL_FORMAT_MONO16                         = 0x1101;
const uint AL_FORMAT_STEREO8                        = 0x1102;
const uint AL_FORMAT_STEREO16                       = 0x1103;

/**
 * source specific reference distance
 * Type: ALfloat
 * Range:  0.0 - +inf
 *
 * At 0.0, no distance attenuation occurs.  Default is
 * 1.0.
 */
const uint AL_REFERENCE_DISTANCE                    = 0x1020;

/**
 * source specific rolloff factor
 * Type: ALfloat
 * Range:  0.0 - +inf
 *
 */
const uint AL_ROLLOFF_FACTOR                        = 0x1021;

/**
 * Directional source, outer cone gain.
 *
 * Default:  0.0
 * Range:    [0.0 - 1.0]
 * Logarithmic
 */
const uint AL_CONE_OUTER_GAIN                       = 0x1022;

/**
 * Indicate distance above which sources are not
 * attenuated using the inverse clamped distance model.
 *
 * Default: +inf
 * Type: ALfloat
 * Range:  0.0 - +inf
 */
const uint AL_MAX_DISTANCE                          = 0x1023;

/** 
 * Sound samples: frequency, in units of Hertz [Hz].
 * This is the number of samples per second. Half of the
 *  sample frequency marks the maximum significant
 *  frequency component.
 */
const uint AL_FREQUENCY                             = 0x2001;
const uint AL_BITS                                  = 0x2002;
const uint AL_CHANNELS                              = 0x2003;
const uint AL_SIZE                                  = 0x2004;
const uint AL_DATA                                  = 0x2005;

/**
 * Buffer state.
 *
 * Not supported for public use (yet).
 */
const uint AL_UNUSED                                = 0x2010;
const uint AL_PENDING                               = 0x2011;
const uint AL_PROCESSED                             = 0x2012;


/** Errors: No Error. */
const uint AL_NO_ERROR                              = 0;

/** 
 * Illegal name passed as an argument to an AL call.
 */
const uint AL_INVALID_NAME                          = 0xA001;

/** 
 * Illegal enum passed as an argument to an AL call.
 */
const uint AL_ILLEGAL_ENUM                          = 0xA002;
const uint AL_INVALID_ENUM                          = 0xA002;  

/** 
 * Illegal value passed as an argument to an AL call.
 * Applies to parameter values, but not to enumerations.
 */
const uint AL_INVALID_VALUE                         = 0xA003;
  
/**
 * A function was called at inappropriate time,
 *  or in an inappropriate way, causing an illegal state.
 * This can be an incompatible ALenum, object ID,
 *  and/or function.
 */
const uint AL_ILLEGAL_COMMAND                       = 0xA004;
const uint AL_INVALID_OPERATION                     = 0xA004;

/**
 * A function could not be completed,
 * because there is not enough memory available.
 */
const uint AL_OUT_OF_MEMORY                         = 0xA005;


/** Context strings: Vendor Name. */
const uint AL_VENDOR                                = 0xB001;
const uint AL_VERSION                               = 0xB002;
const uint AL_RENDERER                              = 0xB003;
const uint AL_EXTENSIONS                            = 0xB004;

/** Global tweakage. */

/**
 * Doppler scale.  Default 1.0
 */
const uint AL_DOPPLER_FACTOR                        = 0xC000;
 
/**
 * Tweaks speed of propagation.
 */
const uint AL_DOPPLER_VELOCITY                      = 0xC001;

/**
 * Speed of Sound in units per second
 */
const uint AL_SPEED_OF_SOUND                        = 0xC003;

/**
 * Distance models
 *
 * used in conjunction with DistanceModel
 *
 * implicit: NONE, which disances distance attenuation.
 */
const uint AL_DISTANCE_MODEL                        = 0xD000;
const uint AL_INVERSE_DISTANCE                      = 0xD001;
const uint AL_INVERSE_DISTANCE_CLAMPED              = 0xD002;
const uint AL_LINEAR_DISTANCE                       = 0xD003;
const uint AL_LINEAR_DISTANCE_CLAMPED               = 0xD004;
const uint AL_EXPONENT_DISTANCE                     = 0xD005;
const uint AL_EXPONENT_DISTANCE_CLAMPED             = 0xD006;



