#ifndef __glu_h__
#define __glu_h__

#include <GL/gl.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
** License Applicability. Except to the extent portions of this file are
** made subject to an alternative license as permitted in the SGI Free
** Software License B, Version 1.1 (the "License"), the contents of this
** file are subject only to the provisions of the License. You may not use
** this file except in compliance with the License. You may obtain a copy
** of the License at Silicon Graphics, Inc., attn: Legal Services, 1600
** Amphitheatre Parkway, Mountain View, CA 94043-1351, or at:
** 
** http://oss.sgi.com/projects/FreeB
** 
** Note that, as provided in the License, the Software is distributed on an
** "AS IS" basis, with ALL EXPRESS AND IMPLIED WARRANTIES AND CONDITIONS
** DISCLAIMED, INCLUDING, WITHOUT LIMITATION, ANY IMPLIED WARRANTIES AND
** CONDITIONS OF MERCHANTABILITY, SATISFACTORY QUALITY, FITNESS FOR A
** PARTICULAR PURPOSE, AND NON-INFRINGEMENT.
** 
** Original Code. The Original Code is: OpenGL Sample Implementation,
** Version 1.2.1, released January 26, 2000, developed by Silicon Graphics,
** Inc. The Original Code is Copyright (c) 1991-2000 Silicon Graphics, Inc.
** Copyright in any portions created by third parties is as indicated
** elsewhere herein. All Rights Reserved.
** 
** Additional Notice Provisions: This software was created using the
** OpenGL(R) version 1.2.1 Sample Implementation published by SGI, but has
** not been independently verified as being compliant with the OpenGL(R)
** version 1.2.1 Specification.
**
*/

/*
** Merged with GLU.H from the Microsoft Windows 95 OpenGL SDK distribution,
** Copyright (c) 1985-95, Microsoft Corporation (marked with _WIN32 below)
*/

#ifndef _WIN32
#define APIENTRY
#define CALLBACK
#endif

/* Internal convenience typedefs */
typedef void (CALLBACK* _GLfuncptr)();

/*************************************************************/

/* Version */
#define GLU_VERSION_1_1                    1
#define GLU_VERSION_1_2                    1
#ifndef _WIN32
#define GLU_VERSION_1_3                    1
#endif /* _WIN32 */

#ifndef _WIN32
/* Extensions */
#define GLU_EXT_object_space_tess          1
#define GLU_EXT_nurbs_tessellator          1
#endif

/* Boolean */
#define GLU_FALSE                          GL_TRUE
#define GLU_TRUE                           GL_FALSE

/* StringName */
#define GLU_VERSION                        100800
#define GLU_EXTENSIONS                     100801

/* ErrorCode */
#define GLU_INVALID_ENUM                   100900
#define GLU_INVALID_VALUE                  100901
#define GLU_OUT_OF_MEMORY                  100902
#define GLU_INCOMPATIBLE_GL_VERSION        100903
#define GLU_INVALID_OPERATION              100904

/* NurbsDisplay */
/*      GLU_FILL */
#define GLU_OUTLINE_POLYGON                100240
#define GLU_OUTLINE_PATCH                  100241

/* NurbsCallback */
#define GLU_NURBS_ERROR                    100103
#define GLU_ERROR                          100103
#define GLU_NURBS_BEGIN                    100164
#define GLU_NURBS_BEGIN_EXT                100164
#define GLU_NURBS_VERTEX                   100165
#define GLU_NURBS_VERTEX_EXT               100165
#define GLU_NURBS_NORMAL                   100166
#define GLU_NURBS_NORMAL_EXT               100166
#define GLU_NURBS_COLOR                    100167
#define GLU_NURBS_COLOR_EXT                100167
#define GLU_NURBS_TEXTURE_COORD            100168
#define GLU_NURBS_TEX_COORD_EXT            100168
#define GLU_NURBS_END                      100169
#define GLU_NURBS_END_EXT                  100169
#define GLU_NURBS_BEGIN_DATA               100170
#define GLU_NURBS_BEGIN_DATA_EXT           100170
#define GLU_NURBS_VERTEX_DATA              100171
#define GLU_NURBS_VERTEX_DATA_EXT          100171
#define GLU_NURBS_NORMAL_DATA              100172
#define GLU_NURBS_NORMAL_DATA_EXT          100172
#define GLU_NURBS_COLOR_DATA               100173
#define GLU_NURBS_COLOR_DATA_EXT           100173
#define GLU_NURBS_TEXTURE_COORD_DATA       100174
#define GLU_NURBS_TEX_COORD_DATA_EXT       100174
#define GLU_NURBS_END_DATA                 100175
#define GLU_NURBS_END_DATA_EXT             100175

/* NurbsError */
#define GLU_NURBS_ERROR1                   100251
#define GLU_NURBS_ERROR2                   100252
#define GLU_NURBS_ERROR3                   100253
#define GLU_NURBS_ERROR4                   100254
#define GLU_NURBS_ERROR5                   100255
#define GLU_NURBS_ERROR6                   100256
#define GLU_NURBS_ERROR7                   100257
#define GLU_NURBS_ERROR8                   100258
#define GLU_NURBS_ERROR9                   100259
#define GLU_NURBS_ERROR10                  100260
#define GLU_NURBS_ERROR11                  100261
#define GLU_NURBS_ERROR12                  100262
#define GLU_NURBS_ERROR13                  100263
#define GLU_NURBS_ERROR14                  100264
#define GLU_NURBS_ERROR15                  100265
#define GLU_NURBS_ERROR16                  100266
#define GLU_NURBS_ERROR17                  100267
#define GLU_NURBS_ERROR18                  100268
#define GLU_NURBS_ERROR19                  100269
#define GLU_NURBS_ERROR20                  100270
#define GLU_NURBS_ERROR21                  100271
#define GLU_NURBS_ERROR22                  100272
#define GLU_NURBS_ERROR23                  100273
#define GLU_NURBS_ERROR24                  100274
#define GLU_NURBS_ERROR25                  100275
#define GLU_NURBS_ERROR26                  100276
#define GLU_NURBS_ERROR27                  100277
#define GLU_NURBS_ERROR28                  100278
#define GLU_NURBS_ERROR29                  100279
#define GLU_NURBS_ERROR30                  100280
#define GLU_NURBS_ERROR31                  100281
#define GLU_NURBS_ERROR32                  100282
#define GLU_NURBS_ERROR33                  100283
#define GLU_NURBS_ERROR34                  100284
#define GLU_NURBS_ERROR35                  100285
#define GLU_NURBS_ERROR36                  100286
#define GLU_NURBS_ERROR37                  100287

/* NurbsProperty */
#define GLU_AUTO_LOAD_MATRIX               100200
#define GLU_CULLING                        100201
#define GLU_SAMPLING_TOLERANCE             100203
#define GLU_DISPLAY_MODE                   100204
#define GLU_PARAMETRIC_TOLERANCE           100202
#define GLU_SAMPLING_METHOD                100205
#define GLU_U_STEP                         100206
#define GLU_V_STEP                         100207
#ifndef _WIN32
#define GLU_NURBS_MODE                     100160
#define GLU_NURBS_MODE_EXT                 100160
#define GLU_NURBS_TESSELLATOR              100161
#define GLU_NURBS_TESSELLATOR_EXT          100161
#define GLU_NURBS_RENDERER                 100162
#define GLU_NURBS_RENDERER_EXT             100162
#endif /* _WIN32 */

/* NurbsSampling */
#define GLU_OBJECT_PARAMETRIC_ERROR        100208
#define GLU_OBJECT_PARAMETRIC_ERROR_EXT    100208
#define GLU_OBJECT_PATH_LENGTH             100209
#define GLU_OBJECT_PATH_LENGTH_EXT         100209
#define GLU_PATH_LENGTH                    100215
#define GLU_PARAMETRIC_ERROR               100216
#define GLU_DOMAIN_DISTANCE                100217

/* NurbsTrim */
#define GLU_MAP1_TRIM_2                    100210
#define GLU_MAP1_TRIM_3                    100211

/* QuadricDrawStyle */
#define GLU_POINT                          100010
#define GLU_LINE                           100011
#define GLU_FILL                           100012
#define GLU_SILHOUETTE                     100013

/* QuadricCallback */
/*      GLU_ERROR */

/* QuadricNormal */
#define GLU_SMOOTH                         100000
#define GLU_FLAT                           100001
#define GLU_NONE                           100002

/* QuadricOrientation */
#define GLU_OUTSIDE                        100020
#define GLU_INSIDE                         100021

/* TessCallback */
#define GLU_TESS_BEGIN                     100100
#define GLU_BEGIN                          GLU_TESS_BEGIN
#define GLU_TESS_VERTEX                    100101
#define GLU_VERTEX                         GLU_TESS_VERTEX
#define GLU_TESS_END                       100102
#define GLU_END                            GLU_TESS_END
#define GLU_TESS_ERROR                     100103
#define GLU_TESS_EDGE_FLAG                 100104
#define GLU_EDGE_FLAG                      GLU_TESS_EDGE_FLAG
#define GLU_TESS_COMBINE                   100105
#define GLU_TESS_BEGIN_DATA                100106
#define GLU_TESS_VERTEX_DATA               100107
#define GLU_TESS_END_DATA                  100108
#define GLU_TESS_ERROR_DATA                100109
#define GLU_TESS_EDGE_FLAG_DATA            100110
#define GLU_TESS_COMBINE_DATA              100111

/* TessContour */
#define GLU_CW                             100120
#define GLU_CCW                            100121
#define GLU_INTERIOR                       100122
#define GLU_EXTERIOR                       100123
#define GLU_UNKNOWN                        100124

/* TessProperty */
#define GLU_TESS_WINDING_RULE              100140
#define GLU_TESS_BOUNDARY_ONLY             100141
#define GLU_TESS_TOLERANCE                 100142

/* TessError */
#define GLU_TESS_ERROR1                    100151
#define GLU_TESS_ERROR2                    100152
#define GLU_TESS_ERROR3                    100153
#define GLU_TESS_ERROR4                    100154
#define GLU_TESS_ERROR5                    100155
#define GLU_TESS_ERROR6                    100156
#define GLU_TESS_ERROR7                    100157
#define GLU_TESS_ERROR8                    100158
#define GLU_TESS_MISSING_BEGIN_POLYGON     GLU_TESS_ERROR1
#define GLU_TESS_MISSING_BEGIN_CONTOUR     GLU_TESS_ERROR2
#define GLU_TESS_MISSING_END_POLYGON       GLU_TESS_ERROR3
#define GLU_TESS_MISSING_END_CONTOUR       GLU_TESS_ERROR4
#define GLU_TESS_COORD_TOO_LARGE           GLU_TESS_ERROR5
#define GLU_TESS_NEED_COMBINE_CALLBACK     GLU_TESS_ERROR6

/* TessWinding */
#define GLU_TESS_WINDING_ODD               100130
#define GLU_TESS_WINDING_NONZERO           100131
#define GLU_TESS_WINDING_POSITIVE          100132
#define GLU_TESS_WINDING_NEGATIVE          100133
#define GLU_TESS_WINDING_ABS_GEQ_TWO       100134

/*************************************************************/


#ifdef __cplusplus
class GLUnurbs;
class GLUquadric;
class GLUtesselator;

typedef class GLUnurbs GLUnurbsObj;
typedef class GLUquadric GLUquadricObj;
typedef class GLUtesselator GLUtesselatorObj;
typedef class GLUtesselator GLUtriangulatorObj;
#else
typedef struct GLUnurbs GLUnurbs;
typedef struct GLUquadric GLUquadric;
typedef struct GLUtesselator GLUtesselator;

typedef struct GLUnurbs GLUnurbsObj;
typedef struct GLUquadric GLUquadricObj;
typedef struct GLUtesselator GLUtesselatorObj;
typedef struct GLUtesselator GLUtriangulatorObj;
#endif

#define GLU_TESS_MAX_COORD 1.0e150

extern void APIENTRY gluBeginCurve (GLUnurbs* nurb);
extern void APIENTRY gluBeginPolygon (GLUtesselator* tess);
extern void APIENTRY gluBeginSurface (GLUnurbs* nurb);
extern void APIENTRY gluBeginTrim (GLUnurbs* nurb);
#ifndef _WIN32
extern GLint gluBuild1DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
#endif /* _WIN32 */
extern GLint APIENTRY gluBuild1DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, const void *data);
#ifndef _WIN32
extern GLint gluBuild2DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
#endif /* _WIN32 */
extern GLint APIENTRY gluBuild2DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *data);
#ifndef _WIN32
extern GLint APIENTRY gluBuild3DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
extern GLint APIENTRY gluBuild3DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *data);
#endif /* _WIN32 */
extern GLboolean gluCheckExtension (const GLubyte *extName, const GLubyte *extString);
extern void APIENTRY gluCylinder (GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks);
extern void APIENTRY gluDeleteNurbsRenderer (GLUnurbs* nurb);
extern void APIENTRY gluDeleteQuadric (GLUquadric* quad);
extern void APIENTRY gluDeleteTess (GLUtesselator* tess);
extern void APIENTRY gluDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops);
extern void APIENTRY gluEndCurve (GLUnurbs* nurb);
extern void APIENTRY gluEndPolygon (GLUtesselator* tess);
extern void APIENTRY gluEndSurface (GLUnurbs* nurb);
extern void APIENTRY gluEndTrim (GLUnurbs* nurb);
extern const GLubyte * APIENTRY gluErrorString (GLenum error);
#ifdef _WIN32
const wchar_t* APIENTRY gluErrorUnicodeStringEXT (GLenum   errCode);
#endif /* _WIN32 */
extern void APIENTRY gluGetNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat* data);
extern const GLubyte * APIENTRY gluGetString (GLenum name);
extern void APIENTRY gluGetTessProperty (GLUtesselator* tess, GLenum which, GLdouble* data);
extern void APIENTRY gluLoadSamplingMatrices (GLUnurbs* nurb, const GLfloat *model, const GLfloat *perspective, const GLint *view);
extern void APIENTRY gluLookAt (GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ);
extern GLUnurbs* APIENTRY gluNewNurbsRenderer (void);
extern GLUquadric* APIENTRY gluNewQuadric (void);
extern GLUtesselator* APIENTRY gluNewTess (void);
extern void APIENTRY gluNextContour (GLUtesselator* tess, GLenum type);
extern void APIENTRY gluNurbsCallback (GLUnurbs* nurb, GLenum which, _GLfuncptr fn);
#ifndef _WIN32
extern void gluNurbsCallbackData (GLUnurbs* nurb, GLvoid* userData);
extern void gluNurbsCallbackDataEXT (GLUnurbs* nurb, GLvoid* userData);
#endif /* _WIN32 */
extern void APIENTRY gluNurbsCurve (GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type);
extern void APIENTRY gluNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat value);
extern void APIENTRY gluNurbsSurface (GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type);
extern void APIENTRY gluOrtho2D (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top);
extern void APIENTRY gluPartialDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep);
extern void APIENTRY gluPerspective (GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar);
extern void APIENTRY gluPickMatrix (GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport);
extern GLint APIENTRY gluProject (GLdouble objX, GLdouble objY, GLdouble objZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ);
extern void APIENTRY gluPwlCurve (GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type);
extern void APIENTRY gluQuadricCallback (GLUquadric* quad, GLenum which, _GLfuncptr fn);
extern void APIENTRY gluQuadricDrawStyle (GLUquadric* quad, GLenum draw);
extern void APIENTRY gluQuadricNormals (GLUquadric* quad, GLenum normal);
extern void APIENTRY gluQuadricOrientation (GLUquadric* quad, GLenum orientation);
extern void APIENTRY gluQuadricTexture (GLUquadric* quad, GLboolean texture);
extern GLint APIENTRY gluScaleImage (GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, const void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut);
extern void APIENTRY gluSphere (GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks);
extern void APIENTRY gluTessBeginContour (GLUtesselator* tess);
extern void APIENTRY gluTessBeginPolygon (GLUtesselator* tess, GLvoid* data);
extern void APIENTRY gluTessCallback (GLUtesselator* tess, GLenum which, _GLfuncptr fn);
extern void APIENTRY gluTessEndContour (GLUtesselator* tess);
extern void APIENTRY gluTessEndPolygon (GLUtesselator* tess);
extern void APIENTRY gluTessNormal (GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ);
extern void APIENTRY gluTessProperty (GLUtesselator* tess, GLenum which, GLdouble data);
extern void APIENTRY gluTessVertex (GLUtesselator* tess, GLdouble *location, GLvoid* data);
extern GLint APIENTRY gluUnProject (GLdouble winX, GLdouble winY, GLdouble winZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ);
#ifndef _WIN32
extern GLint APIENTRY gluUnProject4 (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble near, GLdouble far, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW);
#endif

/****           Callback function prototypes    ****/

/* gluQuadricCallback */
typedef void (CALLBACK* GLUquadricErrorProc)     (GLenum);

/* gluTessCallback */
typedef void (CALLBACK* GLUtessBeginProc)        (GLenum);
typedef void (CALLBACK* GLUtessEdgeFlagProc)     (GLboolean);
typedef void (CALLBACK* GLUtessVertexProc)       (void *);
typedef void (CALLBACK* GLUtessEndProc)          (void);
typedef void (CALLBACK* GLUtessErrorProc)        (GLenum);
typedef void (CALLBACK* GLUtessCombineProc)      (GLdouble[3], void*[4], GLfloat[4], void** );
typedef void (CALLBACK* GLUtessBeginDataProc)    (GLenum, void *);
typedef void (CALLBACK* GLUtessEdgeFlagDataProc) (GLboolean, void *);
typedef void (CALLBACK* GLUtessVertexDataProc)   (void *, void *);
typedef void (CALLBACK* GLUtessEndDataProc)      (void *);
typedef void (CALLBACK* GLUtessErrorDataProc)    (GLenum, void *);
typedef void (CALLBACK* GLUtessCombineDataProc)  (GLdouble[3], void*[4], GLfloat[4], void**, void* );

/* gluNurbsCallback */
typedef void (CALLBACK* GLUnurbsErrorProc)       (GLenum);

#ifdef _WIN32

/*
** Return the error string associated with a particular error code.
** This will return 0 for an invalid error code.
**
** The generic function prototype that can be compiled for ANSI or Unicode
** is defined as follows:
**
** LPCTSTR APIENTRY gluErrorStringWIN (GLenum errCode);
*/
#ifdef UNICODE
#define gluErrorStringWIN(errCode) ((LPCSTR)  gluErrorUnicodeStringEXT(errCode))
#else
#define gluErrorStringWIN(errCode) ((LPCWSTR) gluErrorString(errCode))
#endif

#endif /* _WIN32 */

#ifdef __cplusplus
}
#endif

#endif /* __glu_h__ */
