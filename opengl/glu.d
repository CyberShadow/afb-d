/* glu.h */

module opengl.glu;

import opengl.gl;

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
** Copyright (c) 1985-95, Microsoft Corporation (marked with Windows below)
**
** Conversion of header to D, done by Anders F Bjorklund <afb@algonet.se>
*/

version (Windows) {} else {
  version = NotWindows;
}

version (GL_GLU_NO_PROTOTYPES) {} else {
  version = GL_GLU_PROTOTYPES;
}

/*************************************************************/

/* Version */
version = GLU_VERSION_1_1;
version = GLU_VERSION_1_2;
version (NotWindows) {
version = GLU_VERSION_1_3;
}

version (NotWindows) {
/* Extensions */
version = GLU_EXT_object_space_tess;
version = GLU_EXT_nurbs_tessellator;
}

/* Boolean */
const GLboolean GLU_FALSE = GL_TRUE;
const GLboolean GLU_TRUE = GL_FALSE;

/* StringName */
const uint GLU_VERSION                          = 100800;
const uint GLU_EXTENSIONS                       = 100801;

/* ErrorCode */
const uint GLU_INVALID_ENUM                     = 100900;
const uint GLU_INVALID_VALUE                    = 100901;
const uint GLU_OUT_OF_MEMORY                    = 100902;
const uint GLU_INCOMPATIBLE_GL_VERSION          = 100903;
const uint GLU_INVALID_OPERATION                = 100904;


/* NurbsDisplay */
/*      GLU_FILL */
const uint GLU_OUTLINE_POLYGON                  = 100240;
const uint GLU_OUTLINE_PATCH                    = 100241;

/* NurbsCallback */
const uint GLU_NURBS_ERROR                      = 100103;
const uint GLU_ERROR                            = 100103;
const uint GLU_NURBS_BEGIN                      = 100164;
const uint GLU_NURBS_BEGIN_EXT                  = 100164;
const uint GLU_NURBS_VERTEX                     = 100165;
const uint GLU_NURBS_VERTEX_EXT                 = 100165;
const uint GLU_NURBS_NORMAL                     = 100166;
const uint GLU_NURBS_NORMAL_EXT                 = 100166;
const uint GLU_NURBS_COLOR                      = 100167;
const uint GLU_NURBS_COLOR_EXT                  = 100167;
const uint GLU_NURBS_TEXTURE_COORD              = 100168;
const uint GLU_NURBS_TEX_COORD_EXT              = 100168;
const uint GLU_NURBS_END                        = 100169;
const uint GLU_NURBS_END_EXT                    = 100169;
const uint GLU_NURBS_BEGIN_DATA                 = 100170;
const uint GLU_NURBS_BEGIN_DATA_EXT             = 100170;
const uint GLU_NURBS_VERTEX_DATA                = 100171;
const uint GLU_NURBS_VERTEX_DATA_EXT            = 100171;
const uint GLU_NURBS_NORMAL_DATA                = 100172;
const uint GLU_NURBS_NORMAL_DATA_EXT            = 100172;
const uint GLU_NURBS_COLOR_DATA                 = 100173;
const uint GLU_NURBS_COLOR_DATA_EXT             = 100173;
const uint GLU_NURBS_TEXTURE_COORD_DATA         = 100174;
const uint GLU_NURBS_TEX_COORD_DATA_EXT         = 100174;
const uint GLU_NURBS_END_DATA                   = 100175;
const uint GLU_NURBS_END_DATA_EXT               = 100175;

/* NurbsError */
const uint GLU_NURBS_ERROR1                     = 100251   /* spline order un-supported */;
const uint GLU_NURBS_ERROR2                     = 100252   /* too few knots */;
const uint GLU_NURBS_ERROR3                     = 100253   /* valid knot range is empty */;
const uint GLU_NURBS_ERROR4                     = 100254   /* decreasing knot sequence */;
const uint GLU_NURBS_ERROR5                     = 100255   /* knot multiplicity > spline order */;
const uint GLU_NURBS_ERROR6                     = 100256   /* endcurve() must follow bgncurve() */;
const uint GLU_NURBS_ERROR7                     = 100257   /* bgncurve() must precede endcurve() */;
const uint GLU_NURBS_ERROR8                     = 100258   /* ctrlarray or knot vector is NULL */;
const uint GLU_NURBS_ERROR9                     = 100259   /* can't draw pwlcurves */;
const uint GLU_NURBS_ERROR10                    = 100260   /* missing gluNurbsCurve() */;
const uint GLU_NURBS_ERROR11                    = 100261   /* missing gluNurbsSurface() */;
const uint GLU_NURBS_ERROR12                    = 100262   /* endtrim() must precede endsurface() */;
const uint GLU_NURBS_ERROR13                    = 100263   /* bgnsurface() must precede endsurface() */;
const uint GLU_NURBS_ERROR14                    = 100264   /* curve of improper type passed as trim curve */;
const uint GLU_NURBS_ERROR15                    = 100265   /* bgnsurface() must precede bgntrim() */;
const uint GLU_NURBS_ERROR16                    = 100266   /* endtrim() must follow bgntrim() */;
const uint GLU_NURBS_ERROR17                    = 100267   /* bgntrim() must precede endtrim()*/;
const uint GLU_NURBS_ERROR18                    = 100268   /* invalid or missing trim curve*/;
const uint GLU_NURBS_ERROR19                    = 100269   /* bgntrim() must precede pwlcurve() */;
const uint GLU_NURBS_ERROR20                    = 100270   /* pwlcurve referenced twice*/;
const uint GLU_NURBS_ERROR21                    = 100271   /* pwlcurve and nurbscurve mixed */;
const uint GLU_NURBS_ERROR22                    = 100272   /* improper usage of trim data type */;
const uint GLU_NURBS_ERROR23                    = 100273   /* nurbscurve referenced twice */;
const uint GLU_NURBS_ERROR24                    = 100274   /* nurbscurve and pwlcurve mixed */;
const uint GLU_NURBS_ERROR25                    = 100275   /* nurbssurface referenced twice */;
const uint GLU_NURBS_ERROR26                    = 100276   /* invalid property */;
const uint GLU_NURBS_ERROR27                    = 100277   /* endsurface() must follow bgnsurface() */;
const uint GLU_NURBS_ERROR28                    = 100278   /* intersecting or misoriented trim curves */;
const uint GLU_NURBS_ERROR29                    = 100279   /* intersecting trim curves */;
const uint GLU_NURBS_ERROR30                    = 100280   /* UNUSED */;
const uint GLU_NURBS_ERROR31                    = 100281   /* unconnected trim curves */;
const uint GLU_NURBS_ERROR32                    = 100282   /* unknown knot error */;
const uint GLU_NURBS_ERROR33                    = 100283   /* negative vertex count encountered */;
const uint GLU_NURBS_ERROR34                    = 100284   /* negative byte-stride */;
const uint GLU_NURBS_ERROR35                    = 100285   /* unknown type descriptor */;
const uint GLU_NURBS_ERROR36                    = 100286   /* null control point reference */;
const uint GLU_NURBS_ERROR37                    = 100287   /* duplicate point on pwlcurve */;

/* NurbsProperty */
const uint GLU_AUTO_LOAD_MATRIX                 = 100200;
const uint GLU_CULLING                          = 100201;
const uint GLU_SAMPLING_TOLERANCE               = 100203;
const uint GLU_DISPLAY_MODE                     = 100204;
const uint GLU_PARAMETRIC_TOLERANCE             = 100202;
const uint GLU_SAMPLING_METHOD                  = 100205;
const uint GLU_U_STEP                           = 100206;
const uint GLU_V_STEP                           = 100207;
const uint GLU_NURBS_MODE                       = 100160;
const uint GLU_NURBS_MODE_EXT                   = 100160;
const uint GLU_NURBS_TESSELLATOR                = 100161;
const uint GLU_NURBS_TESSELLATOR_EXT            = 100161;
const uint GLU_NURBS_RENDERER                   = 100162;
const uint GLU_NURBS_RENDERER_EXT               = 100162;

/* NurbsSampling */
const uint GLU_OBJECT_PARAMETRIC_ERROR          = 100208;
const uint GLU_OBJECT_PARAMETRIC_ERROR_EXT      = 100208;
const uint GLU_OBJECT_PATH_LENGTH               = 100209;
const uint GLU_OBJECT_PATH_LENGTH_EXT           = 100209;
const uint GLU_PATH_LENGTH                      = 100215;
const uint GLU_PARAMETRIC_ERROR                 = 100216;
const uint GLU_DOMAIN_DISTANCE                  = 100217;

/* NurbsTrim */
const uint GLU_MAP1_TRIM_2                      = 100210;
const uint GLU_MAP1_TRIM_3                      = 100211;

/* QuadricDrawStyle */ 
const uint GLU_POINT                            = 100010;
const uint GLU_LINE                             = 100011;
const uint GLU_FILL                             = 100012;
const uint GLU_SILHOUETTE                       = 100013;
  
/* QuadricCallback */
/*      GLU_ERROR */

/* QuadricNormal */
const uint GLU_SMOOTH                           = 100000;
const uint GLU_FLAT                             = 100001;
const uint GLU_NONE                             = 100002;
 
/* QuadricOrientation */
const uint GLU_OUTSIDE                          = 100020;
const uint GLU_INSIDE                           = 100021;

/* TessCallback */
const uint GLU_TESS_BEGIN                       = 100100;
const uint GLU_BEGIN                            = 100100;
const uint GLU_TESS_VERTEX                      = 100101;
const uint GLU_VERTEX                           = 100101;
const uint GLU_TESS_END                         = 100102;
const uint GLU_END                              = 100102;
const uint GLU_TESS_ERROR                       = 100103;
const uint GLU_TESS_EDGE_FLAG                   = 100104;
const uint GLU_EDGE_FLAG                        = 100104;
const uint GLU_TESS_COMBINE                     = 100105;
const uint GLU_TESS_BEGIN_DATA                  = 100106;
const uint GLU_TESS_VERTEX_DATA                 = 100107;
const uint GLU_TESS_END_DATA                    = 100108;
const uint GLU_TESS_ERROR_DATA                  = 100109;
const uint GLU_TESS_EDGE_FLAG_DATA              = 100110;
const uint GLU_TESS_COMBINE_DATA                = 100111;

/* TessContour */
const uint GLU_CW                               = 100120;
const uint GLU_CCW                              = 100121;
const uint GLU_INTERIOR                         = 100122;
const uint GLU_EXTERIOR                         = 100123;
const uint GLU_UNKNOWN                          = 100124;

/* TessProperty */
const uint GLU_TESS_WINDING_RULE                = 100140;
const uint GLU_TESS_BOUNDARY_ONLY               = 100141;
const uint GLU_TESS_TOLERANCE                   = 100142;

/* TessError */
const uint GLU_TESS_ERROR1                      = 100151;
const uint GLU_TESS_ERROR2                      = 100152;
const uint GLU_TESS_ERROR3                      = 100153;
const uint GLU_TESS_ERROR4                      = 100154;
const uint GLU_TESS_ERROR5                      = 100155;
const uint GLU_TESS_ERROR6                      = 100156;
const uint GLU_TESS_ERROR7                      = 100157;
const uint GLU_TESS_ERROR8                      = 100158;
const uint GLU_TESS_MISSING_BEGIN_POLYGON       = 100151;
const uint GLU_TESS_MISSING_BEGIN_CONTOUR       = 100152;
const uint GLU_TESS_MISSING_END_POLYGON         = 100153;
const uint GLU_TESS_MISSING_END_CONTOUR         = 100154;
const uint GLU_TESS_COORD_TOO_LARGE             = 100155;
const uint GLU_TESS_NEED_COMBINE_CALLBACK       = 100156;

/* TessWinding */
const uint GLU_TESS_WINDING_ODD                 = 100130;
const uint GLU_TESS_WINDING_NONZERO             = 100131;
const uint GLU_TESS_WINDING_POSITIVE            = 100132;
const uint GLU_TESS_WINDING_NEGATIVE            = 100133;
const uint GLU_TESS_WINDING_ABS_GEQ_TWO         = 100134;

/*************************************************************/

extern (C) struct GLUnurbs;
extern (C) struct GLUquadric;
extern (C) struct GLUtesselator;

extern (C) struct GLUnurbsObj;
extern (C) struct GLUquadricObj;
extern (C) struct GLUtesselatorObj;
extern (C) struct GLUtriangulatorObj;

const GLdouble GLU_TESS_MAX_COORD = 1.0e150;

version (Windows) 
  extern (Windows):
else
  extern (C) :

version (GL_GLU_PROTOTYPES) {
void gluBeginCurve (GLUnurbs* nurb);
void gluBeginPolygon (GLUtesselator* tess);
void gluBeginSurface (GLUnurbs* nurb);
void gluBeginTrim (GLUnurbs* nurb);
version (NotWindows) {
GLint gluBuild1DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
}
GLint gluBuild1DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, void *data);
version (NotWindows) {
GLint gluBuild2DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
}
GLint gluBuild2DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, void *data);
version (NotWindows) {
GLint gluBuild3DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
GLint gluBuild3DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void *data);
}
GLboolean gluCheckExtension (GLubyte *extName, GLubyte *extString);
void gluCylinder (GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks);
void gluDeleteNurbsRenderer (GLUnurbs* nurb);
void gluDeleteQuadric (GLUquadric* quad);
void gluDeleteTess (GLUtesselator* tess);
void gluDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops);
void gluEndCurve (GLUnurbs* nurb);
void gluEndPolygon (GLUtesselator* tess);
void gluEndSurface (GLUnurbs* nurb);
void gluEndTrim (GLUnurbs* nurb);
GLubyte * gluErrorString (GLenum error);
version (Windows) {
wchar* gluErrorUnicodeStringEXT (GLenum   errCode);
}
void gluGetNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat* data);
GLubyte * gluGetString (GLenum name);
void gluGetTessProperty (GLUtesselator* tess, GLenum which, GLdouble* data);
void gluLoadSamplingMatrices (GLUnurbs* nurb, GLfloat *model, GLfloat *perspective, GLint *view);
void gluLookAt (GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ);
GLUnurbs* gluNewNurbsRenderer ();
GLUquadric* gluNewQuadric ();
GLUtesselator* gluNewTess ();
void gluNextContour (GLUtesselator* tess, GLenum type);
void gluNurbsCallback (GLUnurbs* nurb, GLenum which, GLvoid (*CallBackFunc)());
version (NotWindows) {
void gluNurbsCallbackData (GLUnurbs* nurb, GLvoid* userData);
void gluNurbsCallbackDataEXT (GLUnurbs* nurb, GLvoid* userData);
}
void gluNurbsCurve (GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type);
void gluNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat value);
void gluNurbsSurface (GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type);
void gluOrtho2D (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top);
void gluPartialDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep);
void gluPerspective (GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar);
void gluPickMatrix (GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport);
GLint gluProject (GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ);
void gluPwlCurve (GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type);
void gluQuadricCallback (GLUquadric* quad, GLenum which, GLvoid (*CallBackFunc)());
void gluQuadricDrawStyle (GLUquadric* quad, GLenum draw);
void gluQuadricNormals (GLUquadric* quad, GLenum normal);
void gluQuadricOrientation (GLUquadric* quad, GLenum orientation);
void gluQuadricTexture (GLUquadric* quad, GLboolean texture);
GLint gluScaleImage (GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut);
void gluSphere (GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks);
void gluTessBeginContour (GLUtesselator* tess);
void gluTessBeginPolygon (GLUtesselator* tess, GLvoid* data);
void gluTessCallback (GLUtesselator* tess, GLenum which, GLvoid (*CallBackFunc)());
void gluTessEndContour (GLUtesselator* tess);
void gluTessEndPolygon (GLUtesselator* tess);
void gluTessNormal (GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ);
void gluTessProperty (GLUtesselator* tess, GLenum which, GLdouble data);
void gluTessVertex (GLUtesselator* tess, GLdouble *location, GLvoid* data);
GLint gluUnProject (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ);
version (NotWindows) {
GLint gluUnProject4 (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble *model, GLdouble *proj, GLint *view, GLdouble near, GLdouble far, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW);
}
} /* GL_GLU_PROTOTYPES */

alias void (*PFGLUBEGINCURVEPROC) (GLUnurbs* nurb);
alias void (*PFGLUBEGINPOLYGONPROC) (GLUtesselator* tess);
alias void (*PFGLUBEGINSURFACEPROC) (GLUnurbs* nurb);
alias void (*PFGLUBEGINTRIMPROC) (GLUnurbs* nurb);
version (NotWindows) {
alias GLint (*PFGLUBUILD1DMIPMAPSLEVELSPROC) (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
}
alias GLint (*PFGLUBUILD1DMIPMAPSPROC) (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, void *data);
version (NotWindows) {
alias GLint (*PFGLUBUILD2DMIPMAPLEVELSPROC) (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
}
alias GLint (*PFGLUBUILD2DMIPMAPSPROC) (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, void *data);
version (NotWindows) {
alias GLint (*PFGLUBUILD3DMIPMAPLEVELSPROC) (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, void *data);
alias GLint (*PFGLUBUILD3DMIPMAPSPROC) (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void *data);
}
alias void (*PFGLUCYLINDERPROC) (GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks);
alias void (*PFGLUDELETENURBSRENDERERPROC) (GLUnurbs* nurb);
alias void (*PFGLUDELETEQUADRICPROC) (GLUquadric* quad);
alias void (*PFGLUDELETETESSPROC) (GLUtesselator* tess);
alias void (*PFGLUDISKPROC) (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops);
alias void (*PFGLUENDCURVEPROC) (GLUnurbs* nurb);
alias void (*PFGLUENDPOLYGONPROC) (GLUtesselator* tess);
alias void (*PFGLUENDSURFACEPROC) (GLUnurbs* nurb);
alias void (*PFGLUENDTRIMPROC) (GLUnurbs* nurb);
alias GLubyte * (*PFGLUERRORSTRINGPROC) (GLenum error);
version (Windows) {
alias wchar* (*PFGLUERRORUNICODESTRINGEXTPROC) (GLenum   errCode);
}
alias void (*PFGLUGETNURBSPROPERTYPROC) (GLUnurbs* nurb, GLenum property, GLfloat* data);
alias GLubyte * (*PFGLUGETSTRINGPROC) (GLenum name);
alias void (*PFGLUGETTESSPROPERTYPROC) (GLUtesselator* tess, GLenum which, GLdouble* data);
alias void (*PFGLULOADSAMPLINGMATRICESPROC) (GLUnurbs* nurb, GLfloat *model, GLfloat *perspective, GLint *view);
alias void (*PFGLULOOKATPROC) (GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ);
alias GLUnurbs* (*PFGLUNEWNURBSRENDERERPROC) ();
alias GLUquadric* (*PFGLUNEWQUADRICPROC) ();
alias GLUtesselator* (*PFGLUNEWTESSPROC) ();
alias void (*PFGLUNEXTCONTOURPROC) (GLUtesselator* tess, GLenum type);
alias void (*PFGLUNURBSCALLBACKPROC) (GLUnurbs* nurb, GLenum which, void (*fn) ());
version (NotWindows) {
alias void (*PFGLUNURBSCALLBACKDATAPROC) (GLUnurbs* nurb, GLvoid* userData);
alias void (*PFGLUNURBSCALLBACKDATAEXTPROC) (GLUnurbs* nurb, GLvoid* userData);
}
alias void (*PFGLUNURBSCURVEPROC) (GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type);
alias void (*PFGLUNURBSPROPERTYPROC) (GLUnurbs* nurb, GLenum property, GLfloat value);
alias void (*PFGLUNURBSSURFACEPROC) (GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type);
alias void (*PFGLUORTHO2DPROC) (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top);
alias void (*PFGLUPARTIALDISKPROC) (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep);
alias void (*PFGLUPERSPECTIVEPROC) (GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar);
alias void (*PFGLUPICKMATRIXPROC) (GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport);
alias GLint (*PFGLUPROJECTPROC) (GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ);
alias void (*PFGLUPWLCURVEPROC) (GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type);
alias void (*PFGLUQUADRICCALLBACKPROC) (GLUquadric* quad, GLenum which, void (*fn) ());
alias void (*PFGLUQUADRICDRAWSTYLEPROC) (GLUquadric* quad, GLenum draw);
alias void (*PFGLUQUADRICNORMALSPROC) (GLUquadric* quad, GLenum normal);
alias void (*PFGLUQUADRICORIENTATIONPROC) (GLUquadric* quad, GLenum orientation);
alias void (*PFGLUQUADRICTEXTUREPROC) (GLUquadric* quad, GLboolean texture);
alias GLint (*PFGLUSCALEIMAGEPROC) (GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut);
alias void (*PFGLUSPHEREPROC) (GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks);
alias void (*PFGLUTESSBEGINCONTOURPROC) (GLUtesselator* tess);
alias void (*PFGLUTESSBEGINPOLYGONPROC) (GLUtesselator* tess, GLvoid* data);
alias void (*PFGLUTESSCALLBACKPROC) (GLUtesselator* tess, GLenum which, void (*fn) ());
alias void (*PFGLUTESSENDCONTOURPROC) (GLUtesselator* tess);
alias void (*PFGLUTESSENDPOLYGONPROC) (GLUtesselator* tess);
alias void (*PFGLUTESSNORMALPROC) (GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ);
alias void (*PFGLUTESSPROPERTYPROC) (GLUtesselator* tess, GLenum which, GLdouble data);
alias void (*PFGLUTESSVERTEXPROC) (GLUtesselator* tess, GLdouble *location, GLvoid* data);
alias GLint (*PFGLUUNPROJECTPROC) (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble *model, GLdouble *proj, GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ);
version (NotWindows)
{
alias GLint (*PFGLUUNPROJECT4PROC) (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble *model, GLdouble *proj, GLint *view, GLdouble near, GLdouble far, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW);
}

/****           Callback function prototypes    ****/

/* gluQuadricCallback */
typedef void (* GLUquadricErrorProc)     (GLenum);

/* gluTessCallback */
typedef void (* GLUtessBeginProc)        (GLenum);
typedef void (* GLUtessEdgeFlagProc)     (GLboolean);
typedef void (* GLUtessVertexProc)       (void *);
typedef void (* GLUtessEndProc)          ();
typedef void (* GLUtessErrorProc)        (GLenum);
typedef void (* GLUtessCombineProc)      (GLdouble[3], void*[4], GLfloat[4], void** );
typedef void (* GLUtessBeginDataProc)    (GLenum, void *);
typedef void (* GLUtessEdgeFlagDataProc) (GLboolean, void *);
typedef void (* GLUtessVertexDataProc)   (void *, void *);
typedef void (* GLUtessEndDataProc)      (void *);
typedef void (* GLUtessErrorDataProc)    (GLenum, void *);
typedef void (* GLUtessCombineDataProc)  (GLdouble[3], void*[4], GLfloat[4], void**, void* );

/* gluNurbs */
typedef void (* GLUnurbsErrorProc)       (GLenum);

