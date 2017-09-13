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

module openal.al;

import openal.altypes;

version (AL_NO_PROTOTYPES) { } else {
	version = AL_PROTOTYPES;
}

version (Win32)
	extern (Windows) :
else
	extern (C) :


version (AL_PROTOTYPES) {

/**
 * OpenAL Maintenance Functions
 * Initialization and exiting.
 * State Management and Query.
 * Error Handling.
 * Extension Support.
 */

/** State management. */
ALvoid	alEnable( ALenum capability );
ALvoid	alDisable( ALenum capability ); 
ALboolean alIsEnabled( ALenum capability ); 

/** Application preferences for driver performance choices. */
ALvoid	alHint( ALenum target, ALenum mode );

/** State retrieval. */
ALboolean alGetBoolean( ALenum param );
ALint		alGetInteger( ALenum param );
ALfloat	alGetFloat( ALenum param );
ALdouble	alGetDouble( ALenum param );
ALvoid	alGetBooleanv( ALenum param, ALboolean* data );
ALvoid	alGetIntegerv( ALenum param, ALint* data );
ALvoid	alGetFloatv( ALenum param, ALfloat* data );
ALvoid	alGetDoublev( ALenum param, ALdouble* data );
ALchar*	alGetString( ALenum param );

ALvoid	alSetInteger( ALenum pname, ALint value );
ALvoid	alSetDouble( ALenum pname, ALdouble value );

/**
 * Error support.
 * Obtain the most recent error generated in the AL state machine.
 */
ALenum	alGetError( );


/** 
 * Extension support.
 * Obtain the address of a function (usually an extension)
 *  with the name fname. All addresses are context-independent. 
 */
ALboolean alIsExtensionPresent( ALchar* fname );


/** 
 * Extension support.
 * Obtain the address of a function (usually an extension)
 *  with the name fname. All addresses are context-independent. 
 */
ALvoid*	alGetProcAddress( ALchar* fname );


/**
 * Extension support.
 * Obtain the integer value of an enumeration (usually an extension) with the name ename. 
 */
ALenum	alGetEnumValue( ALchar* ename );




/**
 * LISTENER
 * Listener is the sample position for a given context.
 * The multi-channel (usually stereo) output stream generated
 *  by the mixer is parametrized by this Listener object:
 *  its position and velocity relative to Sources, within
 *  occluder and reflector geometry.
 */



/**
 *
 * Listener Environment:  default 0.
 */
ALvoid	alListeneri( ALenum param, ALint value );


/**
 *
 * Listener Gain:  default 1.0f.
 */
ALvoid	alListenerf( ALenum param, ALfloat value );


/**  
 *
 * Listener Position.
 * Listener Velocity.
 */
ALvoid	alListener3f( ALenum param, ALfloat v1, ALfloat v2, ALfloat v3 ); 


/**
 *
 * Listener Position:        ALfloat[3]
 * Listener Velocity:        ALfloat[3]
 * Listener Orientation:     ALfloat[6]  (forward and up vector).
 */
ALvoid	alListenerfv( ALenum param, ALfloat* values ); 

ALvoid	alGetListeneri( ALenum param, ALint* value );
ALvoid	alGetListenerf( ALenum param, ALfloat* value );
ALvoid	alGetListener3f( ALenum param, ALfloat* v1, ALfloat* v2, ALfloat* v3 ); 
ALvoid	alGetListenerfv( ALenum param, ALfloat* values ); 


/**
 * SOURCE
 * Source objects are by default localized. Sources
 *  take the PCM data provided in the specified Buffer,
 *  apply Source-specific modifications, and then
 *  submit them to be mixed according to spatial 
 *  arrangement etc.
 */



/** Create Source objects. */
ALvoid	alGenSources( ALsizei n, ALuint* sources ); 

/** Delete Source objects. */
ALvoid	alDeleteSources( ALsizei n, ALuint* sources );

/** Verify a handle is a valid Source. */ 
ALboolean alIsSource( ALuint id ); 

/** Set an integer parameter for a Source object. */
ALvoid	alSourcei( ALuint source, ALenum param, ALint value ); 
ALvoid	alSourcef( ALuint source, ALenum param, ALfloat value ); 
ALvoid	alSource3f( ALuint source, ALenum param, ALfloat v1, ALfloat v2, ALfloat v3 );
ALvoid	alSourcefv( ALuint source, ALenum param, ALfloat* values ); 

/** Get an integer parameter for a Source object. */
ALvoid	alGetSourcei( ALuint source,  ALenum param, ALint* value );
ALvoid	alGetSourcef( ALuint source,  ALenum param, ALfloat* value );
ALvoid	alGetSource3f( ALuint source,  ALenum param, ALfloat* v1, ALfloat* v2, ALfloat* v3 );
ALvoid	alGetSourcefv( ALuint source, ALenum param, ALfloat* values );

ALvoid	alSourcePlayv( ALsizei n, ALuint *sources );
ALvoid	alSourcePausev( ALsizei n, ALuint *sources );
ALvoid	alSourceStopv( ALsizei n, ALuint *sources );
ALvoid	alSourceRewindv(ALsizei n,ALuint *sources);

/** Activate a source, start replay. */
ALvoid	alSourcePlay( ALuint source );

/**
 * Pause a source, 
 *  temporarily remove it from the mixer list.
 */
ALvoid	alSourcePause( ALuint source );

/**
 * Stop a source,
 *  temporarily remove it from the mixer list,
 *  and reset its internal state to pre-Play.
 * To remove a Source completely, it has to be
 *  deleted following Stop, or before Play.
 */
ALvoid	alSourceStop( ALuint source );

/**
 * Rewinds a source, 
 *  temporarily remove it from the mixer list,
 *  and reset its internal state to pre-Play.
 */
ALvoid	alSourceRewind( ALuint source );



/**
 * BUFFER
 * Buffer objects are storage space for sample data.
 * Buffers are referred to by Sources. There can be more than
 *  one Source using the same Buffer data. If Buffers have
 *  to be duplicated on a per-Source basis, the driver has to
 *  take care of allocation, copying, and deallocation as well
 *  as propagating buffer data changes.
 */




/** Buffer object generation. */
ALvoid 	alGenBuffers( ALsizei n, ALuint* buffers );
ALvoid	alDeleteBuffers( ALsizei n, ALuint* buffers );
ALboolean alIsBuffer( ALuint buffer );

/**
 * Specify the data to be filled into a buffer.
 */
ALvoid	alBufferData( ALuint   buffer,
										 ALenum   format,
										 ALvoid*  data,
										 ALsizei  size,
										 ALsizei  freq );


ALvoid	alGetBufferi( ALuint buffer, ALenum param, ALint*   value );
ALvoid	alGetBufferf( ALuint buffer, ALenum param, ALfloat* value );




/**
 * Queue stuff
 */

ALvoid	alSourceQueueBuffers( ALuint source, ALsizei n, ALuint* buffers );
ALvoid	alSourceUnqueueBuffers( ALuint source, ALsizei n, ALuint* buffers );

/**
 * Knobs and dials
 */
ALvoid	alDistanceModel( ALenum value );
ALvoid	alDopplerFactor( ALfloat value );
ALvoid	alDopplerVelocity( ALfloat value );
ALvoid  alSpeedOfSound( ALfloat value );


} else { /* AL_NO_PROTOTYPES */

/**
 * OpenAL Maintenance Functions
 * Initialization and exiting.
 * State Management and Query.
 * Error Handling.
 * Extension Support.
 */

/** State management. */
ALvoid	(*alEnable)( ALenum capability );
ALvoid	(*alDisable)( ALenum capability ); 
ALboolean (*alIsEnabled)( ALenum capability ); 

/** Application preferences for driver performance choices. */
ALvoid	(*alHint)( ALenum target, ALenum mode );

/** State retrieval. */
ALboolean (*alGetBoolean)( ALenum param );
ALint		(*alGetInteger)( ALenum param );
ALfloat	(*alGetFloat)( ALenum param );
ALdouble	(*alGetDouble)( ALenum param );
ALvoid	(*alGetBooleanv)( ALenum param, ALboolean* data );
ALvoid	(*alGetIntegerv)( ALenum param, ALint* data );
ALvoid	(*alGetFloatv)( ALenum param, ALfloat* data );
ALvoid	(*alGetDoublev)( ALenum param, ALdouble* data );
ALchar*	(*alGetString)( ALenum param );

ALvoid	(*alSetInteger)( ALenum pname, ALint value );
ALvoid	(*alSetDouble)( ALenum pname, ALdouble value );

/**
 * Error support.
 * Obtain the most recent error generated in the AL state machine.
 */
ALenum	(*alGetError)( );


/** 
 * Extension support.
 * Obtain the address of a function (usually an extension)
 *  with the name fname. All addresses are context-independent. 
 */
ALboolean (*alIsExtensionPresent)( ALchar* fname );


/** 
 * Extension support.
 * Obtain the address of a function (usually an extension)
 *  with the name fname. All addresses are context-independent. 
 */
ALvoid*	(*alGetProcAddress)( ALchar* fname );


/**
 * Extension support.
 * Obtain the integer value of an enumeration (usually an extension) with the name ename. 
 */
ALenum	(*alGetEnumValue)( ALchar* ename );




/**
 * LISTENER
 * Listener is the sample position for a given context.
 * The multi-channel (usually stereo) output stream generated
 *  by the mixer is parametrized by this Listener object:
 *  its position and velocity relative to Sources, within
 *  occluder and reflector geometry.
 */



/**
 *
 * Listener Environment:  default 0.
 */
ALvoid	(*alListeneri)( ALenum param, ALint value );


/**
 *
 * Listener Gain:  default 1.0f.
 */
ALvoid	(*alListenerf)( ALenum param, ALfloat value );


/**  
 *
 * Listener Position.
 * Listener Velocity.
 */
ALvoid	(*alListener3f)( ALenum param, ALfloat v1, ALfloat v2, ALfloat v3 ); 


/**
 *
 * Listener Position:        ALfloat[3]
 * Listener Velocity:        ALfloat[3]
 * Listener Orientation:     ALfloat[6]  (forward and up vector).
 */
ALvoid	(*alListenerfv)( ALenum param, ALfloat* values ); 

ALvoid	(*alGetListeneri)( ALenum param, ALint* value );
ALvoid	(*alGetListenerf)( ALenum param, ALfloat* value );
ALvoid	(*alGetListener3f)( ALenum param, ALfloat* v1, ALfloat* v2, ALfloat* v3 ); 
ALvoid	(*alGetListenerfv)( ALenum param, ALfloat* values ); 


/**
 * SOURCE
 * Source objects are by default localized. Sources
 *  take the PCM data provided in the specified Buffer,
 *  apply Source-specific modifications, and then
 *  submit them to be mixed according to spatial 
 *  arrangement etc.
 */



/** Create Source objects. */
ALvoid	(*alGenSources)( ALsizei n, ALuint* sources ); 

/** Delete Source objects. */
ALvoid	(*alDeleteSources)( ALsizei n, ALuint* sources );

/** Verify a handle is a valid Source. */ 
ALboolean (*alIsSource)( ALuint id ); 

/** Set an integer parameter for a Source object. */
ALvoid	(*alSourcei)( ALuint source, ALenum param, ALint value ); 
ALvoid	(*alSourcef)( ALuint source, ALenum param, ALfloat value ); 
ALvoid	(*alSource3f)( ALuint source, ALenum param, ALfloat v1, ALfloat v2, ALfloat v3 );
ALvoid	(*alSourcefv)( ALuint source, ALenum param, ALfloat* values ); 

/** Get an integer parameter for a Source object. */
ALvoid	(*alGetSourcei)( ALuint source,  ALenum param, ALint* value );
ALvoid	(*alGetSourcef)( ALuint source,  ALenum param, ALfloat* value );
ALvoid	(*alGetSourcefv)( ALuint source, ALenum param, ALfloat* values );

ALvoid	(*alSourcePlayv)( ALsizei n, ALuint *sources );
ALvoid	(*alSourceStopv)( ALsizei n, ALuint *sources );

/** Activate a source, start replay. */
ALvoid	(*alSourcePlay)( ALuint source );

/**
 * Pause a source, 
 *  temporarily remove it from the mixer list.
 */
ALvoid	(*alSourcePause)( ALuint source );

/**
 * Stop a source,
 *  temporarily remove it from the mixer list,
 *  and reset its internal state to pre-Play.
 * To remove a Source completely, it has to be
 *  deleted following Stop, or before Play.
 */
ALvoid	(*alSourceStop)( ALuint source );



/**
 * BUFFER
 * Buffer objects are storage space for sample data.
 * Buffers are referred to by Sources. There can be more than
 *  one Source using the same Buffer data. If Buffers have
 *  to be duplicated on a per-Source basis, the driver has to
 *  take care of allocation, copying, and deallocation as well
 *  as propagating buffer data changes.
 */




/** Buffer object generation. */
ALvoid 	(*alGenBuffers)( ALsizei n, ALuint* buffers );
ALvoid	(*alDeleteBuffers)( ALsizei n, ALuint* buffers );
ALboolean (*alIsBuffer)( ALuint buffer );

/**
 * Specify the data to be filled into a buffer.
 */
ALvoid	(*alBufferData)( ALuint   buffer,
											ALenum   format,
											ALvoid*  data,
											ALsizei  size,
											ALsizei  freq );

ALvoid	(*alGetBufferi)( ALuint buffer, ALenum param, ALint*   value );
ALvoid	(*alGetBufferf)( ALuint buffer, ALenum param, ALfloat* value );




/**
 * Queue stuff
 */
ALvoid	(*alSourceQueueBuffers)( ALuint source, ALsizei n, ALuint* buffers );
ALvoid	(*alSourceUnqueueBuffers)( ALuint source, ALsizei n, ALuint* buffers );

/**
 * Knobs and dials
 */
ALvoid	(*alDistanceModel)( ALenum value );
ALvoid	(*alDopplerFactor)( ALfloat value );
ALvoid	(*alDopplerVelocity)( ALfloat value );
ALvoid	(*alSpeedOfSound) ( ALfloat value );


} /* AL_NO_PROTOTYPES */


