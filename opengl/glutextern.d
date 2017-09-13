/* glut.h */

module opengl.glutextern;

/* Copyright (c) Mark J. Kilgard, 1994, 1995, 1996, 1998. */

/* This program is freely distributable without licensing fees  and is
   provided without guarantee or warrantee expressed or  implied. This
   program is -not- in the public domain. */

version (Windows)
	extern (Windows):
else
	extern (C):

/* Stroke font opaque addresses (use constants instead in source code). */
void *glutStrokeRoman;
void *glutStrokeMonoRoman;

/* Bitmap font opaque addresses (use constants instead in source code). */
void *glutBitmap9By15;
void *glutBitmap8By13;
void *glutBitmapTimesRoman10;
void *glutBitmapTimesRoman24;
void *glutBitmapHelvetica10 ;
void *glutBitmapHelvetica12;
void *glutBitmapHelvetica18;
