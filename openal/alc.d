
module openal.alc;

import openal.altypes;
import openal.alctypes;

version (ALC_NO_PROTOTYPES) { } else {
	version = ALC_PROTOTYPES;
}

version (Win32)
	extern (Windows) :
else
	extern (C) :

alias ALCvoid ALCdevice;
alias ALCvoid ALCcontext;

version (ALC_PROTOTYPES) {

ALCchar*   alcGetString(ALCdevice *device,ALCenum param);
ALCvoid    alcGetIntegerv(ALCdevice *device,ALCenum param,ALCsizei size,ALCint *data);

ALCdevice* alcOpenDevice(ALchar *deviceName);
ALCvoid    alcCloseDevice(ALCdevice *device);

ALCcontext*alcCreateContext(ALCdevice *device,ALCint *attrList);
ALCboolean alcMakeContextCurrent(ALCcontext *context);
ALCvoid	  alcProcessContext(ALCcontext *context);
ALCcontext*alcGetCurrentContext();
ALCdevice* alcGetContextsDevice(ALCcontext *context);
ALCvoid	  alcSuspendContext(ALCcontext *context);
ALCvoid    alcDestroyContext(ALCcontext *context);

ALCenum	  alcGetError(ALCdevice *device);

ALCboolean alcIsExtensionPresent(ALCdevice *device,ALCchar *extName);
ALCvoid *  alcGetProcAddress(ALCdevice *device,ALCchar *funcName);
ALCenum	  alcGetEnumValue(ALCdevice *device,ALCchar *enumName);

/*
 * Capture functions
 */
ALCdevice* alcCaptureOpenDevice( /*const*/ ALCchar *devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize );
ALCvoid alcCaptureCloseDevice( ALCdevice *device );
ALCvoid alcCaptureStart( ALCdevice *device );
ALCvoid alcCaptureStop( ALCdevice *device );
ALCvoid alcCaptureSamples( ALCdevice *device, ALCvoid *buffer, ALCsizei samples );
				
} else { /* AL_NO_PROTOTYPES */

ALCchar*   (*alcGetString)(ALCdevice *device,ALCenum param);
ALCvoid    (*alcGetIntegerv)(ALCdevice * device,ALCenum param,ALCsizei size,ALCint *data);

ALCdevice* (*alcOpenDevice)(ALchar *deviceName);
ALCvoid    (*alcCloseDevice)(ALCdevice *device);

ALCcontext*(*alcCreateContext)(ALCdevice *device,ALCint *attrList);
ALCboolean (*alcMakeContextCurrent)(ALCcontext *context);
ALCvoid	  (*alcProcessContext)(ALCcontext *context);
ALCcontext*(*alcGetCurrentContext)();
ALCdevice* (*alcGetContextsDevice)(ALCcontext *context);
ALCvoid	  (*alcSuspendContext)(ALCcontext *context);
ALCvoid    (*alcDestroyContext)(ALCcontext *context);

ALCenum	  (*alcGetError)(ALCdevice *device);

ALCboolean (*alcIsExtensionPresent)(ALCdevice *device,ALCchar *extName);
ALCvoid *  (*alcGetProcAddress)(ALCdevice *device,ALCchar *funcName);
ALCenum	  (*alcGetEnumValue)(ALCdevice *device,ALCchar *enumName);

/** Capture functions */
ALCdevice* (*alcCaptureOpenDevice) ( /*const*/ ALCchar *devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize );
ALvoid (*alcCaptureCloseDevice) ( ALCdevice *device );
ALvoid (*alcCaptureStart) ( ALCdevice *device );
ALvoid (*alcCaptureStop) ( ALCdevice *device );
ALvoid (*alcCaptureSamples) ( ALCdevice *device, ALCvoid *buffer, ALCsizei samples );

} /* AL_NO_PROTOTYPES */
