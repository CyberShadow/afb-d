
import openal.al;
import openal.alut;

private import std.c.time; // sleep

// Position of the source sound.
ALfloat SourcePos[] = [ 0.0, 0.0, 1.0 ];

// Velocity of the source sound.
ALfloat SourceVel[] = [ 0.0, 0.0, 0.0 ];


// Position of the listener.
ALfloat ListenerPos[] = [ 0.0, 0.0, 0.0 ];

// Velocity of the listener.
ALfloat ListenerVel[] = [ 0.0, 0.0, 0.0 ];

// Orientation of the listener. (first 3 elements are "at", second 3 are "up")
ALfloat ListenerOri[] = [ 0.0, 0.0, -1.0,  0.0, 1.0, 0.0 ];


ALuint alutCreateBufferHelloWorld()
{
  ALuint buffer;
  
  alGenBuffers(1, &buffer);
  assert(alGetError() == AL_NO_ERROR);

  ALenum format;
  ALsizei size;
  ALvoid* data;
  ALsizei freq;

  char[] filename = "hello.wav";
  alutLoadWAVFile(cast(ALbyte*) filename.toStringz(),&format,&data,&size,&freq);
  assert(alGetError() == AL_NO_ERROR);
  debug printf("Loaded %.*s: %dHz\n", filename, freq);
  alBufferData(buffer, format, data, size, freq);
  alutUnloadWAV(format, data, size, freq);

  return buffer;
}

void main (char[][] args)
{
  alutInit (args);

  alListenerfv(AL_POSITION,    ListenerPos);
  alListenerfv(AL_VELOCITY,    ListenerVel);
  alListenerfv(AL_ORIENTATION, ListenerOri);

  ALuint helloBuffer;

  helloBuffer = alutCreateBufferHelloWorld ();

  ALuint helloSource;

  alGenSources (1, &helloSource);
  assert(alGetError() == AL_NO_ERROR);

  alSourcef (helloSource, AL_PITCH,    1.0f);
  alSourcef (helloSource, AL_GAIN,     1.0f);
  alSourcefv(helloSource, AL_POSITION, SourcePos);
  alSourcefv(helloSource, AL_VELOCITY, SourceVel);
  alSourcei (helloSource, AL_BUFFER,   helloBuffer);
  alSourcei (helloSource, AL_LOOPING,  AL_FALSE);

  alSourcePlay (helloSource);
  sleep(1);

  alDeleteSources(1, &helloSource);
  alDeleteBuffers(1, &helloBuffer);

  alutExit ();
}