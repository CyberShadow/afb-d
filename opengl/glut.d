/* glut.h */

module opengl.glut;

/* Copyright (c) Mark J. Kilgard, 1994, 1995, 1996, 1998. */

/* This program is freely distributable without licensing fees  and is
   provided without guarantee or warrantee expressed or  implied. This
   program is -not- in the public domain. */

private import opengl.gl;
private import opengl.glu;

/+
/* To disable automatic library usage for GLUT, define GLUT_NO_LIB_PRAGMA
   in your compile preprocessor options. */
# if !defined(GLUT_BUILDING_LIB) && !defined(GLUT_NO_LIB_PRAGMA)
#  pragma comment (lib, "winmm.lib")      /* link with Windows MultiMedia lib */
/* To enable automatic SGI OpenGL for Windows library usage for GLUT,
   define GLUT_USE_SGI_OPENGL in your compile preprocessor options.  */
#  ifdef GLUT_USE_SGI_OPENGL
#   pragma comment (lib, "opengl.lib")    /* link with SGI OpenGL for Windows lib */
#   pragma comment (lib, "glu.lib")       /* link with SGI OpenGL Utility lib */
#   pragma comment (lib, "glut.lib")      /* link with Win32 GLUT for SGI OpenGL lib */
#  else
#   pragma comment (lib, "opengl32.lib")  /* link with Microsoft OpenGL lib */
#   pragma comment (lib, "glu32.lib")     /* link with Microsoft OpenGL Utility lib */
#   pragma comment (lib, "glut32.lib")    /* link with Win32 GLUT lib */
#  endif
# endif
+/

version (Windows) {} else {
private import opengl.glutextern;	// data
}

version (Windows)
	extern (Windows):
else
	extern (C):

/**
 GLUT API revision history:
 
 GLUT_API_VERSION is updated to reflect incompatible GLUT
 API changes (interface changes, semantic changes, deletions,
 or additions).
 
 GLUT_API_VERSION=1  First public release of GLUT.  11/29/94

 GLUT_API_VERSION=2  Added support for OpenGL/GLX multisampling,
 extension.  Supports new input devices like tablet, dial and button
 box, and Spaceball.  Easy to query OpenGL extensions.

 GLUT_API_VERSION=3  glutMenuStatus added.

 GLUT_API_VERSION=4  glutInitDisplayString, glutWarpPointer,
 glutBitmapLength, glutStrokeLength, glutWindowStatusFunc, dynamic
 video resize subAPI, glutPostWindowRedisplay, glutKeyboardUpFunc,
 glutSpecialUpFunc, glutIgnoreKeyRepeat, glutSetKeyRepeat,
 glutJoystickFunc, glutForceJoystickFunc (NOT FINALIZED!).
**/

version = GLUT_API_VERSION_1;
version = GLUT_API_VERSION_2;
version = GLUT_API_VERSION_3;

/**
 GLUT implementation revision history:
 
 GLUT_XLIB_IMPLEMENTATION is updated to reflect both GLUT
 API revisions and implementation revisions (ie, bug fixes).

 GLUT_XLIB_IMPLEMENTATION=1  mjk's first public release of
 GLUT Xlib-based implementation.  11/29/94

 GLUT_XLIB_IMPLEMENTATION=2  mjk's second public release of
 GLUT Xlib-based implementation providing GLUT version 2 
 interfaces.

 GLUT_XLIB_IMPLEMENTATION=3  mjk's GLUT 2.2 images. 4/17/95

 GLUT_XLIB_IMPLEMENTATION=4  mjk's GLUT 2.3 images. 6/?/95

 GLUT_XLIB_IMPLEMENTATION=5  mjk's GLUT 3.0 images. 10/?/95

 GLUT_XLIB_IMPLEMENTATION=7  mjk's GLUT 3.1+ with glutWarpPoitner.  7/24/96

 GLUT_XLIB_IMPLEMENTATION=8  mjk's GLUT 3.1+ with glutWarpPoitner
 and video resize.  1/3/97

 GLUT_XLIB_IMPLEMENTATION=9 mjk's GLUT 3.4 release with early GLUT 4 routines.

 GLUT_XLIB_IMPLEMENTATION=11 Mesa 2.5's GLUT 3.6 release.

 GLUT_XLIB_IMPLEMENTATION=12 mjk's GLUT 3.6 release with early GLUT 4 routines + signal handling.

 GLUT_XLIB_IMPLEMENTATION=13 mjk's GLUT 3.7 beta with GameGLUT support.

 GLUT_XLIB_IMPLEMENTATION=14 mjk's GLUT 3.7 beta with f90gl friend interface.

 GLUT_XLIB_IMPLEMENTATION=15 mjk's GLUT 3.7 beta sync'ed with Mesa <GL/glut.h>
**/

version = GLUT_XLIB_IMPLEMENTATION_1;
version = GLUT_XLIB_IMPLEMENTATION_2;
version = GLUT_XLIB_IMPLEMENTATION_3;
version = GLUT_XLIB_IMPLEMENTATION_4;
version = GLUT_XLIB_IMPLEMENTATION_5;
version = GLUT_XLIB_IMPLEMENTATION_7;
version = GLUT_XLIB_IMPLEMENTATION_8;
version = GLUT_XLIB_IMPLEMENTATION_9;
version = GLUT_XLIB_IMPLEMENTATION_11;
version = GLUT_XLIB_IMPLEMENTATION_12;
version = GLUT_XLIB_IMPLEMENTATION_13;
version = GLUT_XLIB_IMPLEMENTATION_14;
version = GLUT_XLIB_IMPLEMENTATION_15;


// some version combining logic cruft, until D gets version ops:

version (GLUT_API_VERSION_4)
	version = GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9;
version (GLUT_XLIB_IMPLEMENTATION_9)
	version = GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9;

version (GLUT_API_VERSION_4)
	version = GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_11;
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_11)
	version = GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_11;

version (GLUT_API_VERSION_4)
	version = GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_13;
version (GLUT_XLIB_IMPLEMENTATION_13)
	version = GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_13;



/* Display mode bit masks. */
const uint GLUT_RGB				= 0;
const uint GLUT_RGBA			= 0; /* GLUT_RGB */
const uint GLUT_INDEX			= 1;
const uint GLUT_SINGLE			= 0;
const uint GLUT_DOUBLE			= 2;
const uint GLUT_ACCUM			= 4;
const uint GLUT_ALPHA			= 8;
const uint GLUT_DEPTH			= 16;
const uint GLUT_STENCIL			= 32;
version (GLUT_API_VERSION_2) {
const uint GLUT_MULTISAMPLE		= 128;
const uint GLUT_STEREO			= 256;
}
version (GLUT_API_VERSION_3) {
const uint GLUT_LUMINANCE		= 512;
}

/* Mouse buttons. */
const uint GLUT_LEFT_BUTTON			= 0;
const uint GLUT_MIDDLE_BUTTON		= 1;
const uint GLUT_RIGHT_BUTTON		= 2;

/* Mouse button  state. */
const uint GLUT_DOWN			= 0;
const uint GLUT_UP				= 1;

version (GLUT_API_VERSION_2) {
/* function keys */
const uint GLUT_KEY_F1			= 1;
const uint GLUT_KEY_F2			= 2;
const uint GLUT_KEY_F3			= 3;
const uint GLUT_KEY_F4			= 4;
const uint GLUT_KEY_F5			= 5;
const uint GLUT_KEY_F6			= 6;
const uint GLUT_KEY_F7			= 7;
const uint GLUT_KEY_F8			= 8;
const uint GLUT_KEY_F9			= 9;
const uint GLUT_KEY_F10			= 10;
const uint GLUT_KEY_F11			= 11;
const uint GLUT_KEY_F12			= 12;
/* directional keys */
const uint GLUT_KEY_LEFT			= 100;
const uint GLUT_KEY_UP			= 101;
const uint GLUT_KEY_RIGHT			= 102;
const uint GLUT_KEY_DOWN			= 103;
const uint GLUT_KEY_PAGE_UP		= 104;
const uint GLUT_KEY_PAGE_DOWN		= 105;
const uint GLUT_KEY_HOME			= 106;
const uint GLUT_KEY_END			= 107;
const uint GLUT_KEY_INSERT			= 108;
}

/* Entry/exit  state. */
const uint GLUT_LEFT			= 0;
const uint GLUT_ENTERED			= 1;

/* Menu usage  state. */
const uint GLUT_MENU_NOT_IN_USE		= 0;
const uint GLUT_MENU_IN_USE		= 1;

/* Visibility  state. */
const uint GLUT_NOT_VISIBLE		= 0;
const uint GLUT_VISIBLE			= 1;

/* Window status  state. */
const uint GLUT_HIDDEN			= 0;
const uint GLUT_FULLY_RETAINED		= 1;
const uint GLUT_PARTIALLY_RETAINED		= 2;
const uint GLUT_FULLY_COVERED		= 3;

/* Color index component selection values. */
const uint GLUT_RED			= 0;
const uint GLUT_GREEN			= 1;
const uint GLUT_BLUE			= 2;

version (Windows) {
/* Stroke font constants (use these in GLUT program). */
const void* GLUT_STROKE_ROMAN		= 0;
const void* GLUT_STROKE_MONO_ROMAN		= 1;

/* Bitmap font constants (use these in GLUT program). */
const void* GLUT_BITMAP_9_BY_15		= 2;
const void* GLUT_BITMAP_8_BY_13		= 3;
const void* GLUT_BITMAP_TIMES_ROMAN_10	= 4;
const void* GLUT_BITMAP_TIMES_ROMAN_24	= 5;
version (GLUT_API_VERSION_3) {
const void* GLUT_BITMAP_HELVETICA_10	= 6;
const void* GLUT_BITMAP_HELVETICA_12	= 7;
const void* GLUT_BITMAP_HELVETICA_18	= 8;
}
} else {
/+
/* Stroke font opaque addresses (use constants instead in source code). */
void *glutStrokeRoman;
void *glutStrokeMonoRoman;
+/

/* Stroke font constants (use these in GLUT program). */
const void* GLUT_STROKE_ROMAN		= &glutStrokeRoman;
const void* GLUT_STROKE_MONO_ROMAN		= &glutStrokeMonoRoman;

/+
/* Bitmap font opaque addresses (use constants instead in source code). */
void *glutBitmap9By15;
void *glutBitmap8By13;
void *glutBitmapTimesRoman10;
void *glutBitmapTimesRoman24;
void *glutBitmapHelvetica10 ;
void *glutBitmapHelvetica12;
void *glutBitmapHelvetica18;
+/

/* Bitmap font constants (use these in GLUT program). */
const void*  GLUT_BITMAP_9_BY_15		= &glutBitmap9By15;
const void*  GLUT_BITMAP_8_BY_13		= &glutBitmap8By13;
const void*  GLUT_BITMAP_TIMES_ROMAN_10	= &glutBitmapTimesRoman10;
const void*  GLUT_BITMAP_TIMES_ROMAN_24	= &glutBitmapTimesRoman24;
version (GLUT_API_VERSION_3) {
const void*  GLUT_BITMAP_HELVETICA_10	= &glutBitmapHelvetica10;
const void*  GLUT_BITMAP_HELVETICA_12	= &glutBitmapHelvetica12;
const void*  GLUT_BITMAP_HELVETICA_18	= &glutBitmapHelvetica18;
}
}

/* glutGet parameters. */
const GLenum GLUT_WINDOW_X			= 100;
const GLenum GLUT_WINDOW_Y			= 101;
const GLenum GLUT_WINDOW_WIDTH		= 102;
const GLenum GLUT_WINDOW_HEIGHT		= 103;
const GLenum GLUT_WINDOW_BUFFER_SIZE		= 104;
const GLenum GLUT_WINDOW_STENCIL_SIZE	= 105;
const GLenum GLUT_WINDOW_DEPTH_SIZE		= 106;
const GLenum GLUT_WINDOW_RED_SIZE		= 107;
const GLenum GLUT_WINDOW_GREEN_SIZE		= 108;
const GLenum GLUT_WINDOW_BLUE_SIZE		= 109;
const GLenum GLUT_WINDOW_ALPHA_SIZE		= 110;
const GLenum GLUT_WINDOW_ACCUM_RED_SIZE	= 111;
const GLenum GLUT_WINDOW_ACCUM_GREEN_SIZE	= 112;
const GLenum GLUT_WINDOW_ACCUM_BLUE_SIZE	= 113;
const GLenum GLUT_WINDOW_ACCUM_ALPHA_SIZE	= 114;
const GLenum GLUT_WINDOW_DOUBLEBUFFER	= 115;
const GLenum GLUT_WINDOW_RGBA		= 116;
const GLenum GLUT_WINDOW_PARENT		= 117;
const GLenum GLUT_WINDOW_NUM_CHILDREN	= 118;
const GLenum GLUT_WINDOW_COLORMAP_SIZE	= 119;
version (GLUT_API_VERSION_2) {
const GLenum GLUT_WINDOW_NUM_SAMPLES		= 120;
const GLenum GLUT_WINDOW_STEREO		= 121;
}
version (GLUT_API_VERSION_3) {
const GLenum GLUT_WINDOW_CURSOR		= 122;
}
const GLenum GLUT_SCREEN_WIDTH		= 200;
const GLenum GLUT_SCREEN_HEIGHT		= 201;
const GLenum GLUT_SCREEN_WIDTH_MM		= 202;
const GLenum GLUT_SCREEN_HEIGHT_MM		= 203;
const GLenum GLUT_MENU_NUM_ITEMS		= 300;
const GLenum GLUT_DISPLAY_MODE_POSSIBLE	= 400;
const GLenum GLUT_INIT_WINDOW_X		= 500;
const GLenum GLUT_INIT_WINDOW_Y		= 501;
const GLenum GLUT_INIT_WINDOW_WIDTH		= 502;
const GLenum GLUT_INIT_WINDOW_HEIGHT		= 503;
const GLenum GLUT_INIT_DISPLAY_MODE		= 504;
version (GLUT_API_VERSION_2) {
const GLenum GLUT_ELAPSED_TIME		= 700;
}

version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_13) {
const GLenum GLUT_WINDOW_FORMAT_ID		= 123;
}

version (GLUT_API_VERSION_2) {
/* glutDeviceGet parameters. */
const GLenum GLUT_HAS_KEYBOARD		= 600;
const GLenum GLUT_HAS_MOUSE			= 601;
const GLenum GLUT_HAS_SPACEBALL		= 602;
const GLenum GLUT_HAS_DIAL_AND_BUTTON_BOX	= 603;
const GLenum GLUT_HAS_TABLET			= 604;
const GLenum GLUT_NUM_MOUSE_BUTTONS		= 605;
const GLenum GLUT_NUM_SPACEBALL_BUTTONS	= 606;
const GLenum GLUT_NUM_BUTTON_BOX_BUTTONS	= 607;
const GLenum GLUT_NUM_DIALS			= 608;
const GLenum GLUT_NUM_TABLET_BUTTONS		= 609;
}
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_13) {
const GLenum GLUT_DEVICE_IGNORE_KEY_REPEAT   = 610;
const GLenum GLUT_DEVICE_KEY_REPEAT          = 611;
const GLenum GLUT_HAS_JOYSTICK		= 612;
const GLenum GLUT_OWNS_JOYSTICK		= 613;
const GLenum GLUT_JOYSTICK_BUTTONS		= 614;
const GLenum GLUT_JOYSTICK_AXES		= 615;
const GLenum GLUT_JOYSTICK_POLL_RATE		= 616;
}

version (GLUT_API_VERSION_3) {
/* glutLayerGet parameters. */
const GLenum GLUT_OVERLAY_POSSIBLE           = 800;
const GLenum GLUT_LAYER_IN_USE		= 801;
const GLenum GLUT_HAS_OVERLAY		= 802;
const GLenum GLUT_TRANSPARENT_INDEX		= 803;
const GLenum GLUT_NORMAL_DAMAGED		= 804;
const GLenum GLUT_OVERLAY_DAMAGED		= 805;


version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9) {
/* glutVideoResizeGet parameters. */
const GLenum GLUT_VIDEO_RESIZE_POSSIBLE	= 900;
const GLenum GLUT_VIDEO_RESIZE_IN_USE	= 901;
const GLenum GLUT_VIDEO_RESIZE_X_DELTA	= 902;
const GLenum GLUT_VIDEO_RESIZE_Y_DELTA	= 903;
const GLenum GLUT_VIDEO_RESIZE_WIDTH_DELTA	= 904;
const GLenum GLUT_VIDEO_RESIZE_HEIGHT_DELTA	= 905;
const GLenum GLUT_VIDEO_RESIZE_X		= 906;
const GLenum GLUT_VIDEO_RESIZE_Y		= 907;
const GLenum GLUT_VIDEO_RESIZE_WIDTH		= 908;
const GLenum GLUT_VIDEO_RESIZE_HEIGHT	= 909;
}

/* glutUseLayer parameters. */
const GLenum GLUT_NORMAL			= 0;
const GLenum GLUT_OVERLAY			= 1;

/* glutGetModifiers return mask. */
const uint GLUT_ACTIVE_SHIFT               = 1;
const uint GLUT_ACTIVE_CTRL                = 2;
const uint GLUT_ACTIVE_ALT                 = 4;

/* glutSetCursor parameters. */
/* Basic arrows. */
const uint GLUT_CURSOR_RIGHT_ARROW		= 0;
const uint GLUT_CURSOR_LEFT_ARROW		= 1;
/* Symbolic cursor shapes. */
const uint GLUT_CURSOR_INFO		= 2;
const uint GLUT_CURSOR_DESTROY		= 3;
const uint GLUT_CURSOR_HELP		= 4;
const uint GLUT_CURSOR_CYCLE		= 5;
const uint GLUT_CURSOR_SPRAY		= 6;
const uint GLUT_CURSOR_WAIT		= 7;
const uint GLUT_CURSOR_TEXT		= 8;
const uint GLUT_CURSOR_CROSSHAIR		= 9;
/* Directional cursors. */
const uint GLUT_CURSOR_UP_DOWN		= 10;
const uint GLUT_CURSOR_LEFT_RIGHT		= 11;
/* Sizing cursors. */
const uint GLUT_CURSOR_TOP_SIDE		= 12;
const uint GLUT_CURSOR_BOTTOM_SIDE		= 13;
const uint GLUT_CURSOR_LEFT_SIDE		= 14;
const uint GLUT_CURSOR_RIGHT_SIDE		= 15;
const uint GLUT_CURSOR_TOP_LEFT_CORNER	= 16;
const uint GLUT_CURSOR_TOP_RIGHT_CORNER	= 17;
const uint GLUT_CURSOR_BOTTOM_RIGHT_CORNER	= 18;
const uint GLUT_CURSOR_BOTTOM_LEFT_CORNER	= 19;
/* Inherit from parent window. */
const uint GLUT_CURSOR_INHERIT		= 100;
/* Blank cursor. */
const uint GLUT_CURSOR_NONE		= 101;
/* Fullscreen crosshair (if available). */
const uint GLUT_CURSOR_FULL_CROSSHAIR	= 102;
}

/* GLUT initialization sub-API. */
extern(C) void glutInit(int *argcp, char **argv);

import std.string;

extern(D) void glutInit(inout char[][] args)
{
    int argc = args.length;
    char*[] argv = new char*[argc];
    for(int i = 0; i < argc; i++)
        argv[i] = toStringz(args[i]);

    glutInit(&argc, argv.ptr);

    args.length = argc;
    for(int i = 0; i < argc; i++)
        args[i] = toString(argv[i]);
}

void glutInitDisplayMode(uint mode);
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9) {
void glutInitDisplayString(char *string);
}
void glutInitWindowPosition(int x, int y);
void glutInitWindowSize(int width, int height);
void glutMainLoop();

/* GLUT window sub-API. */
int glutCreateWindow(char *title);

int glutCreateSubWindow(int win, int x, int y, int width, int height);
void glutDestroyWindow(int win);
void glutPostRedisplay();
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_11) {
void glutPostWindowRedisplay(int win);
}
void glutSwapBuffers();
int glutGetWindow();
void glutSetWindow(int win);
void glutSetWindowTitle(char *title);
void glutSetIconTitle(char *title);
void glutPositionWindow(int x, int y);
void glutReshapeWindow(int width, int height);
void glutPopWindow();
void glutPushWindow();
void glutIconifyWindow();
void glutShowWindow();
void glutHideWindow();
version (GLUT_API_VERSION_3) {
void glutFullScreen();
void glutSetCursor(int cursor);
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9) {
void glutWarpPointer(int x, int y);
}

/* GLUT overlay sub-API. */
void glutEstablishOverlay();
void glutRemoveOverlay();
void glutUseLayer(GLenum layer);
void glutPostOverlayRedisplay();
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_11) {
void glutPostWindowOverlayRedisplay(int win);
}
void glutShowOverlay();
void glutHideOverlay();
}

/* GLUT menu sub-API. */
int glutCreateMenu(void (*func)(int));

void glutDestroyMenu(int menu);
int glutGetMenu();
void glutSetMenu(int menu);
void glutAddMenuEntry(char *label, int value);
void glutAddSubMenu(char *label, int submenu);
void glutChangeToMenuEntry(int item, char *label, int value);
void glutChangeToSubMenu(int item, char *label, int submenu);
void glutRemoveMenuItem(int item);
void glutAttachMenu(int button);
void glutDetachMenu(int button);

/* GLUT window callback sub-API. */
void glutDisplayFunc(void (*func)());
void glutReshapeFunc(void (*func)(int width, int height));
void glutKeyboardFunc(void (*func)(ubyte key, int x, int y));
void glutMouseFunc(void (*func)(int button, int state, int x, int y));
void glutMotionFunc(void (*func)(int x, int y));
void glutPassiveMotionFunc(void (*func)(int x, int y));
void glutEntryFunc(void (*func)(int state));
void glutVisibilityFunc(void (*func)(int state));
void glutIdleFunc(void (*func)());
void glutTimerFunc(uint millis, void (*func)(int value), int value);
void glutMenuStateFunc(void (*func)(int state));
version (GLUT_API_VERSION_2) {
void glutSpecialFunc(void (*func)(int key, int x, int y));
void glutSpaceballMotionFunc(void (*func)(int x, int y, int z));
void glutSpaceballRotateFunc(void (*func)(int x, int y, int z));
void glutSpaceballButtonFunc(void (*func)(int button, int state));
void glutButtonBoxFunc(void (*func)(int button, int state));
void glutDialsFunc(void (*func)(int dial, int value));
void glutTabletMotionFunc(void (*func)(int x, int y));
void glutTabletButtonFunc(void (*func)(int button, int state, int x, int y));
version (GLUT_API_VERSION_3) {
void glutMenuStatusFunc(void (*func)(int status, int x, int y));
void glutOverlayDisplayFunc(void (*func)());
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9) {
void glutWindowStatusFunc(void (*func)(int state));
}
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_13) {
void glutKeyboardUpFunc(void (*func)(ubyte key, int x, int y));
void glutSpecialUpFunc(void (*func)(int key, int x, int y));
void glutJoystickFunc(void (*func)(uint buttonMask, int x, int y, int z), int pollInterval);
}
}
}

/* GLUT color index sub-API. */
void glutSetColor(int, GLfloat red, GLfloat green, GLfloat blue);
GLfloat glutGetColor(int ndx, int component);
void glutCopyColormap(int win);

/* GLUT state retrieval sub-API. */
int glutGet(GLenum type);
int glutDeviceGet(GLenum type);
version (GLUT_API_VERSION_2) {
/* GLUT extension support sub-API */
int glutExtensionSupported(char *name);
}
version (GLUT_API_VERSION_3) {
int glutGetModifiers();
int glutLayerGet(GLenum type);
}

/* GLUT font sub-API */
void glutBitmapCharacter(void *font, int character);
int glutBitmapWidth(void *font, int character);
void glutStrokeCharacter(void *font, int character);
int glutStrokeWidth(void *font, int character);
version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9) {
int glutBitmapLength(void *font, ubyte *string);
int glutStrokeLength(void *font, ubyte *string);
}

/* GLUT pre-built models sub-API */
void glutWireSphere(GLdouble radius, GLint slices, GLint stacks);
void glutSolidSphere(GLdouble radius, GLint slices, GLint stacks);
void glutWireCone(GLdouble base, GLdouble height, GLint slices, GLint stacks);
void glutSolidCone(GLdouble base, GLdouble height, GLint slices, GLint stacks);
void glutWireCube(GLdouble size);
void glutSolidCube(GLdouble size);
void glutWireTorus(GLdouble innerRadius, GLdouble outerRadius, GLint sides, GLint rings);
void glutSolidTorus(GLdouble innerRadius, GLdouble outerRadius, GLint sides, GLint rings);
void glutWireDodecahedron();
void glutSolidDodecahedron();
void glutWireTeapot(GLdouble size);
void glutSolidTeapot(GLdouble size);
void glutWireOctahedron();
void glutSolidOctahedron();
void glutWireTetrahedron();
void glutSolidTetrahedron();
void glutWireIcosahedron();
void glutSolidIcosahedron();

version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_9) {
/* GLUT video resize sub-API. */
int glutVideoResizeGet(GLenum param);
void glutSetupVideoResizing();
void glutStopVideoResizing();
void glutVideoResize(int x, int y, int width, int height);
void glutVideoPan(int x, int y, int width, int height);

/* GLUT debugging sub-API. */
void glutReportErrors();
}

version (GLUT_API_VERSION_4_or_GLUT_XLIB_IMPLEMENTATION_13) {
/* GLUT device control sub-API. */
/* glutSetKeyRepeat modes. */
const uint GLUT_KEY_REPEAT_OFF		= 0;
const uint GLUT_KEY_REPEAT_ON		= 1;
const uint GLUT_KEY_REPEAT_DEFAULT		= 2;

/* Joystick button masks. */
const uint GLUT_JOYSTICK_BUTTON_A		= 1;
const uint GLUT_JOYSTICK_BUTTON_B		= 2;
const uint GLUT_JOYSTICK_BUTTON_C		= 4;
const uint GLUT_JOYSTICK_BUTTON_D		= 8;

void glutIgnoreKeyRepeat(int ignore);
void glutSetKeyRepeat(int repeatMode);
void glutForceJoystickFunc();

/* GLUT game mode sub-API. */
/* glutGameModeGet. */
const uint GLUT_GAME_MODE_ACTIVE           = 0;
const uint GLUT_GAME_MODE_POSSIBLE         = 1;
const uint GLUT_GAME_MODE_WIDTH            = 2;
const uint GLUT_GAME_MODE_HEIGHT           = 3;
const uint GLUT_GAME_MODE_PIXEL_DEPTH      = 4;
const uint GLUT_GAME_MODE_REFRESH_RATE     = 5;
const uint GLUT_GAME_MODE_DISPLAY_CHANGED  = 6;

void glutGameModeString(char *string);
int glutEnterGameMode();
void glutLeaveGameMode();
int glutGameModeGet(GLenum mode);
}

