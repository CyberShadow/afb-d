/* gl.h */

module opengl.gl;

extern (C):

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
** Merged with GL.H from the Microsoft Windows 95 OpenGL SDK distribution,
** Copyright (c) 1985-96, Microsoft Corporation (marked with Windows below)
**
** Conversion of header to D, done by Anders F Bjorklund <afb@algonet.se>
*/

version (Windows) {} else {
  version = NotWindows;
}

version (GL_GL_NO_PROTOTYPES) {} else {
  version = GL_GL_PROTOTYPES;
}

alias uint GLenum;
alias ubyte GLboolean;
alias uint GLbitfield;
alias byte GLbyte;
alias short GLshort;
alias int GLint;
alias int GLsizei;
alias ubyte GLubyte;
alias ushort GLushort;
alias uint GLuint;
alias float GLfloat;
alias float GLclampf;
alias double GLdouble;
alias double GLclampd;
alias void GLvoid;

/*************************************************************/

/* Version */
version = GL_VERSION_1_1;
version (NotWindows) {
version = GL_VERSION_1_2;
}

version (NotWindows) {
/* Extensions */
version = GL_ARB_imaging;
version = GL_ARB_multitexture;
}

/* AccumOp */
const uint GL_ACCUM                          = 0x0100;
const uint GL_LOAD                           = 0x0101;
const uint GL_RETURN                         = 0x0102;
const uint GL_MULT                           = 0x0103;
const uint GL_ADD                            = 0x0104;

/* AlphaFunction */
const uint GL_NEVER                          = 0x0200;
const uint GL_LESS                           = 0x0201;
const uint GL_EQUAL                          = 0x0202;
const uint GL_LEQUAL                         = 0x0203;
const uint GL_GREATER                        = 0x0204;
const uint GL_NOTEQUAL                       = 0x0205;
const uint GL_GEQUAL                         = 0x0206;
const uint GL_ALWAYS                         = 0x0207;

/* AttribMask */
const uint GL_CURRENT_BIT                    = 0x00000001;
const uint GL_POINT_BIT                      = 0x00000002;
const uint GL_LINE_BIT                       = 0x00000004;
const uint GL_POLYGON_BIT                    = 0x00000008;
const uint GL_POLYGON_STIPPLE_BIT            = 0x00000010;
const uint GL_PIXEL_MODE_BIT                 = 0x00000020;
const uint GL_LIGHTING_BIT                   = 0x00000040;
const uint GL_FOG_BIT                        = 0x00000080;
const uint GL_DEPTH_BUFFER_BIT               = 0x00000100;
const uint GL_ACCUM_BUFFER_BIT               = 0x00000200;
const uint GL_STENCIL_BUFFER_BIT             = 0x00000400;
const uint GL_VIEWPORT_BIT                   = 0x00000800;
const uint GL_TRANSFORM_BIT                  = 0x00001000;
const uint GL_ENABLE_BIT                     = 0x00002000;
const uint GL_COLOR_BUFFER_BIT               = 0x00004000;
const uint GL_HINT_BIT                       = 0x00008000;
const uint GL_EVAL_BIT                       = 0x00010000;
const uint GL_LIST_BIT                       = 0x00020000;
const uint GL_TEXTURE_BIT                    = 0x00040000;
const uint GL_SCISSOR_BIT                    = 0x00080000;
const uint GL_ALL_ATTRIB_BITS                = 0x000fffff;

/* BeginMode */
const uint GL_POINTS                         = 0x0000;
const uint GL_LINES                          = 0x0001;
const uint GL_LINE_LOOP                      = 0x0002;
const uint GL_LINE_STRIP                     = 0x0003;
const uint GL_TRIANGLES                      = 0x0004;
const uint GL_TRIANGLE_STRIP                 = 0x0005;
const uint GL_TRIANGLE_FAN                   = 0x0006;
const uint GL_QUADS                          = 0x0007;
const uint GL_QUAD_STRIP                     = 0x0008;
const uint GL_POLYGON                        = 0x0009;

/* BlendEquationMode */
/*      GL_LOGIC_OP */
/*      GL_FUNC_ADD */
/*      GL_MIN */
/*      GL_MAX */
/*      GL_FUNC_SUBTRACT */
/*      GL_FUNC_REVERSE_SUBTRACT */

/* BlendingFactorDest */
const uint GL_ZERO                           = 0;
const uint GL_ONE                            = 1;
const uint GL_SRC_COLOR                      = 0x0300;
const uint GL_ONE_MINUS_SRC_COLOR            = 0x0301;
const uint GL_SRC_ALPHA                      = 0x0302;
const uint GL_ONE_MINUS_SRC_ALPHA            = 0x0303;
const uint GL_DST_ALPHA                      = 0x0304;
const uint GL_ONE_MINUS_DST_ALPHA            = 0x0305;
/*      GL_CONSTANT_COLOR */
/*      GL_ONE_MINUS_CONSTANT_COLOR */
/*      GL_CONSTANT_ALPHA */
/*      GL_ONE_MINUS_CONSTANT_ALPHA */

/* BlendingFactorSrc */
/*      GL_ZERO */
/*      GL_ONE */
const uint GL_DST_COLOR                      = 0x0306;
const uint GL_ONE_MINUS_DST_COLOR            = 0x0307;
const uint GL_SRC_ALPHA_SATURATE             = 0x0308;
/*      GL_SRC_ALPHA */
/*      GL_ONE_MINUS_SRC_ALPHA */
/*      GL_DST_ALPHA */
/*      GL_ONE_MINUS_DST_ALPHA */
/*      GL_CONSTANT_COLOR */
/*      GL_ONE_MINUS_CONSTANT_COLOR */
/*      GL_CONSTANT_ALPHA */
/*      GL_ONE_MINUS_CONSTANT_ALPHA */

/* Boolean */
const GLboolean GL_TRUE                      = 1;
const GLboolean GL_FALSE                     = 0;

/* ClearBufferMask */
/*      GL_COLOR_BUFFER_BIT */
/*      GL_ACCUM_BUFFER_BIT */
/*      GL_STENCIL_BUFFER_BIT */
/*      GL_DEPTH_BUFFER_BIT */

/* ClientArrayType */
/*      GL_VERTEX_ARRAY */
/*      GL_NORMAL_ARRAY */
/*      GL_COLOR_ARRAY */
/*      GL_INDEX_ARRAY */
/*      GL_TEXTURE_COORD_ARRAY */
/*      GL_EDGE_FLAG_ARRAY */

/* ClipPlaneName */
const uint GL_CLIP_PLANE0                    = 0x3000;
const uint GL_CLIP_PLANE1                    = 0x3001;
const uint GL_CLIP_PLANE2                    = 0x3002;
const uint GL_CLIP_PLANE3                    = 0x3003;
const uint GL_CLIP_PLANE4                    = 0x3004;
const uint GL_CLIP_PLANE5                    = 0x3005;

/* ColorMaterialFace */
/*      GL_FRONT */
/*      GL_BACK */
/*      GL_FRONT_AND_BACK */

/* ColorMaterialParameter */
/*      GL_AMBIENT */
/*      GL_DIFFUSE */
/*      GL_SPECULAR */
/*      GL_EMISSION */
/*      GL_AMBIENT_AND_DIFFUSE */

/* ColorPointerType */
/*      GL_BYTE */
/*      GL_UNSIGNED_BYTE */
/*      GL_SHORT */
/*      GL_UNSIGNED_SHORT */
/*      GL_INT */
/*      GL_UNSIGNED_INT */
/*      GL_FLOAT */
/*      GL_DOUBLE */

/* ColorTableParameterPName */
/*      GL_COLOR_TABLE_SCALE */
/*      GL_COLOR_TABLE_BIAS */

/* ColorTableTarget */
/*      GL_COLOR_TABLE */
/*      GL_POST_CONVOLUTION_COLOR_TABLE */
/*      GL_POST_COLOR_MATRIX_COLOR_TABLE */
/*      GL_PROXY_COLOR_TABLE */
/*      GL_PROXY_POST_CONVOLUTION_COLOR_TABLE */
/*      GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE */

/* ConvolutionBorderMode */
/*      GL_REDUCE */
/*      GL_IGNORE_BORDER */
/*      GL_CONSTANT_BORDER */

/* ConvolutionParameter */
/*      GL_CONVOLUTION_BORDER_MODE */
/*      GL_CONVOLUTION_FILTER_SCALE */
/*      GL_CONVOLUTION_FILTER_BIAS */

/* ConvolutionTarget */
/*      GL_CONVOLUTION_1D */
/*      GL_CONVOLUTION_2D */

/* CullFaceMode */
/*      GL_FRONT */
/*      GL_BACK */
/*      GL_FRONT_AND_BACK */

/* DataType */
const uint GL_BYTE                           = 0x1400;
const uint GL_UNSIGNED_BYTE                  = 0x1401;
const uint GL_SHORT                          = 0x1402;
const uint GL_UNSIGNED_SHORT                 = 0x1403;
const uint GL_INT                            = 0x1404;
const uint GL_UNSIGNED_INT                   = 0x1405;
const uint GL_FLOAT                          = 0x1406;
const uint GL_2_BYTES                        = 0x1407;
const uint GL_3_BYTES                        = 0x1408;
const uint GL_4_BYTES                        = 0x1409;
const uint GL_DOUBLE                         = 0x140A;

/* DepthFunction */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* DrawBufferMode */
const uint GL_NONE                           = 0;
const uint GL_FRONT_LEFT                     = 0x0400;
const uint GL_FRONT_RIGHT                    = 0x0401;
const uint GL_BACK_LEFT                      = 0x0402;
const uint GL_BACK_RIGHT                     = 0x0403;
const uint GL_FRONT                          = 0x0404;
const uint GL_BACK                           = 0x0405;
const uint GL_LEFT                           = 0x0406;
const uint GL_RIGHT                          = 0x0407;
const uint GL_FRONT_AND_BACK                 = 0x0408;
const uint GL_AUX0                           = 0x0409;
const uint GL_AUX1                           = 0x040A;
const uint GL_AUX2                           = 0x040B;
const uint GL_AUX3                           = 0x040C;

/* Enable */
/*      GL_FOG */
/*      GL_LIGHTING */
/*      GL_TEXTURE_1D */
/*      GL_TEXTURE_2D */
/*      GL_LINE_STIPPLE */
/*      GL_POLYGON_STIPPLE */
/*      GL_CULL_FACE */
/*      GL_ALPHA_TEST */
/*      GL_BLEND */
/*      GL_INDEX_LOGIC_OP */
/*      GL_COLOR_LOGIC_OP */
/*      GL_DITHER */
/*      GL_STENCIL_TEST */
/*      GL_DEPTH_TEST */
/*      GL_CLIP_PLANE0 */
/*      GL_CLIP_PLANE1 */
/*      GL_CLIP_PLANE2 */
/*      GL_CLIP_PLANE3 */
/*      GL_CLIP_PLANE4 */
/*      GL_CLIP_PLANE5 */
/*      GL_LIGHT0 */
/*      GL_LIGHT1 */
/*      GL_LIGHT2 */
/*      GL_LIGHT3 */
/*      GL_LIGHT4 */
/*      GL_LIGHT5 */
/*      GL_LIGHT6 */
/*      GL_LIGHT7 */
/*      GL_TEXTURE_GEN_S */
/*      GL_TEXTURE_GEN_T */
/*      GL_TEXTURE_GEN_R */
/*      GL_TEXTURE_GEN_Q */
/*      GL_MAP1_VERTEX_3 */
/*      GL_MAP1_VERTEX_4 */
/*      GL_MAP1_COLOR_4 */
/*      GL_MAP1_INDEX */
/*      GL_MAP1_NORMAL */
/*      GL_MAP1_TEXTURE_COORD_1 */
/*      GL_MAP1_TEXTURE_COORD_2 */
/*      GL_MAP1_TEXTURE_COORD_3 */
/*      GL_MAP1_TEXTURE_COORD_4 */
/*      GL_MAP2_VERTEX_3 */
/*      GL_MAP2_VERTEX_4 */
/*      GL_MAP2_COLOR_4 */
/*      GL_MAP2_INDEX */
/*      GL_MAP2_NORMAL */
/*      GL_MAP2_TEXTURE_COORD_1 */
/*      GL_MAP2_TEXTURE_COORD_2 */
/*      GL_MAP2_TEXTURE_COORD_3 */
/*      GL_MAP2_TEXTURE_COORD_4 */
/*      GL_POINT_SMOOTH */
/*      GL_LINE_SMOOTH */
/*      GL_POLYGON_SMOOTH */
/*      GL_SCISSOR_TEST */
/*      GL_COLOR_MATERIAL */
/*      GL_NORMALIZE */
/*      GL_AUTO_NORMAL */
/*      GL_VERTEX_ARRAY */
/*      GL_NORMAL_ARRAY */
/*      GL_COLOR_ARRAY */
/*      GL_INDEX_ARRAY */
/*      GL_TEXTURE_COORD_ARRAY */
/*      GL_EDGE_FLAG_ARRAY */
/*      GL_POLYGON_OFFSET_POINT */
/*      GL_POLYGON_OFFSET_LINE */
/*      GL_POLYGON_OFFSET_FILL */
/*      GL_COLOR_TABLE */
/*      GL_POST_CONVOLUTION_COLOR_TABLE */
/*      GL_POST_COLOR_MATRIX_COLOR_TABLE */
/*      GL_CONVOLUTION_1D */
/*      GL_CONVOLUTION_2D */
/*      GL_SEPARABLE_2D */
/*      GL_HISTOGRAM */
/*      GL_MINMAX */
/*      GL_RESCALE_NORMAL */
/*      GL_TEXTURE_3D */

/* ErrorCode */
const uint GL_NO_ERROR                       = 0;
const uint GL_INVALID_ENUM                   = 0x0500;
const uint GL_INVALID_VALUE                  = 0x0501;
const uint GL_INVALID_OPERATION              = 0x0502;
const uint GL_STACK_OVERFLOW                 = 0x0503;
const uint GL_STACK_UNDERFLOW                = 0x0504;
const uint GL_OUT_OF_MEMORY                  = 0x0505;
/*      GL_TABLE_TOO_LARGE */

/* FeedBackMode */
const uint GL_2D                             = 0x0600;
const uint GL_3D                             = 0x0601;
const uint GL_3D_COLOR                       = 0x0602;
const uint GL_3D_COLOR_TEXTURE               = 0x0603;
const uint GL_4D_COLOR_TEXTURE               = 0x0604;

/* FeedBackToken */
const uint GL_PASS_THROUGH_TOKEN             = 0x0700;
const uint GL_POINT_TOKEN                    = 0x0701;
const uint GL_LINE_TOKEN                     = 0x0702;
const uint GL_POLYGON_TOKEN                  = 0x0703;
const uint GL_BITMAP_TOKEN                   = 0x0704;
const uint GL_DRAW_PIXEL_TOKEN               = 0x0705;
const uint GL_COPY_PIXEL_TOKEN               = 0x0706;
const uint GL_LINE_RESET_TOKEN               = 0x0707;

/* FogMode */
/*      GL_LINEAR */
const uint GL_EXP                            = 0x0800;
const uint GL_EXP2                           = 0x0801;

/* FogParameter */
/*      GL_FOG_COLOR */
/*      GL_FOG_DENSITY */
/*      GL_FOG_END */
/*      GL_FOG_INDEX */
/*      GL_FOG_MODE */
/*      GL_FOG_START */

/* FrontFaceDirection */
const uint GL_CW                             = 0x0900;
const uint GL_CCW                            = 0x0901;

/* GetColorTableParameterPName */
/*      GL_COLOR_TABLE_SCALE */
/*      GL_COLOR_TABLE_BIAS */
/*      GL_COLOR_TABLE_FORMAT */
/*      GL_COLOR_TABLE_WIDTH */
/*      GL_COLOR_TABLE_RED_SIZE */
/*      GL_COLOR_TABLE_GREEN_SIZE */
/*      GL_COLOR_TABLE_BLUE_SIZE */
/*      GL_COLOR_TABLE_ALPHA_SIZE */
/*      GL_COLOR_TABLE_LUMINANCE_SIZE */
/*      GL_COLOR_TABLE_INTENSITY_SIZE */

/* GetConvolutionParameterPName */
/*      GL_CONVOLUTION_BORDER_COLOR */
/*      GL_CONVOLUTION_BORDER_MODE */
/*      GL_CONVOLUTION_FILTER_SCALE */
/*      GL_CONVOLUTION_FILTER_BIAS */
/*      GL_CONVOLUTION_FORMAT */
/*      GL_CONVOLUTION_WIDTH */
/*      GL_CONVOLUTION_HEIGHT */
/*      GL_MAX_CONVOLUTION_WIDTH */
/*      GL_MAX_CONVOLUTION_HEIGHT */

/* GetHistogramParameterPName */
/*      GL_HISTOGRAM_WIDTH */
/*      GL_HISTOGRAM_FORMAT */
/*      GL_HISTOGRAM_RED_SIZE */
/*      GL_HISTOGRAM_GREEN_SIZE */
/*      GL_HISTOGRAM_BLUE_SIZE */
/*      GL_HISTOGRAM_ALPHA_SIZE */
/*      GL_HISTOGRAM_LUMINANCE_SIZE */
/*      GL_HISTOGRAM_SINK */

/* GetMapTarget */
const uint GL_COEFF                          = 0x0A00;
const uint GL_ORDER                          = 0x0A01;
const uint GL_DOMAIN                         = 0x0A02;

/* GetMinmaxParameterPName */
/*      GL_MINMAX_FORMAT */
/*      GL_MINMAX_SINK */

/* GetPixelMap */
/*      GL_PIXEL_MAP_I_TO_I */
/*      GL_PIXEL_MAP_S_TO_S */
/*      GL_PIXEL_MAP_I_TO_R */
/*      GL_PIXEL_MAP_I_TO_G */
/*      GL_PIXEL_MAP_I_TO_B */
/*      GL_PIXEL_MAP_I_TO_A */
/*      GL_PIXEL_MAP_R_TO_R */
/*      GL_PIXEL_MAP_G_TO_G */
/*      GL_PIXEL_MAP_B_TO_B */
/*      GL_PIXEL_MAP_A_TO_A */

/* GetPointerTarget */
/*      GL_VERTEX_ARRAY_POINTER */
/*      GL_NORMAL_ARRAY_POINTER */
/*      GL_COLOR_ARRAY_POINTER */
/*      GL_INDEX_ARRAY_POINTER */
/*      GL_TEXTURE_COORD_ARRAY_POINTER */
/*      GL_EDGE_FLAG_ARRAY_POINTER */

/* GetTarget */
const uint GL_CURRENT_COLOR                  = 0x0B00;
const uint GL_CURRENT_INDEX                  = 0x0B01;
const uint GL_CURRENT_NORMAL                 = 0x0B02;
const uint GL_CURRENT_TEXTURE_COORDS         = 0x0B03;
const uint GL_CURRENT_RASTER_COLOR           = 0x0B04;
const uint GL_CURRENT_RASTER_INDEX           = 0x0B05;
const uint GL_CURRENT_RASTER_TEXTURE_COORDS  = 0x0B06;
const uint GL_CURRENT_RASTER_POSITION        = 0x0B07;
const uint GL_CURRENT_RASTER_POSITION_VALID  = 0x0B08;
const uint GL_CURRENT_RASTER_DISTANCE        = 0x0B09;
const uint GL_POINT_SMOOTH                   = 0x0B10;
const uint GL_POINT_SIZE                     = 0x0B11;
const uint GL_POINT_SIZE_RANGE               = 0x0B12;
const uint GL_POINT_SIZE_GRANULARITY         = 0x0B13;
const uint GL_LINE_SMOOTH                    = 0x0B20;
const uint GL_LINE_WIDTH                     = 0x0B21;
const uint GL_LINE_WIDTH_RANGE               = 0x0B22;
const uint GL_LINE_WIDTH_GRANULARITY         = 0x0B23;
const uint GL_LINE_STIPPLE                   = 0x0B24;
const uint GL_LINE_STIPPLE_PATTERN           = 0x0B25;
const uint GL_LINE_STIPPLE_REPEAT            = 0x0B26;
/*      GL_SMOOTH_POINT_SIZE_RANGE */
/*      GL_SMOOTH_POINT_SIZE_GRANULARITY */
/*      GL_SMOOTH_LINE_WIDTH_RANGE */
/*      GL_SMOOTH_LINE_WIDTH_GRANULARITY */
/*      GL_ALIASED_POINT_SIZE_RANGE */
/*      GL_ALIASED_LINE_WIDTH_RANGE */
const uint GL_LIST_MODE                      = 0x0B30;
const uint GL_MAX_LIST_NESTING               = 0x0B31;
const uint GL_LIST_BASE                      = 0x0B32;
const uint GL_LIST_INDEX                     = 0x0B33;
const uint GL_POLYGON_MODE                   = 0x0B40;
const uint GL_POLYGON_SMOOTH                 = 0x0B41;
const uint GL_POLYGON_STIPPLE                = 0x0B42;
const uint GL_EDGE_FLAG                      = 0x0B43;
const uint GL_CULL_FACE                      = 0x0B44;
const uint GL_CULL_FACE_MODE                 = 0x0B45;
const uint GL_FRONT_FACE                     = 0x0B46;
const uint GL_LIGHTING                       = 0x0B50;
const uint GL_LIGHT_MODEL_LOCAL_VIEWER       = 0x0B51;
const uint GL_LIGHT_MODEL_TWO_SIDE           = 0x0B52;
const uint GL_LIGHT_MODEL_AMBIENT            = 0x0B53;
const uint GL_SHADE_MODEL                    = 0x0B54;
const uint GL_COLOR_MATERIAL_FACE            = 0x0B55;
const uint GL_COLOR_MATERIAL_PARAMETER       = 0x0B56;
const uint GL_COLOR_MATERIAL                 = 0x0B57;
const uint GL_FOG                            = 0x0B60;
const uint GL_FOG_INDEX                      = 0x0B61;
const uint GL_FOG_DENSITY                    = 0x0B62;
const uint GL_FOG_START                      = 0x0B63;
const uint GL_FOG_END                        = 0x0B64;
const uint GL_FOG_MODE                       = 0x0B65;
const uint GL_FOG_COLOR                      = 0x0B66;
const uint GL_DEPTH_RANGE                    = 0x0B70;
const uint GL_DEPTH_TEST                     = 0x0B71;
const uint GL_DEPTH_WRITEMASK                = 0x0B72;
const uint GL_DEPTH_CLEAR_VALUE              = 0x0B73;
const uint GL_DEPTH_FUNC                     = 0x0B74;
const uint GL_ACCUM_CLEAR_VALUE              = 0x0B80;
const uint GL_STENCIL_TEST                   = 0x0B90;
const uint GL_STENCIL_CLEAR_VALUE            = 0x0B91;
const uint GL_STENCIL_FUNC                   = 0x0B92;
const uint GL_STENCIL_VALUE_MASK             = 0x0B93;
const uint GL_STENCIL_FAIL                   = 0x0B94;
const uint GL_STENCIL_PASS_DEPTH_FAIL        = 0x0B95;
const uint GL_STENCIL_PASS_DEPTH_PASS        = 0x0B96;
const uint GL_STENCIL_REF                    = 0x0B97;
const uint GL_STENCIL_WRITEMASK              = 0x0B98;
const uint GL_MATRIX_MODE                    = 0x0BA0;
const uint GL_NORMALIZE                      = 0x0BA1;
const uint GL_VIEWPORT                       = 0x0BA2;
const uint GL_MODELVIEW_STACK_DEPTH          = 0x0BA3;
const uint GL_PROJECTION_STACK_DEPTH         = 0x0BA4;
const uint GL_TEXTURE_STACK_DEPTH            = 0x0BA5;
const uint GL_MODELVIEW_MATRIX               = 0x0BA6;
const uint GL_PROJECTION_MATRIX              = 0x0BA7;
const uint GL_TEXTURE_MATRIX                 = 0x0BA8;
const uint GL_ATTRIB_STACK_DEPTH             = 0x0BB0;
const uint GL_CLIENT_ATTRIB_STACK_DEPTH      = 0x0BB1;
const uint GL_ALPHA_TEST                     = 0x0BC0;
const uint GL_ALPHA_TEST_FUNC                = 0x0BC1;
const uint GL_ALPHA_TEST_REF                 = 0x0BC2;
const uint GL_DITHER                         = 0x0BD0;
const uint GL_BLEND_DST                      = 0x0BE0;
const uint GL_BLEND_SRC                      = 0x0BE1;
const uint GL_BLEND                          = 0x0BE2;
const uint GL_LOGIC_OP_MODE                  = 0x0BF0;
const uint GL_INDEX_LOGIC_OP                 = 0x0BF1;
const uint GL_COLOR_LOGIC_OP                 = 0x0BF2;
const uint GL_AUX_BUFFERS                    = 0x0C00;
const uint GL_DRAW_BUFFER                    = 0x0C01;
const uint GL_READ_BUFFER                    = 0x0C02;
const uint GL_SCISSOR_BOX                    = 0x0C10;
const uint GL_SCISSOR_TEST                   = 0x0C11;
const uint GL_INDEX_CLEAR_VALUE              = 0x0C20;
const uint GL_INDEX_WRITEMASK                = 0x0C21;
const uint GL_COLOR_CLEAR_VALUE              = 0x0C22;
const uint GL_COLOR_WRITEMASK                = 0x0C23;
const uint GL_INDEX_MODE                     = 0x0C30;
const uint GL_RGBA_MODE                      = 0x0C31;
const uint GL_DOUBLEBUFFER                   = 0x0C32;
const uint GL_STEREO                         = 0x0C33;
const uint GL_RENDER_MODE                    = 0x0C40;
const uint GL_PERSPECTIVE_CORRECTION_HINT    = 0x0C50;
const uint GL_POINT_SMOOTH_HINT              = 0x0C51;
const uint GL_LINE_SMOOTH_HINT               = 0x0C52;
const uint GL_POLYGON_SMOOTH_HINT            = 0x0C53;
const uint GL_FOG_HINT                       = 0x0C54;
const uint GL_TEXTURE_GEN_S                  = 0x0C60;
const uint GL_TEXTURE_GEN_T                  = 0x0C61;
const uint GL_TEXTURE_GEN_R                  = 0x0C62;
const uint GL_TEXTURE_GEN_Q                  = 0x0C63;
const uint GL_PIXEL_MAP_I_TO_I               = 0x0C70;
const uint GL_PIXEL_MAP_S_TO_S               = 0x0C71;
const uint GL_PIXEL_MAP_I_TO_R               = 0x0C72;
const uint GL_PIXEL_MAP_I_TO_G               = 0x0C73;
const uint GL_PIXEL_MAP_I_TO_B               = 0x0C74;
const uint GL_PIXEL_MAP_I_TO_A               = 0x0C75;
const uint GL_PIXEL_MAP_R_TO_R               = 0x0C76;
const uint GL_PIXEL_MAP_G_TO_G               = 0x0C77;
const uint GL_PIXEL_MAP_B_TO_B               = 0x0C78;
const uint GL_PIXEL_MAP_A_TO_A               = 0x0C79;
const uint GL_PIXEL_MAP_I_TO_I_SIZE          = 0x0CB0;
const uint GL_PIXEL_MAP_S_TO_S_SIZE          = 0x0CB1;
const uint GL_PIXEL_MAP_I_TO_R_SIZE          = 0x0CB2;
const uint GL_PIXEL_MAP_I_TO_G_SIZE          = 0x0CB3;
const uint GL_PIXEL_MAP_I_TO_B_SIZE          = 0x0CB4;
const uint GL_PIXEL_MAP_I_TO_A_SIZE          = 0x0CB5;
const uint GL_PIXEL_MAP_R_TO_R_SIZE          = 0x0CB6;
const uint GL_PIXEL_MAP_G_TO_G_SIZE          = 0x0CB7;
const uint GL_PIXEL_MAP_B_TO_B_SIZE          = 0x0CB8;
const uint GL_PIXEL_MAP_A_TO_A_SIZE          = 0x0CB9;
const uint GL_UNPACK_SWAP_BYTES              = 0x0CF0;
const uint GL_UNPACK_LSB_FIRST               = 0x0CF1;
const uint GL_UNPACK_ROW_LENGTH              = 0x0CF2;
const uint GL_UNPACK_SKIP_ROWS               = 0x0CF3;
const uint GL_UNPACK_SKIP_PIXELS             = 0x0CF4;
const uint GL_UNPACK_ALIGNMENT               = 0x0CF5;
const uint GL_PACK_SWAP_BYTES                = 0x0D00;
const uint GL_PACK_LSB_FIRST                 = 0x0D01;
const uint GL_PACK_ROW_LENGTH                = 0x0D02;
const uint GL_PACK_SKIP_ROWS                 = 0x0D03;
const uint GL_PACK_SKIP_PIXELS               = 0x0D04;
const uint GL_PACK_ALIGNMENT                 = 0x0D05;
const uint GL_MAP_COLOR                      = 0x0D10;
const uint GL_MAP_STENCIL                    = 0x0D11;
const uint GL_INDEX_SHIFT                    = 0x0D12;
const uint GL_INDEX_OFFSET                   = 0x0D13;
const uint GL_RED_SCALE                      = 0x0D14;
const uint GL_RED_BIAS                       = 0x0D15;
const uint GL_ZOOM_X                         = 0x0D16;
const uint GL_ZOOM_Y                         = 0x0D17;
const uint GL_GREEN_SCALE                    = 0x0D18;
const uint GL_GREEN_BIAS                     = 0x0D19;
const uint GL_BLUE_SCALE                     = 0x0D1A;
const uint GL_BLUE_BIAS                      = 0x0D1B;
const uint GL_ALPHA_SCALE                    = 0x0D1C;
const uint GL_ALPHA_BIAS                     = 0x0D1D;
const uint GL_DEPTH_SCALE                    = 0x0D1E;
const uint GL_DEPTH_BIAS                     = 0x0D1F;
const uint GL_MAX_EVAL_ORDER                 = 0x0D30;
const uint GL_MAX_LIGHTS                     = 0x0D31;
const uint GL_MAX_CLIP_PLANES                = 0x0D32;
const uint GL_MAX_TEXTURE_SIZE               = 0x0D33;
const uint GL_MAX_PIXEL_MAP_TABLE            = 0x0D34;
const uint GL_MAX_ATTRIB_STACK_DEPTH         = 0x0D35;
const uint GL_MAX_MODELVIEW_STACK_DEPTH      = 0x0D36;
const uint GL_MAX_NAME_STACK_DEPTH           = 0x0D37;
const uint GL_MAX_PROJECTION_STACK_DEPTH     = 0x0D38;
const uint GL_MAX_TEXTURE_STACK_DEPTH        = 0x0D39;
const uint GL_MAX_VIEWPORT_DIMS              = 0x0D3A;
const uint GL_MAX_CLIENT_ATTRIB_STACK_DEPTH  = 0x0D3B;
const uint GL_SUBPIXEL_BITS                  = 0x0D50;
const uint GL_INDEX_BITS                     = 0x0D51;
const uint GL_RED_BITS                       = 0x0D52;
const uint GL_GREEN_BITS                     = 0x0D53;
const uint GL_BLUE_BITS                      = 0x0D54;
const uint GL_ALPHA_BITS                     = 0x0D55;
const uint GL_DEPTH_BITS                     = 0x0D56;
const uint GL_STENCIL_BITS                   = 0x0D57;
const uint GL_ACCUM_RED_BITS                 = 0x0D58;
const uint GL_ACCUM_GREEN_BITS               = 0x0D59;
const uint GL_ACCUM_BLUE_BITS                = 0x0D5A;
const uint GL_ACCUM_ALPHA_BITS               = 0x0D5B;
const uint GL_NAME_STACK_DEPTH               = 0x0D70;
const uint GL_AUTO_NORMAL                    = 0x0D80;
const uint GL_MAP1_COLOR_4                   = 0x0D90;
const uint GL_MAP1_INDEX                     = 0x0D91;
const uint GL_MAP1_NORMAL                    = 0x0D92;
const uint GL_MAP1_TEXTURE_COORD_1           = 0x0D93;
const uint GL_MAP1_TEXTURE_COORD_2           = 0x0D94;
const uint GL_MAP1_TEXTURE_COORD_3           = 0x0D95;
const uint GL_MAP1_TEXTURE_COORD_4           = 0x0D96;
const uint GL_MAP1_VERTEX_3                  = 0x0D97;
const uint GL_MAP1_VERTEX_4                  = 0x0D98;
const uint GL_MAP2_COLOR_4                   = 0x0DB0;
const uint GL_MAP2_INDEX                     = 0x0DB1;
const uint GL_MAP2_NORMAL                    = 0x0DB2;
const uint GL_MAP2_TEXTURE_COORD_1           = 0x0DB3;
const uint GL_MAP2_TEXTURE_COORD_2           = 0x0DB4;
const uint GL_MAP2_TEXTURE_COORD_3           = 0x0DB5;
const uint GL_MAP2_TEXTURE_COORD_4           = 0x0DB6;
const uint GL_MAP2_VERTEX_3                  = 0x0DB7;
const uint GL_MAP2_VERTEX_4                  = 0x0DB8;
const uint GL_MAP1_GRID_DOMAIN               = 0x0DD0;
const uint GL_MAP1_GRID_SEGMENTS             = 0x0DD1;
const uint GL_MAP2_GRID_DOMAIN               = 0x0DD2;
const uint GL_MAP2_GRID_SEGMENTS             = 0x0DD3;
const uint GL_TEXTURE_1D                     = 0x0DE0;
const uint GL_TEXTURE_2D                     = 0x0DE1;
const uint GL_FEEDBACK_BUFFER_POINTER        = 0x0DF0;
const uint GL_FEEDBACK_BUFFER_SIZE           = 0x0DF1;
const uint GL_FEEDBACK_BUFFER_TYPE           = 0x0DF2;
const uint GL_SELECTION_BUFFER_POINTER       = 0x0DF3;
const uint GL_SELECTION_BUFFER_SIZE          = 0x0DF4;
/*      GL_TEXTURE_BINDING_1D */
/*      GL_TEXTURE_BINDING_2D */
/*      GL_TEXTURE_BINDING_3D */
/*      GL_VERTEX_ARRAY */
/*      GL_NORMAL_ARRAY */
/*      GL_COLOR_ARRAY */
/*      GL_INDEX_ARRAY */
/*      GL_TEXTURE_COORD_ARRAY */
/*      GL_EDGE_FLAG_ARRAY */
/*      GL_VERTEX_ARRAY_SIZE */
/*      GL_VERTEX_ARRAY_TYPE */
/*      GL_VERTEX_ARRAY_STRIDE */
/*      GL_NORMAL_ARRAY_TYPE */
/*      GL_NORMAL_ARRAY_STRIDE */
/*      GL_COLOR_ARRAY_SIZE */
/*      GL_COLOR_ARRAY_TYPE */
/*      GL_COLOR_ARRAY_STRIDE */
/*      GL_INDEX_ARRAY_TYPE */
/*      GL_INDEX_ARRAY_STRIDE */
/*      GL_TEXTURE_COORD_ARRAY_SIZE */
/*      GL_TEXTURE_COORD_ARRAY_TYPE */
/*      GL_TEXTURE_COORD_ARRAY_STRIDE */
/*      GL_EDGE_FLAG_ARRAY_STRIDE */
/*      GL_POLYGON_OFFSET_FACTOR */
/*      GL_POLYGON_OFFSET_UNITS */
/*      GL_COLOR_TABLE */
/*      GL_POST_CONVOLUTION_COLOR_TABLE */
/*      GL_POST_COLOR_MATRIX_COLOR_TABLE */
/*      GL_CONVOLUTION_1D */
/*      GL_CONVOLUTION_2D */
/*      GL_SEPARABLE_2D */
/*      GL_POST_CONVOLUTION_RED_SCALE */
/*      GL_POST_CONVOLUTION_GREEN_SCALE */
/*      GL_POST_CONVOLUTION_BLUE_SCALE */
/*      GL_POST_CONVOLUTION_ALPHA_SCALE */
/*      GL_POST_CONVOLUTION_RED_BIAS */
/*      GL_POST_CONVOLUTION_GREEN_BIAS */
/*      GL_POST_CONVOLUTION_BLUE_BIAS */
/*      GL_POST_CONVOLUTION_ALPHA_BIAS */
/*      GL_COLOR_MATRIX */
/*      GL_COLOR_MATRIX_STACK_DEPTH */
/*      GL_MAX_COLOR_MATRIX_STACK_DEPTH */
/*      GL_POST_COLOR_MATRIX_RED_SCALE */
/*      GL_POST_COLOR_MATRIX_GREEN_SCALE */
/*      GL_POST_COLOR_MATRIX_BLUE_SCALE */
/*      GL_POST_COLOR_MATRIX_ALPHA_SCALE */
/*      GL_POST_COLOR_MATRIX_RED_BIAS */
/*      GL_POST_COLOR_MATRIX_GREEN_BIAS */
/*      GL_POST_COLOR_MATRIX_BLUE_BIAS */
/*      GL_POST_COLOR_MATRIX_ALPHA_BIAS */
/*      GL_HISTOGRAM */
/*      GL_MINMAX */
/*      GL_MAX_ELEMENTS_VERTICES */
/*      GL_MAX_ELEMENTS_INDICES */
/*      GL_RESCALE_NORMAL */
/*      GL_LIGHT_MODEL_COLOR_CONTROL */
/*      GL_PACK_SKIP_IMAGES */
/*      GL_PACK_IMAGE_HEIGHT */
/*      GL_UNPACK_SKIP_IMAGES */
/*      GL_UNPACK_IMAGE_HEIGHT */
/*      GL_TEXTURE_3D */
/*      GL_MAX_3D_TEXTURE_SIZE */
/*      GL_BLEND_COLOR */
/*      GL_BLEND_EQUATION */
/*      GL_ACTIVE_TEXTURE_ARB */
/*      GL_CLIENT_ACTIVE_TEXTURE_ARB */
/*      GL_MAX_TEXTURE_UNITS_ARB */

/* GetTextureParameter */
/*      GL_TEXTURE_MAG_FILTER */
/*      GL_TEXTURE_MIN_FILTER */
/*      GL_TEXTURE_WRAP_S */
/*      GL_TEXTURE_WRAP_T */
const uint GL_TEXTURE_WIDTH                  = 0x1000;
const uint GL_TEXTURE_HEIGHT                 = 0x1001;
const uint GL_TEXTURE_INTERNAL_FORMAT        = 0x1003;
const uint GL_TEXTURE_BORDER_COLOR           = 0x1004;
const uint GL_TEXTURE_BORDER                 = 0x1005;
/*      GL_TEXTURE_RED_SIZE */
/*      GL_TEXTURE_GREEN_SIZE */
/*      GL_TEXTURE_BLUE_SIZE */
/*      GL_TEXTURE_ALPHA_SIZE */
/*      GL_TEXTURE_LUMINANCE_SIZE */
/*      GL_TEXTURE_INTENSITY_SIZE */
/*      GL_TEXTURE_PRIORITY */
/*      GL_TEXTURE_RESIDENT */
/*      GL_TEXTURE_DEPTH */
/*      GL_TEXTURE_WRAP_R */
/*      GL_TEXTURE_MIN_LOD */
/*      GL_TEXTURE_MAX_LOD */
/*      GL_TEXTURE_BASE_LEVEL */
/*      GL_TEXTURE_MAX_LEVEL */

/* HintMode */
const uint GL_DONT_CARE                      = 0x1100;
const uint GL_FASTEST                        = 0x1101;
const uint GL_NICEST                         = 0x1102;

/* HintTarget */
/*      GL_PERSPECTIVE_CORRECTION_HINT */
/*      GL_POINT_SMOOTH_HINT */
/*      GL_LINE_SMOOTH_HINT */
/*      GL_POLYGON_SMOOTH_HINT */
/*      GL_FOG_HINT */

/* HistogramTarget */
/*      GL_HISTOGRAM */
/*      GL_PROXY_HISTOGRAM */

/* IndexPointerType */
/*      GL_SHORT */
/*      GL_INT */
/*      GL_FLOAT */
/*      GL_DOUBLE */

/* LightModelColorControl */
/*      GL_SINGLE_COLOR */
/*      GL_SEPARATE_SPECULAR_COLOR */

/* LightModelParameter */
/*      GL_LIGHT_MODEL_AMBIENT */
/*      GL_LIGHT_MODEL_LOCAL_VIEWER */
/*      GL_LIGHT_MODEL_TWO_SIDE */
/*      GL_LIGHT_MODEL_COLOR_CONTROL */

/* LightName */
const uint GL_LIGHT0                         = 0x4000;
const uint GL_LIGHT1                         = 0x4001;
const uint GL_LIGHT2                         = 0x4002;
const uint GL_LIGHT3                         = 0x4003;
const uint GL_LIGHT4                         = 0x4004;
const uint GL_LIGHT5                         = 0x4005;
const uint GL_LIGHT6                         = 0x4006;
const uint GL_LIGHT7                         = 0x4007;

/* LightParameter */
const uint GL_AMBIENT                        = 0x1200;
const uint GL_DIFFUSE                        = 0x1201;
const uint GL_SPECULAR                       = 0x1202;
const uint GL_POSITION                       = 0x1203;
const uint GL_SPOT_DIRECTION                 = 0x1204;
const uint GL_SPOT_EXPONENT                  = 0x1205;
const uint GL_SPOT_CUTOFF                    = 0x1206;
const uint GL_CONSTANT_ATTENUATION           = 0x1207;
const uint GL_LINEAR_ATTENUATION             = 0x1208;
const uint GL_QUADRATIC_ATTENUATION          = 0x1209;

/* InterleavedArrays */
/*      GL_V2F */
/*      GL_V3F */
/*      GL_C4UB_V2F */
/*      GL_C4UB_V3F */
/*      GL_C3F_V3F */
/*      GL_N3F_V3F */
/*      GL_C4F_N3F_V3F */
/*      GL_T2F_V3F */
/*      GL_T4F_V4F */
/*      GL_T2F_C4UB_V3F */
/*      GL_T2F_C3F_V3F */
/*      GL_T2F_N3F_V3F */
/*      GL_T2F_C4F_N3F_V3F */
/*      GL_T4F_C4F_N3F_V4F */

/* ListMode */
const uint GL_COMPILE                        = 0x1300;
const uint GL_COMPILE_AND_EXECUTE            = 0x1301;

/* ListNameType */
/*      GL_BYTE */
/*      GL_UNSIGNED_BYTE */
/*      GL_SHORT */
/*      GL_UNSIGNED_SHORT */
/*      GL_INT */
/*      GL_UNSIGNED_INT */
/*      GL_FLOAT */
/*      GL_2_BYTES */
/*      GL_3_BYTES */
/*      GL_4_BYTES */

/* LogicOp */
const uint GL_CLEAR                          = 0x1500;
const uint GL_AND                            = 0x1501;
const uint GL_AND_REVERSE                    = 0x1502;
const uint GL_COPY                           = 0x1503;
const uint GL_AND_INVERTED                   = 0x1504;
const uint GL_NOOP                           = 0x1505;
const uint GL_XOR                            = 0x1506;
const uint GL_OR                             = 0x1507;
const uint GL_NOR                            = 0x1508;
const uint GL_EQUIV                          = 0x1509;
const uint GL_INVERT                         = 0x150A;
const uint GL_OR_REVERSE                     = 0x150B;
const uint GL_COPY_INVERTED                  = 0x150C;
const uint GL_OR_INVERTED                    = 0x150D;
const uint GL_NAND                           = 0x150E;
const uint GL_SET                            = 0x150F;

/* MapTarget */
/*      GL_MAP1_COLOR_4 */
/*      GL_MAP1_INDEX */
/*      GL_MAP1_NORMAL */
/*      GL_MAP1_TEXTURE_COORD_1 */
/*      GL_MAP1_TEXTURE_COORD_2 */
/*      GL_MAP1_TEXTURE_COORD_3 */
/*      GL_MAP1_TEXTURE_COORD_4 */
/*      GL_MAP1_VERTEX_3 */
/*      GL_MAP1_VERTEX_4 */
/*      GL_MAP2_COLOR_4 */
/*      GL_MAP2_INDEX */
/*      GL_MAP2_NORMAL */
/*      GL_MAP2_TEXTURE_COORD_1 */
/*      GL_MAP2_TEXTURE_COORD_2 */
/*      GL_MAP2_TEXTURE_COORD_3 */
/*      GL_MAP2_TEXTURE_COORD_4 */
/*      GL_MAP2_VERTEX_3 */
/*      GL_MAP2_VERTEX_4 */

/* MaterialFace */
/*      GL_FRONT */
/*      GL_BACK */
/*      GL_FRONT_AND_BACK */

/* MaterialParameter */
const uint GL_EMISSION                       = 0x1600;
const uint GL_SHININESS                      = 0x1601;
const uint GL_AMBIENT_AND_DIFFUSE            = 0x1602;
const uint GL_COLOR_INDEXES                  = 0x1603;
/*      GL_AMBIENT */
/*      GL_DIFFUSE */
/*      GL_SPECULAR */

/* MatrixMode */
const uint GL_MODELVIEW                      = 0x1700;
const uint GL_PROJECTION                     = 0x1701;
const uint GL_TEXTURE                        = 0x1702;

/* MeshMode1 */
/*      GL_POINT */
/*      GL_LINE */

/* MeshMode2 */
/*      GL_POINT */
/*      GL_LINE */
/*      GL_FILL */

/* MinmaxTarget */
/*      GL_MINMAX */

/* NormalPointerType */
/*      GL_BYTE */
/*      GL_SHORT */
/*      GL_INT */
/*      GL_FLOAT */
/*      GL_DOUBLE */

/* PixelCopyType */
const uint GL_COLOR                          = 0x1800;
const uint GL_DEPTH                          = 0x1801;
const uint GL_STENCIL                        = 0x1802;

/* PixelFormat */
const uint GL_COLOR_INDEX                    = 0x1900;
const uint GL_STENCIL_INDEX                  = 0x1901;
const uint GL_DEPTH_COMPONENT                = 0x1902;
const uint GL_RED                            = 0x1903;
const uint GL_GREEN                          = 0x1904;
const uint GL_BLUE                           = 0x1905;
const uint GL_ALPHA                          = 0x1906;
const uint GL_RGB                            = 0x1907;
const uint GL_RGBA                           = 0x1908;
const uint GL_LUMINANCE                      = 0x1909;
const uint GL_LUMINANCE_ALPHA                = 0x190A;
/*      GL_ABGR */

/* PixelInternalFormat */
/*      GL_ALPHA4 */
/*      GL_ALPHA8 */
/*      GL_ALPHA12 */
/*      GL_ALPHA16 */
/*      GL_LUMINANCE4 */
/*      GL_LUMINANCE8 */
/*      GL_LUMINANCE12 */
/*      GL_LUMINANCE16 */
/*      GL_LUMINANCE4_ALPHA4 */
/*      GL_LUMINANCE6_ALPHA2 */
/*      GL_LUMINANCE8_ALPHA8 */
/*      GL_LUMINANCE12_ALPHA4 */
/*      GL_LUMINANCE12_ALPHA12 */
/*      GL_LUMINANCE16_ALPHA16 */
/*      GL_INTENSITY */
/*      GL_INTENSITY4 */
/*      GL_INTENSITY8 */
/*      GL_INTENSITY12 */
/*      GL_INTENSITY16 */
/*      GL_R3_G3_B2 */
/*      GL_RGB4 */
/*      GL_RGB5 */
/*      GL_RGB8 */
/*      GL_RGB10 */
/*      GL_RGB12 */
/*      GL_RGB16 */
/*      GL_RGBA2 */
/*      GL_RGBA4 */
/*      GL_RGB5_A1 */
/*      GL_RGBA8 */
/*      GL_RGB10_A2 */
/*      GL_RGBA12 */
/*      GL_RGBA16 */

/* PixelMap */
/*      GL_PIXEL_MAP_I_TO_I */
/*      GL_PIXEL_MAP_S_TO_S */
/*      GL_PIXEL_MAP_I_TO_R */
/*      GL_PIXEL_MAP_I_TO_G */
/*      GL_PIXEL_MAP_I_TO_B */
/*      GL_PIXEL_MAP_I_TO_A */
/*      GL_PIXEL_MAP_R_TO_R */
/*      GL_PIXEL_MAP_G_TO_G */
/*      GL_PIXEL_MAP_B_TO_B */
/*      GL_PIXEL_MAP_A_TO_A */

/* PixelStore */
/*      GL_UNPACK_SWAP_BYTES */
/*      GL_UNPACK_LSB_FIRST */
/*      GL_UNPACK_ROW_LENGTH */
/*      GL_UNPACK_SKIP_ROWS */
/*      GL_UNPACK_SKIP_PIXELS */
/*      GL_UNPACK_ALIGNMENT */
/*      GL_PACK_SWAP_BYTES */
/*      GL_PACK_LSB_FIRST */
/*      GL_PACK_ROW_LENGTH */
/*      GL_PACK_SKIP_ROWS */
/*      GL_PACK_SKIP_PIXELS */
/*      GL_PACK_ALIGNMENT */
/*      GL_PACK_SKIP_IMAGES */
/*      GL_PACK_IMAGE_HEIGHT */
/*      GL_UNPACK_SKIP_IMAGES */
/*      GL_UNPACK_IMAGE_HEIGHT */

/* PixelTransfer */
/*      GL_MAP_COLOR */
/*      GL_MAP_STENCIL */
/*      GL_INDEX_SHIFT */
/*      GL_INDEX_OFFSET */
/*      GL_RED_SCALE */
/*      GL_RED_BIAS */
/*      GL_GREEN_SCALE */
/*      GL_GREEN_BIAS */
/*      GL_BLUE_SCALE */
/*      GL_BLUE_BIAS */
/*      GL_ALPHA_SCALE */
/*      GL_ALPHA_BIAS */
/*      GL_DEPTH_SCALE */
/*      GL_DEPTH_BIAS */
/*      GL_POST_CONVOLUTION_RED_SCALE */
/*      GL_POST_CONVOLUTION_GREEN_SCALE */
/*      GL_POST_CONVOLUTION_BLUE_SCALE */
/*      GL_POST_CONVOLUTION_ALPHA_SCALE */
/*      GL_POST_CONVOLUTION_RED_BIAS */
/*      GL_POST_CONVOLUTION_GREEN_BIAS */
/*      GL_POST_CONVOLUTION_BLUE_BIAS */
/*      GL_POST_CONVOLUTION_ALPHA_BIAS */
/*      GL_POST_COLOR_MATRIX_RED_SCALE */
/*      GL_POST_COLOR_MATRIX_GREEN_SCALE */
/*      GL_POST_COLOR_MATRIX_BLUE_SCALE */
/*      GL_POST_COLOR_MATRIX_ALPHA_SCALE */
/*      GL_POST_COLOR_MATRIX_RED_BIAS */
/*      GL_POST_COLOR_MATRIX_GREEN_BIAS */
/*      GL_POST_COLOR_MATRIX_BLUE_BIAS */
/*      GL_POST_COLOR_MATRIX_ALPHA_BIAS */

/* PixelType */
const uint GL_BITMAP                         = 0x1A00;
/*      GL_BYTE */
/*      GL_UNSIGNED_BYTE */
/*      GL_SHORT */
/*      GL_UNSIGNED_SHORT */
/*      GL_INT */
/*      GL_UNSIGNED_INT */
/*      GL_FLOAT */
/*      GL_BGR */
/*      GL_BGRA */
/*      GL_UNSIGNED_BYTE_3_3_2 */
/*      GL_UNSIGNED_SHORT_4_4_4_4 */
/*      GL_UNSIGNED_SHORT_5_5_5_1 */
/*      GL_UNSIGNED_INT_8_8_8_8 */
/*      GL_UNSIGNED_INT_10_10_10_2 */
/*      GL_UNSIGNED_SHORT_5_6_5 */
/*      GL_UNSIGNED_BYTE_2_3_3_REV */
/*      GL_UNSIGNED_SHORT_5_6_5_REV */
/*      GL_UNSIGNED_SHORT_4_4_4_4_REV */
/*      GL_UNSIGNED_SHORT_1_5_5_5_REV */
/*      GL_UNSIGNED_INT_8_8_8_8_REV */
/*      GL_UNSIGNED_INT_2_10_10_10_REV */

/* PolygonMode */
const uint GL_POINT                          = 0x1B00;
const uint GL_LINE                           = 0x1B01;
const uint GL_FILL                           = 0x1B02;

/* ReadBufferMode */
/*      GL_FRONT_LEFT */
/*      GL_FRONT_RIGHT */
/*      GL_BACK_LEFT */
/*      GL_BACK_RIGHT */
/*      GL_FRONT */
/*      GL_BACK */
/*      GL_LEFT */
/*      GL_RIGHT */
/*      GL_AUX0 */
/*      GL_AUX1 */
/*      GL_AUX2 */
/*      GL_AUX3 */

/* RenderingMode */
const uint GL_RENDER                         = 0x1C00;
const uint GL_FEEDBACK                       = 0x1C01;
const uint GL_SELECT                         = 0x1C02;

/* SeparableTarget */
/*      GL_SEPARABLE_2D */

/* ShadingModel */
const uint GL_FLAT                           = 0x1D00;
const uint GL_SMOOTH                         = 0x1D01;

/* StencilFunction */
/*      GL_NEVER */
/*      GL_LESS */
/*      GL_EQUAL */
/*      GL_LEQUAL */
/*      GL_GREATER */
/*      GL_NOTEQUAL */
/*      GL_GEQUAL */
/*      GL_ALWAYS */

/* StencilOp */
/*      GL_ZERO */
const uint GL_KEEP                           = 0x1E00;
const uint GL_REPLACE                        = 0x1E01;
const uint GL_INCR                           = 0x1E02;
const uint GL_DECR                           = 0x1E03;
/*      GL_INVERT */

/* StringName */
const uint GL_VENDOR                         = 0x1F00;
const uint GL_RENDERER                       = 0x1F01;
const uint GL_VERSION                        = 0x1F02;
const uint GL_EXTENSIONS                     = 0x1F03;

/* TextureCoordName */
const uint GL_S                              = 0x2000;
const uint GL_T                              = 0x2001;
const uint GL_R                              = 0x2002;
const uint GL_Q                              = 0x2003;

/* TexCoordPointerType */
/*      GL_SHORT */
/*      GL_INT */
/*      GL_FLOAT */
/*      GL_DOUBLE */

/* TextureEnvMode */
const uint GL_MODULATE                       = 0x2100;
const uint GL_DECAL                          = 0x2101;
/*      GL_BLEND */
/*      GL_REPLACE */

/* TextureEnvParameter */
const uint GL_TEXTURE_ENV_MODE               = 0x2200;
const uint GL_TEXTURE_ENV_COLOR              = 0x2201;

/* TextureEnvTarget */
const uint GL_TEXTURE_ENV                    = 0x2300;

/* TextureGenMode */
const uint GL_EYE_LINEAR                     = 0x2400;
const uint GL_OBJECT_LINEAR                  = 0x2401;
const uint GL_SPHERE_MAP                     = 0x2402;

/* TextureGenParameter */
const uint GL_TEXTURE_GEN_MODE               = 0x2500;
const uint GL_OBJECT_PLANE                   = 0x2501;
const uint GL_EYE_PLANE                      = 0x2502;

/* TextureMagFilter */
const uint GL_NEAREST                        = 0x2600;
const uint GL_LINEAR                         = 0x2601;

/* TextureMinFilter */
/*      GL_NEAREST */
/*      GL_LINEAR */
const uint GL_NEAREST_MIPMAP_NEAREST         = 0x2700;
const uint GL_LINEAR_MIPMAP_NEAREST          = 0x2701;
const uint GL_NEAREST_MIPMAP_LINEAR          = 0x2702;
const uint GL_LINEAR_MIPMAP_LINEAR           = 0x2703;

/* TextureParameterName */
const uint GL_TEXTURE_MAG_FILTER             = 0x2800;
const uint GL_TEXTURE_MIN_FILTER             = 0x2801;
const uint GL_TEXTURE_WRAP_S                 = 0x2802;
const uint GL_TEXTURE_WRAP_T                 = 0x2803;
/*      GL_TEXTURE_BORDER_COLOR */
/*      GL_TEXTURE_PRIORITY */
/*      GL_TEXTURE_WRAP_R */
/*      GL_TEXTURE_MIN_LOD */
/*      GL_TEXTURE_MAX_LOD */
/*      GL_TEXTURE_BASE_LEVEL */
/*      GL_TEXTURE_MAX_LEVEL */

/* TextureTarget */
/*      GL_TEXTURE_1D */
/*      GL_TEXTURE_2D */
/*      GL_PROXY_TEXTURE_1D */
/*      GL_PROXY_TEXTURE_2D */
/*      GL_TEXTURE_3D */
/*      GL_PROXY_TEXTURE_3D */

/* TextureUnit */
/*      GL_TEXTURE0_ARB */
/*      GL_TEXTURE1_ARB */
/*      GL_TEXTURE2_ARB */
/*      GL_TEXTURE3_ARB */
/*      GL_TEXTURE4_ARB */
/*      GL_TEXTURE5_ARB */
/*      GL_TEXTURE6_ARB */
/*      GL_TEXTURE7_ARB */
/*      GL_TEXTURE8_ARB */
/*      GL_TEXTURE9_ARB */
/*      GL_TEXTURE10_ARB */
/*      GL_TEXTURE11_ARB */
/*      GL_TEXTURE12_ARB */
/*      GL_TEXTURE13_ARB */
/*      GL_TEXTURE14_ARB */
/*      GL_TEXTURE15_ARB */
/*      GL_TEXTURE16_ARB */
/*      GL_TEXTURE17_ARB */
/*      GL_TEXTURE18_ARB */
/*      GL_TEXTURE19_ARB */
/*      GL_TEXTURE20_ARB */
/*      GL_TEXTURE21_ARB */
/*      GL_TEXTURE22_ARB */
/*      GL_TEXTURE23_ARB */
/*      GL_TEXTURE24_ARB */
/*      GL_TEXTURE25_ARB */
/*      GL_TEXTURE26_ARB */
/*      GL_TEXTURE27_ARB */
/*      GL_TEXTURE28_ARB */
/*      GL_TEXTURE29_ARB */
/*      GL_TEXTURE30_ARB */
/*      GL_TEXTURE31_ARB */

/* TextureWrapMode */
const uint GL_CLAMP                          = 0x2900;
const uint GL_REPEAT                         = 0x2901;
/*      GL_CLAMP_TO_EDGE */

/* VertexPointerType */
/*      GL_SHORT */
/*      GL_INT */
/*      GL_FLOAT */
/*      GL_DOUBLE */

/* ClientAttribMask */
const uint GL_CLIENT_PIXEL_STORE_BIT         = 0x00000001;
const uint GL_CLIENT_VERTEX_ARRAY_BIT        = 0x00000002;
const uint GL_CLIENT_ALL_ATTRIB_BITS         = 0xffffffff;

/* polygon_offset */
const uint GL_POLYGON_OFFSET_FACTOR          = 0x8038;
const uint GL_POLYGON_OFFSET_UNITS           = 0x2A00;
const uint GL_POLYGON_OFFSET_POINT           = 0x2A01;
const uint GL_POLYGON_OFFSET_LINE            = 0x2A02;
const uint GL_POLYGON_OFFSET_FILL            = 0x8037;

/* texture */
const uint GL_ALPHA4                         = 0x803B;
const uint GL_ALPHA8                         = 0x803C;
const uint GL_ALPHA12                        = 0x803D;
const uint GL_ALPHA16                        = 0x803E;
const uint GL_LUMINANCE4                     = 0x803F;
const uint GL_LUMINANCE8                     = 0x8040;
const uint GL_LUMINANCE12                    = 0x8041;
const uint GL_LUMINANCE16                    = 0x8042;
const uint GL_LUMINANCE4_ALPHA4              = 0x8043;
const uint GL_LUMINANCE6_ALPHA2              = 0x8044;
const uint GL_LUMINANCE8_ALPHA8              = 0x8045;
const uint GL_LUMINANCE12_ALPHA4             = 0x8046;
const uint GL_LUMINANCE12_ALPHA12            = 0x8047;
const uint GL_LUMINANCE16_ALPHA16            = 0x8048;
const uint GL_INTENSITY                      = 0x8049;
const uint GL_INTENSITY4                     = 0x804A;
const uint GL_INTENSITY8                     = 0x804B;
const uint GL_INTENSITY12                    = 0x804C;
const uint GL_INTENSITY16                    = 0x804D;
const uint GL_R3_G3_B2                       = 0x2A10;
const uint GL_RGB4                           = 0x804F;
const uint GL_RGB5                           = 0x8050;
const uint GL_RGB8                           = 0x8051;
const uint GL_RGB10                          = 0x8052;
const uint GL_RGB12                          = 0x8053;
const uint GL_RGB16                          = 0x8054;
const uint GL_RGBA2                          = 0x8055;
const uint GL_RGBA4                          = 0x8056;
const uint GL_RGB5_A1                        = 0x8057;
const uint GL_RGBA8                          = 0x8058;
const uint GL_RGB10_A2                       = 0x8059;
const uint GL_RGBA12                         = 0x805A;
const uint GL_RGBA16                         = 0x805B;
const uint GL_TEXTURE_RED_SIZE               = 0x805C;
const uint GL_TEXTURE_GREEN_SIZE             = 0x805D;
const uint GL_TEXTURE_BLUE_SIZE              = 0x805E;
const uint GL_TEXTURE_ALPHA_SIZE             = 0x805F;
const uint GL_TEXTURE_LUMINANCE_SIZE         = 0x8060;
const uint GL_TEXTURE_INTENSITY_SIZE         = 0x8061;
const uint GL_PROXY_TEXTURE_1D               = 0x8063;
const uint GL_PROXY_TEXTURE_2D               = 0x8064;

/* texture_object */
const uint GL_TEXTURE_PRIORITY               = 0x8066;
const uint GL_TEXTURE_RESIDENT               = 0x8067;
const uint GL_TEXTURE_BINDING_1D             = 0x8068;
const uint GL_TEXTURE_BINDING_2D             = 0x8069;
version (NonWindows) {
const uint GL_TEXTURE_BINDING_3D             = 0x806A;
}

/* vertex_array */
const uint GL_VERTEX_ARRAY                   = 0x8074;
const uint GL_NORMAL_ARRAY                   = 0x8075;
const uint GL_COLOR_ARRAY                    = 0x8076;
const uint GL_INDEX_ARRAY                    = 0x8077;
const uint GL_TEXTURE_COORD_ARRAY            = 0x8078;
const uint GL_EDGE_FLAG_ARRAY                = 0x8079;
const uint GL_VERTEX_ARRAY_SIZE              = 0x807A;
const uint GL_VERTEX_ARRAY_TYPE              = 0x807B;
const uint GL_VERTEX_ARRAY_STRIDE            = 0x807C;
const uint GL_NORMAL_ARRAY_TYPE              = 0x807E;
const uint GL_NORMAL_ARRAY_STRIDE            = 0x807F;
const uint GL_COLOR_ARRAY_SIZE               = 0x8081;
const uint GL_COLOR_ARRAY_TYPE               = 0x8082;
const uint GL_COLOR_ARRAY_STRIDE             = 0x8083;
const uint GL_INDEX_ARRAY_TYPE               = 0x8085;
const uint GL_INDEX_ARRAY_STRIDE             = 0x8086;
const uint GL_TEXTURE_COORD_ARRAY_SIZE       = 0x8088;
const uint GL_TEXTURE_COORD_ARRAY_TYPE       = 0x8089;
const uint GL_TEXTURE_COORD_ARRAY_STRIDE     = 0x808A;
const uint GL_EDGE_FLAG_ARRAY_STRIDE         = 0x808C;
const uint GL_VERTEX_ARRAY_POINTER           = 0x808E;
const uint GL_NORMAL_ARRAY_POINTER           = 0x808F;
const uint GL_COLOR_ARRAY_POINTER            = 0x8090;
const uint GL_INDEX_ARRAY_POINTER            = 0x8091;
const uint GL_TEXTURE_COORD_ARRAY_POINTER    = 0x8092;
const uint GL_EDGE_FLAG_ARRAY_POINTER        = 0x8093;
const uint GL_V2F                            = 0x2A20;
const uint GL_V3F                            = 0x2A21;
const uint GL_C4UB_V2F                       = 0x2A22;
const uint GL_C4UB_V3F                       = 0x2A23;
const uint GL_C3F_V3F                        = 0x2A24;
const uint GL_N3F_V3F                        = 0x2A25;
const uint GL_C4F_N3F_V3F                    = 0x2A26;
const uint GL_T2F_V3F                        = 0x2A27;
const uint GL_T4F_V4F                        = 0x2A28;
const uint GL_T2F_C4UB_V3F                   = 0x2A29;
const uint GL_T2F_C3F_V3F                    = 0x2A2A;
const uint GL_T2F_N3F_V3F                    = 0x2A2B;
const uint GL_T2F_C4F_N3F_V3F                = 0x2A2C;
const uint GL_T4F_C4F_N3F_V4F                = 0x2A2D;

version (NotWindows) {

/* bgra */
const uint GL_BGR                            = 0x80E0;
const uint GL_BGRA                           = 0x80E1;

/* blend_color */
const uint GL_CONSTANT_COLOR                 = 0x8001;
const uint GL_ONE_MINUS_CONSTANT_COLOR       = 0x8002;
const uint GL_CONSTANT_ALPHA                 = 0x8003;
const uint GL_ONE_MINUS_CONSTANT_ALPHA       = 0x8004;
const uint GL_BLEND_COLOR                    = 0x8005;

/* blend_minmax */
const uint GL_FUNC_ADD                       = 0x8006;
const uint GL_MIN                            = 0x8007;
const uint GL_MAX                            = 0x8008;
const uint GL_BLEND_EQUATION                 = 0x8009;

/* blend_subtract */
const uint GL_FUNC_SUBTRACT                  = 0x800A;
const uint GL_FUNC_REVERSE_SUBTRACT          = 0x800B;

/* color_matrix */
const uint GL_COLOR_MATRIX                   = 0x80B1;
const uint GL_COLOR_MATRIX_STACK_DEPTH       = 0x80B2;
const uint GL_MAX_COLOR_MATRIX_STACK_DEPTH   = 0x80B3;
const uint GL_POST_COLOR_MATRIX_RED_SCALE    = 0x80B4;
const uint GL_POST_COLOR_MATRIX_GREEN_SCALE  = 0x80B5;
const uint GL_POST_COLOR_MATRIX_BLUE_SCALE   = 0x80B6;
const uint GL_POST_COLOR_MATRIX_ALPHA_SCALE  = 0x80B7;
const uint GL_POST_COLOR_MATRIX_RED_BIAS     = 0x80B8;
const uint GL_POST_COLOR_MATRIX_GREEN_BIAS   = 0x80B9;
const uint GL_POST_COLOR_MATRIX_BLUE_BIAS    = 0x80BA;
const uint GL_POST_COLOR_MATRIX_ALPHA_BIAS   = 0x80BB;

/* color_table */
const uint GL_COLOR_TABLE                    = 0x80D0;
const uint GL_POST_CONVOLUTION_COLOR_TABLE   = 0x80D1;
const uint GL_POST_COLOR_MATRIX_COLOR_TABLE  = 0x80D2;
const uint GL_PROXY_COLOR_TABLE              = 0x80D3;
const uint GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4;
const uint GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5;
const uint GL_COLOR_TABLE_SCALE              = 0x80D6;
const uint GL_COLOR_TABLE_BIAS               = 0x80D7;
const uint GL_COLOR_TABLE_FORMAT             = 0x80D8;
const uint GL_COLOR_TABLE_WIDTH              = 0x80D9;
const uint GL_COLOR_TABLE_RED_SIZE           = 0x80DA;
const uint GL_COLOR_TABLE_GREEN_SIZE         = 0x80DB;
const uint GL_COLOR_TABLE_BLUE_SIZE          = 0x80DC;
const uint GL_COLOR_TABLE_ALPHA_SIZE         = 0x80DD;
const uint GL_COLOR_TABLE_LUMINANCE_SIZE     = 0x80DE;
const uint GL_COLOR_TABLE_INTENSITY_SIZE     = 0x80DF;

/* convolution */
const uint GL_CONVOLUTION_1D                 = 0x8010;
const uint GL_CONVOLUTION_2D                 = 0x8011;
const uint GL_SEPARABLE_2D                   = 0x8012;
const uint GL_CONVOLUTION_BORDER_MODE        = 0x8013;
const uint GL_CONVOLUTION_FILTER_SCALE       = 0x8014;
const uint GL_CONVOLUTION_FILTER_BIAS        = 0x8015;
const uint GL_REDUCE                         = 0x8016;
const uint GL_CONVOLUTION_FORMAT             = 0x8017;
const uint GL_CONVOLUTION_WIDTH              = 0x8018;
const uint GL_CONVOLUTION_HEIGHT             = 0x8019;
const uint GL_MAX_CONVOLUTION_WIDTH          = 0x801A;
const uint GL_MAX_CONVOLUTION_HEIGHT         = 0x801B;
const uint GL_POST_CONVOLUTION_RED_SCALE     = 0x801C;
const uint GL_POST_CONVOLUTION_GREEN_SCALE   = 0x801D;
const uint GL_POST_CONVOLUTION_BLUE_SCALE    = 0x801E;
const uint GL_POST_CONVOLUTION_ALPHA_SCALE   = 0x801F;
const uint GL_POST_CONVOLUTION_RED_BIAS      = 0x8020;
const uint GL_POST_CONVOLUTION_GREEN_BIAS    = 0x8021;
const uint GL_POST_CONVOLUTION_BLUE_BIAS     = 0x8022;
const uint GL_POST_CONVOLUTION_ALPHA_BIAS    = 0x8023;
const uint GL_CONSTANT_BORDER                = 0x8151;
const uint GL_REPLICATE_BORDER               = 0x8153;
const uint GL_CONVOLUTION_BORDER_COLOR       = 0x8154;

/* draw_range_elements */
const uint GL_MAX_ELEMENTS_VERTICES          = 0x80E8;
const uint GL_MAX_ELEMENTS_INDICES           = 0x80E9;

/* histogram */
const uint GL_HISTOGRAM                      = 0x8024;
const uint GL_PROXY_HISTOGRAM                = 0x8025;
const uint GL_HISTOGRAM_WIDTH                = 0x8026;
const uint GL_HISTOGRAM_FORMAT               = 0x8027;
const uint GL_HISTOGRAM_RED_SIZE             = 0x8028;
const uint GL_HISTOGRAM_GREEN_SIZE           = 0x8029;
const uint GL_HISTOGRAM_BLUE_SIZE            = 0x802A;
const uint GL_HISTOGRAM_ALPHA_SIZE           = 0x802B;
const uint GL_HISTOGRAM_LUMINANCE_SIZE       = 0x802C;
const uint GL_HISTOGRAM_SINK                 = 0x802D;
const uint GL_MINMAX                         = 0x802E;
const uint GL_MINMAX_FORMAT                  = 0x802F;
const uint GL_MINMAX_SINK                    = 0x8030;
const uint GL_TABLE_TOO_LARGE                = 0x8031;

/* packed_pixels */
const uint GL_UNSIGNED_BYTE_3_3_2            = 0x8032;
const uint GL_UNSIGNED_SHORT_4_4_4_4         = 0x8033;
const uint GL_UNSIGNED_SHORT_5_5_5_1         = 0x8034;
const uint GL_UNSIGNED_INT_8_8_8_8           = 0x8035;
const uint GL_UNSIGNED_INT_10_10_10_2        = 0x8036;
const uint GL_UNSIGNED_BYTE_2_3_3_REV        = 0x8362;
const uint GL_UNSIGNED_SHORT_5_6_5           = 0x8363;
const uint GL_UNSIGNED_SHORT_5_6_5_REV       = 0x8364;
const uint GL_UNSIGNED_SHORT_4_4_4_4_REV     = 0x8365;
const uint GL_UNSIGNED_SHORT_1_5_5_5_REV     = 0x8366;
const uint GL_UNSIGNED_INT_8_8_8_8_REV       = 0x8367;
const uint GL_UNSIGNED_INT_2_10_10_10_REV    = 0x8368;

/* rescale_normal */
const uint GL_RESCALE_NORMAL                 = 0x803A;

/* separate_specular_color */
const uint GL_LIGHT_MODEL_COLOR_CONTROL      = 0x81F8;
const uint GL_SINGLE_COLOR                   = 0x81F9;
const uint GL_SEPARATE_SPECULAR_COLOR        = 0x81FA;

/* texture3D */
const uint GL_PACK_SKIP_IMAGES               = 0x806B;
const uint GL_PACK_IMAGE_HEIGHT              = 0x806C;
const uint GL_UNPACK_SKIP_IMAGES             = 0x806D;
const uint GL_UNPACK_IMAGE_HEIGHT            = 0x806E;
const uint GL_TEXTURE_3D                     = 0x806F;
const uint GL_PROXY_TEXTURE_3D               = 0x8070;
const uint GL_TEXTURE_DEPTH                  = 0x8071;
const uint GL_TEXTURE_WRAP_R                 = 0x8072;
const uint GL_MAX_3D_TEXTURE_SIZE            = 0x8073;

/* texture_edge_clamp */
const uint GL_CLAMP_TO_EDGE                  = 0x812F;

/* texture_lod */
const uint GL_TEXTURE_MIN_LOD                = 0x813A;
const uint GL_TEXTURE_MAX_LOD                = 0x813B;
const uint GL_TEXTURE_BASE_LEVEL             = 0x813C;
const uint GL_TEXTURE_MAX_LEVEL              = 0x813D;

/* GetTarget1_2 */
const uint GL_SMOOTH_POINT_SIZE_RANGE        = 0x0B12;
const uint GL_SMOOTH_POINT_SIZE_GRANULARITY  = 0x0B13;
const uint GL_SMOOTH_LINE_WIDTH_RANGE        = 0x0B22;
const uint GL_SMOOTH_LINE_WIDTH_GRANULARITY  = 0x0B23;
const uint GL_ALIASED_POINT_SIZE_RANGE       = 0x846D;
const uint GL_ALIASED_LINE_WIDTH_RANGE       = 0x846E;

/* multitexture */
const uint GL_TEXTURE0_ARB                   = 0x84C0;
const uint GL_TEXTURE1_ARB                   = 0x84C1;
const uint GL_TEXTURE2_ARB                   = 0x84C2;
const uint GL_TEXTURE3_ARB                   = 0x84C3;
const uint GL_TEXTURE4_ARB                   = 0x84C4;
const uint GL_TEXTURE5_ARB                   = 0x84C5;
const uint GL_TEXTURE6_ARB                   = 0x84C6;
const uint GL_TEXTURE7_ARB                   = 0x84C7;
const uint GL_TEXTURE8_ARB                   = 0x84C8;
const uint GL_TEXTURE9_ARB                   = 0x84C9;
const uint GL_TEXTURE10_ARB                  = 0x84CA;
const uint GL_TEXTURE11_ARB                  = 0x84CB;
const uint GL_TEXTURE12_ARB                  = 0x84CC;
const uint GL_TEXTURE13_ARB                  = 0x84CD;
const uint GL_TEXTURE14_ARB                  = 0x84CE;
const uint GL_TEXTURE15_ARB                  = 0x84CF;
const uint GL_TEXTURE16_ARB                  = 0x84D0;
const uint GL_TEXTURE17_ARB                  = 0x84D1;
const uint GL_TEXTURE18_ARB                  = 0x84D2;
const uint GL_TEXTURE19_ARB                  = 0x84D3;
const uint GL_TEXTURE20_ARB                  = 0x84D4;
const uint GL_TEXTURE21_ARB                  = 0x84D5;
const uint GL_TEXTURE22_ARB                  = 0x84D6;
const uint GL_TEXTURE23_ARB                  = 0x84D7;
const uint GL_TEXTURE24_ARB                  = 0x84D8;
const uint GL_TEXTURE25_ARB                  = 0x84D9;
const uint GL_TEXTURE26_ARB                  = 0x84DA;
const uint GL_TEXTURE27_ARB                  = 0x84DB;
const uint GL_TEXTURE28_ARB                  = 0x84DC;
const uint GL_TEXTURE29_ARB                  = 0x84DD;
const uint GL_TEXTURE30_ARB                  = 0x84DE;
const uint GL_TEXTURE31_ARB                  = 0x84DF;
const uint GL_ACTIVE_TEXTURE_ARB             = 0x84E0;
const uint GL_CLIENT_ACTIVE_TEXTURE_ARB      = 0x84E1;
const uint GL_MAX_TEXTURE_UNITS_ARB          = 0x84E2;

/* Extensions */
version = GL_EXT_abgr;
version = GL_EXT_blend_color;
version = GL_EXT_blend_minmax;
version = GL_EXT_blend_subtract;
version = GL_EXT_texture_env_combine;
version = GL_EXT_texture_env_add;

/* EXT_abgr */
const uint GL_ABGR_EXT                       = 0x8000;

/* EXT_blend_color */
const uint GL_CONSTANT_COLOR_EXT             = 0x8001;
const uint GL_ONE_MINUS_CONSTANT_COLOR_EXT   = 0x8002;
const uint GL_CONSTANT_ALPHA_EXT             = 0x8003;
const uint GL_ONE_MINUS_CONSTANT_ALPHA_EXT   = 0x8004;
const uint GL_BLEND_COLOR_EXT                = 0x8005;

/* EXT_blend_minmax */
const uint GL_FUNC_ADD_EXT                   = 0x8006;
const uint GL_MIN_EXT                        = 0x8007;
const uint GL_MAX_EXT                        = 0x8008;
const uint GL_BLEND_EQUATION_EXT             = 0x8009;

/* EXT_blend_subtract */
const uint GL_FUNC_SUBTRACT_EXT              = 0x800A;
const uint GL_FUNC_REVERSE_SUBTRACT_EXT      = 0x800B;

/* EXT_texture_env_combine */
const uint GL_COMBINE_EXT                    = 0x8570;
const uint GL_COMBINE_RGB_EXT                = 0x8571;
const uint GL_COMBINE_ALPHA_EXT              = 0x8572;
const uint GL_RGB_SCALE_EXT                  = 0x8573;
const uint GL_ADD_SIGNED_EXT                 = 0x8574;
const uint GL_INTERPOLATE_EXT                = 0x8575;
const uint GL_CONSTANT_EXT                   = 0x8576;
const uint GL_PRIMARY_COLOR_EXT              = 0x8577;
const uint GL_PREVIOUS_EXT                   = 0x8578;
const uint GL_SOURCE0_RGB_EXT                = 0x8580;
const uint GL_SOURCE1_RGB_EXT                = 0x8581;
const uint GL_SOURCE2_RGB_EXT                = 0x8582;
const uint GL_SOURCE0_ALPHA_EXT              = 0x8588;
const uint GL_SOURCE1_ALPHA_EXT              = 0x8589;
const uint GL_SOURCE2_ALPHA_EXT              = 0x858A;
const uint GL_OPERAND0_RGB_EXT               = 0x8590;
const uint GL_OPERAND1_RGB_EXT               = 0x8591;
const uint GL_OPERAND2_RGB_EXT               = 0x8592;
const uint GL_OPERAND0_ALPHA_EXT             = 0x8598;
const uint GL_OPERAND1_ALPHA_EXT             = 0x8599;
const uint GL_OPERAND2_ALPHA_EXT             = 0x859A;

} else /* version(Windows) */ {

// These are all in glext as well :

/* Extensions */
version = GL_EXT_vertex_array;
version = GL_WIN_swap_hint;
version = GL_EXT_bgra;
version = GL_EXT_paletted_texture;

/* EXT_vertex_array */
const uint GL_VERTEX_ARRAY_EXT               = 0x8074;
const uint GL_NORMAL_ARRAY_EXT               = 0x8075;
const uint GL_COLOR_ARRAY_EXT                = 0x8076;
const uint GL_INDEX_ARRAY_EXT                = 0x8077;
const uint GL_TEXTURE_COORD_ARRAY_EXT        = 0x8078;
const uint GL_EDGE_FLAG_ARRAY_EXT            = 0x8079;
const uint GL_VERTEX_ARRAY_SIZE_EXT          = 0x807A;
const uint GL_VERTEX_ARRAY_TYPE_EXT          = 0x807B;
const uint GL_VERTEX_ARRAY_STRIDE_EXT        = 0x807C;
const uint GL_VERTEX_ARRAY_COUNT_EXT         = 0x807D;
const uint GL_NORMAL_ARRAY_TYPE_EXT          = 0x807E;
const uint GL_NORMAL_ARRAY_STRIDE_EXT        = 0x807F;
const uint GL_NORMAL_ARRAY_COUNT_EXT         = 0x8080;
const uint GL_COLOR_ARRAY_SIZE_EXT           = 0x8081;
const uint GL_COLOR_ARRAY_TYPE_EXT           = 0x8082;
const uint GL_COLOR_ARRAY_STRIDE_EXT         = 0x8083;
const uint GL_COLOR_ARRAY_COUNT_EXT          = 0x8084;
const uint GL_INDEX_ARRAY_TYPE_EXT           = 0x8085;
const uint GL_INDEX_ARRAY_STRIDE_EXT         = 0x8086;
const uint GL_INDEX_ARRAY_COUNT_EXT          = 0x8087;
const uint GL_TEXTURE_COORD_ARRAY_SIZE_EXT   = 0x8088;
const uint GL_TEXTURE_COORD_ARRAY_TYPE_EXT   = 0x8089;
const uint GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A;
const uint GL_TEXTURE_COORD_ARRAY_COUNT_EXT  = 0x808B;
const uint GL_EDGE_FLAG_ARRAY_STRIDE_EXT     = 0x808C;
const uint GL_EDGE_FLAG_ARRAY_COUNT_EXT      = 0x808D;
const uint GL_VERTEX_ARRAY_POINTER_EXT       = 0x808E;
const uint GL_NORMAL_ARRAY_POINTER_EXT       = 0x808F;
const uint GL_COLOR_ARRAY_POINTER_EXT        = 0x8090;
const uint GL_INDEX_ARRAY_POINTER_EXT        = 0x8091;
const uint GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092;
const uint GL_EDGE_FLAG_ARRAY_POINTER_EXT    = 0x8093;

/* EXT_bgra */
const uint GL_BGR_EXT                        = 0x80E0;
const uint GL_BGRA_EXT                       = 0x80E1;

/* EXT_paletted_texture */

/* These must match the GL_COLOR_TABLE_*_SGI enumerants */
const uint GL_COLOR_TABLE_FORMAT_EXT         = 0x80D8;
const uint GL_COLOR_TABLE_WIDTH_EXT          = 0x80D9;
const uint GL_COLOR_TABLE_RED_SIZE_EXT       = 0x80DA;
const uint GL_COLOR_TABLE_GREEN_SIZE_EXT     = 0x80DB;
const uint GL_COLOR_TABLE_BLUE_SIZE_EXT      = 0x80DC;
const uint GL_COLOR_TABLE_ALPHA_SIZE_EXT     = 0x80DD;
const uint GL_COLOR_TABLE_LUMINANCE_SIZE_EXT = 0x80DE;
const uint GL_COLOR_TABLE_INTENSITY_SIZE_EXT = 0x80DF;

const uint GL_COLOR_INDEX1_EXT               = 0x80E2;
const uint GL_COLOR_INDEX2_EXT               = 0x80E3;
const uint GL_COLOR_INDEX4_EXT               = 0x80E4;
const uint GL_COLOR_INDEX8_EXT               = 0x80E5;
const uint GL_COLOR_INDEX12_EXT              = 0x80E6;
const uint GL_COLOR_INDEX16_EXT              = 0x80E7;

} /* Windows */

/* For compatibility with OpenGL v1.0 */
alias GL_INDEX_LOGIC_OP GL_LOGIC_OP;
alias GL_TEXTURE_INTERNAL_FORMAT GL_TEXTURE_COMPONENTS;

/*************************************************************/

version (Windows)
  extern (Windows):
else
  extern (C):

version (GL_GL_PROTOTYPES) {
void glAccum (GLenum op, GLfloat value);
void glAlphaFunc (GLenum func, GLclampf ref);
GLboolean glAreTexturesResident (GLsizei n, GLuint *textures, GLboolean *residences);
void glArrayElement (GLint i);
void glBegin (GLenum mode);
void glBindTexture (GLenum target, GLuint texture);
void glBitmap (GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte *bitmap);
void glBlendFunc (GLenum sfactor, GLenum dfactor);
void glCallList (GLuint list);
void glCallLists (GLsizei n, GLenum type, GLvoid *lists);
void glClear (GLbitfield mask);
void glClearAccum (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
void glClearDepth (GLclampd depth);
void glClearIndex (GLfloat c);
void glClearStencil (GLint s);
void glClipPlane (GLenum plane, GLdouble *equation);
void glColor3b (GLbyte red, GLbyte green, GLbyte blue);
void glColor3bv (GLbyte *v);
void glColor3d (GLdouble red, GLdouble green, GLdouble blue);
void glColor3dv (GLdouble *v);
void glColor3f (GLfloat red, GLfloat green, GLfloat blue);
void glColor3fv (GLfloat *v);
void glColor3i (GLint red, GLint green, GLint blue);
void glColor3iv (GLint *v);
void glColor3s (GLshort red, GLshort green, GLshort blue);
void glColor3sv (GLshort *v);
void glColor3ub (GLubyte red, GLubyte green, GLubyte blue);
void glColor3ubv (GLubyte *v);
void glColor3ui (GLuint red, GLuint green, GLuint blue);
void glColor3uiv (GLuint *v);
void glColor3us (GLushort red, GLushort green, GLushort blue);
void glColor3usv (GLushort *v);
void glColor4b (GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void glColor4bv (GLbyte *v);
void glColor4d (GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void glColor4dv (GLdouble *v);
void glColor4f (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glColor4fv (GLfloat *v);
void glColor4i (GLint red, GLint green, GLint blue, GLint alpha);
void glColor4iv (GLint *v);
void glColor4s (GLshort red, GLshort green, GLshort blue, GLshort alpha);
void glColor4sv (GLshort *v);
void glColor4ub (GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void glColor4ubv (GLubyte *v);
void glColor4ui (GLuint red, GLuint green, GLuint blue, GLuint alpha);
void glColor4uiv (GLuint *v);
void glColor4us (GLushort red, GLushort green, GLushort blue, GLushort alpha);
void glColor4usv (GLushort *v);
void glColorMask (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void glColorMaterial (GLenum face, GLenum mode);
void glColorPointer (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
void glCopyPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void glCopyTexImage1D (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTexImage2D (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCullFace (GLenum mode);
void glDeleteLists (GLuint list, GLsizei range);
void glDeleteTextures (GLsizei n, GLuint *textures);
void glDepthFunc (GLenum func);
void glDepthMask (GLboolean flag);
void glDepthRange (GLclampd zNear, GLclampd zFar);
void glDisable (GLenum cap);
void glDisableClientState (GLenum array);
void glDrawArrays (GLenum mode, GLint first, GLsizei count);
void glDrawBuffer (GLenum mode);
void glDrawElements (GLenum mode, GLsizei count, GLenum type, GLvoid *indices);
void glDrawPixels (GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
void glEdgeFlag (GLboolean flag);
version (NotWindows) {
void glEdgeFlagPointer (GLsizei stride, GLboolean *pointer);
} else /* version (Windows) */ {
void glEdgeFlagPointer (GLsizei stride, GLvoid *pointer);
}
void glEdgeFlagv (GLboolean *flag);
void glEnable (GLenum cap);
void glEnableClientState (GLenum array);
void glEnd ();
void glEndList ();
void glEvalCoord1d (GLdouble u);
void glEvalCoord1dv (GLdouble *u);
void glEvalCoord1f (GLfloat u);
void glEvalCoord1fv (GLfloat *u);
void glEvalCoord2d (GLdouble u, GLdouble v);
void glEvalCoord2dv (GLdouble *u);
void glEvalCoord2f (GLfloat u, GLfloat v);
void glEvalCoord2fv (GLfloat *u);
void glEvalMesh1 (GLenum mode, GLint i1, GLint i2);
void glEvalMesh2 (GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void glEvalPoint1 (GLint i);
void glEvalPoint2 (GLint i, GLint j);
void glFeedbackBuffer (GLsizei size, GLenum type, GLfloat *buffer);
void glFinish ();
void glFlush ();
void glFogf (GLenum pname, GLfloat param);
void glFogfv (GLenum pname, GLfloat *params);
void glFogi (GLenum pname, GLint param);
void glFogiv (GLenum pname, GLint *params);
void glFrontFace (GLenum mode);
void glFrustum (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
GLuint glGenLists (GLsizei range);
void glGenTextures (GLsizei n, GLuint *textures);
void glGetBooleanv (GLenum pname, GLboolean *params);
void glGetClipPlane (GLenum plane, GLdouble *equation);
void glGetDoublev (GLenum pname, GLdouble *params);
GLenum glGetError ();
void glGetFloatv (GLenum pname, GLfloat *params);
void glGetIntegerv (GLenum pname, GLint *params);
void glGetLightfv (GLenum light, GLenum pname, GLfloat *params);
void glGetLightiv (GLenum light, GLenum pname, GLint *params);
void glGetMapdv (GLenum target, GLenum query, GLdouble *v);
void glGetMapfv (GLenum target, GLenum query, GLfloat *v);
void glGetMapiv (GLenum target, GLenum query, GLint *v);
void glGetMaterialfv (GLenum face, GLenum pname, GLfloat *params);
void glGetMaterialiv (GLenum face, GLenum pname, GLint *params);
void glGetPixelMapfv (GLenum map, GLfloat *values);
void glGetPixelMapuiv (GLenum map, GLuint *values);
void glGetPixelMapusv (GLenum map, GLushort *values);
void glGetPointerv (GLenum pname, GLvoid* *params);
void glGetPolygonStipple (GLubyte *mask);
GLubyte * glGetString (GLenum name);
void glGetTexEnvfv (GLenum target, GLenum pname, GLfloat *params);
void glGetTexEnviv (GLenum target, GLenum pname, GLint *params);
void glGetTexGendv (GLenum coord, GLenum pname, GLdouble *params);
void glGetTexGenfv (GLenum coord, GLenum pname, GLfloat *params);
void glGetTexGeniv (GLenum coord, GLenum pname, GLint *params);
void glGetTexImage (GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels);
void glGetTexLevelParameterfv (GLenum target, GLint level, GLenum pname, GLfloat *params);
void glGetTexLevelParameteriv (GLenum target, GLint level, GLenum pname, GLint *params);
void glGetTexParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetTexParameteriv (GLenum target, GLenum pname, GLint *params);
void glHint (GLenum target, GLenum mode);
void glIndexMask (GLuint mask);
void glIndexPointer (GLenum type, GLsizei stride, GLvoid *pointer);
void glIndexd (GLdouble c);
void glIndexdv (GLdouble *c);
void glIndexf (GLfloat c);
void glIndexfv (GLfloat *c);
void glIndexi (GLint c);
void glIndexiv (GLint *c);
void glIndexs (GLshort c);
void glIndexsv (GLshort *c);
void glIndexub (GLubyte c);
void glIndexubv (GLubyte *c);
void glInitNames ();
void glInterleavedArrays (GLenum format, GLsizei stride, GLvoid *pointer);
GLboolean glIsEnabled (GLenum cap);
GLboolean glIsList (GLuint list);
GLboolean glIsTexture (GLuint texture);
void glLightModelf (GLenum pname, GLfloat param);
void glLightModelfv (GLenum pname, GLfloat *params);
void glLightModeli (GLenum pname, GLint param);
void glLightModeliv (GLenum pname, GLint *params);
void glLightf (GLenum light, GLenum pname, GLfloat param);
void glLightfv (GLenum light, GLenum pname, GLfloat *params);
void glLighti (GLenum light, GLenum pname, GLint param);
void glLightiv (GLenum light, GLenum pname, GLint *params);
void glLineStipple (GLint factor, GLushort pattern);
void glLineWidth (GLfloat width);
void glListBase (GLuint base);
void glLoadIdentity ();
void glLoadMatrixd (GLdouble *m);
void glLoadMatrixf (GLfloat *m);
void glLoadName (GLuint name);
void glLogicOp (GLenum opcode);
void glMap1d (GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble *points);
void glMap1f (GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat *points);
void glMap2d (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble *points);
void glMap2f (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat *points);
void glMapGrid1d (GLint un, GLdouble u1, GLdouble u2);
void glMapGrid1f (GLint un, GLfloat u1, GLfloat u2);
void glMapGrid2d (GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void glMapGrid2f (GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void glMaterialf (GLenum face, GLenum pname, GLfloat param);
void glMaterialfv (GLenum face, GLenum pname, GLfloat *params);
void glMateriali (GLenum face, GLenum pname, GLint param);
void glMaterialiv (GLenum face, GLenum pname, GLint *params);
void glMatrixMode (GLenum mode);
void glMultMatrixd (GLdouble *m);
void glMultMatrixf (GLfloat *m);
void glNewList (GLuint list, GLenum mode);
void glNormal3b (GLbyte nx, GLbyte ny, GLbyte nz);
void glNormal3bv (GLbyte *v);
void glNormal3d (GLdouble nx, GLdouble ny, GLdouble nz);
void glNormal3dv (GLdouble *v);
void glNormal3f (GLfloat nx, GLfloat ny, GLfloat nz);
void glNormal3fv (GLfloat *v);
void glNormal3i (GLint nx, GLint ny, GLint nz);
void glNormal3iv (GLint *v);
void glNormal3s (GLshort nx, GLshort ny, GLshort nz);
void glNormal3sv (GLshort *v);
void glNormalPointer (GLenum type, GLsizei stride, GLvoid *pointer);
void glOrtho (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glPassThrough (GLfloat token);
version (NotWindows) {
void glPixelMapfv (GLenum map, GLint mapsize, GLfloat *values);
void glPixelMapuiv (GLenum map, GLint mapsize, GLuint *values);
void glPixelMapusv (GLenum map, GLint mapsize, GLushort *values);
} else /* version (Windows) */ {
void glPixelMapfv (GLenum map, GLsizei mapsize, GLfloat *values);
void glPixelMapuiv (GLenum map, GLsizei mapsize, GLuint *values);
void glPixelMapusv (GLenum map, GLsizei mapsize, GLushort *values);
}
void glPixelStoref (GLenum pname, GLfloat param);
void glPixelStorei (GLenum pname, GLint param);
void glPixelTransferf (GLenum pname, GLfloat param);
void glPixelTransferi (GLenum pname, GLint param);
void glPixelZoom (GLfloat xfactor, GLfloat yfactor);
void glPointSize (GLfloat size);
void glPolygonMode (GLenum face, GLenum mode);
void glPolygonOffset (GLfloat factor, GLfloat units);
void glPolygonStipple (GLubyte *mask);
void glPopAttrib ();
void glPopClientAttrib ();
void glPopMatrix ();
void glPopName ();
void glPrioritizeTextures (GLsizei n, GLuint *textures, GLclampf *priorities);
void glPushAttrib (GLbitfield mask);
void glPushClientAttrib (GLbitfield mask);
void glPushMatrix ();
void glPushName (GLuint name);
void glRasterPos2d (GLdouble x, GLdouble y);
void glRasterPos2dv (GLdouble *v);
void glRasterPos2f (GLfloat x, GLfloat y);
void glRasterPos2fv (GLfloat *v);
void glRasterPos2i (GLint x, GLint y);
void glRasterPos2iv (GLint *v);
void glRasterPos2s (GLshort x, GLshort y);
void glRasterPos2sv (GLshort *v);
void glRasterPos3d (GLdouble x, GLdouble y, GLdouble z);
void glRasterPos3dv (GLdouble *v);
void glRasterPos3f (GLfloat x, GLfloat y, GLfloat z);
void glRasterPos3fv (GLfloat *v);
void glRasterPos3i (GLint x, GLint y, GLint z);
void glRasterPos3iv (GLint *v);
void glRasterPos3s (GLshort x, GLshort y, GLshort z);
void glRasterPos3sv (GLshort *v);
void glRasterPos4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glRasterPos4dv (GLdouble *v);
void glRasterPos4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glRasterPos4fv (GLfloat *v);
void glRasterPos4i (GLint x, GLint y, GLint z, GLint w);
void glRasterPos4iv (GLint *v);
void glRasterPos4s (GLshort x, GLshort y, GLshort z, GLshort w);
void glRasterPos4sv (GLshort *v);
void glReadBuffer (GLenum mode);
void glReadPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
void glRectd (GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void glRectdv (GLdouble *v1, GLdouble *v2);
void glRectf (GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void glRectfv (GLfloat *v1, GLfloat *v2);
void glRecti (GLint x1, GLint y1, GLint x2, GLint y2);
void glRectiv (GLint *v1, GLint *v2);
void glRects (GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void glRectsv (GLshort *v1, GLshort *v2);
GLint glRenderMode (GLenum mode);
void glRotated (GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glRotatef (GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glScaled (GLdouble x, GLdouble y, GLdouble z);
void glScalef (GLfloat x, GLfloat y, GLfloat z);
void glScissor (GLint x, GLint y, GLsizei width, GLsizei height);
void glSelectBuffer (GLsizei size, GLuint *buffer);
void glShadeModel (GLenum mode);
void glStencilFunc (GLenum func, GLint ref, GLuint mask);
void glStencilMask (GLuint mask);
void glStencilOp (GLenum fail, GLenum zfail, GLenum zpass);
void glTexCoord1d (GLdouble s);
void glTexCoord1dv (GLdouble *v);
void glTexCoord1f (GLfloat s);
void glTexCoord1fv (GLfloat *v);
void glTexCoord1i (GLint s);
void glTexCoord1iv (GLint *v);
void glTexCoord1s (GLshort s);
void glTexCoord1sv (GLshort *v);
void glTexCoord2d (GLdouble s, GLdouble t);
void glTexCoord2dv (GLdouble *v);
void glTexCoord2f (GLfloat s, GLfloat t);
void glTexCoord2fv (GLfloat *v);
void glTexCoord2i (GLint s, GLint t);
void glTexCoord2iv (GLint *v);
void glTexCoord2s (GLshort s, GLshort t);
void glTexCoord2sv (GLshort *v);
void glTexCoord3d (GLdouble s, GLdouble t, GLdouble r);
void glTexCoord3dv (GLdouble *v);
void glTexCoord3f (GLfloat s, GLfloat t, GLfloat r);
void glTexCoord3fv (GLfloat *v);
void glTexCoord3i (GLint s, GLint t, GLint r);
void glTexCoord3iv (GLint *v);
void glTexCoord3s (GLshort s, GLshort t, GLshort r);
void glTexCoord3sv (GLshort *v);
void glTexCoord4d (GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glTexCoord4dv (GLdouble *v);
void glTexCoord4f (GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glTexCoord4fv (GLfloat *v);
void glTexCoord4i (GLint s, GLint t, GLint r, GLint q);
void glTexCoord4iv (GLint *v);
void glTexCoord4s (GLshort s, GLshort t, GLshort r, GLshort q);
void glTexCoord4sv (GLshort *v);
void glTexCoordPointer (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
void glTexEnvf (GLenum target, GLenum pname, GLfloat param);
void glTexEnvfv (GLenum target, GLenum pname, GLfloat *params);
void glTexEnvi (GLenum target, GLenum pname, GLint param);
void glTexEnviv (GLenum target, GLenum pname, GLint *params);
void glTexGend (GLenum coord, GLenum pname, GLdouble param);
void glTexGendv (GLenum coord, GLenum pname, GLdouble *params);
void glTexGenf (GLenum coord, GLenum pname, GLfloat param);
void glTexGenfv (GLenum coord, GLenum pname, GLfloat *params);
void glTexGeni (GLenum coord, GLenum pname, GLint param);
void glTexGeniv (GLenum coord, GLenum pname, GLint *params);
void glTexImage1D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, GLvoid *pixels);
void glTexImage2D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, GLvoid *pixels);
void glTexParameterf (GLenum target, GLenum pname, GLfloat param);
void glTexParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glTexParameteri (GLenum target, GLenum pname, GLint param);
void glTexParameteriv (GLenum target, GLenum pname, GLint *params);
void glTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels);
void glTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
void glTranslated (GLdouble x, GLdouble y, GLdouble z);
void glTranslatef (GLfloat x, GLfloat y, GLfloat z);
void glVertex2d (GLdouble x, GLdouble y);
void glVertex2dv (GLdouble *v);
void glVertex2f (GLfloat x, GLfloat y);
void glVertex2fv (GLfloat *v);
void glVertex2i (GLint x, GLint y);
void glVertex2iv (GLint *v);
void glVertex2s (GLshort x, GLshort y);
void glVertex2sv (GLshort *v);
void glVertex3d (GLdouble x, GLdouble y, GLdouble z);
void glVertex3dv (GLdouble *v);
void glVertex3f (GLfloat x, GLfloat y, GLfloat z);
void glVertex3fv (GLfloat *v);
void glVertex3i (GLint x, GLint y, GLint z);
void glVertex3iv (GLint *v);
void glVertex3s (GLshort x, GLshort y, GLshort z);
void glVertex3sv (GLshort *v);
void glVertex4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertex4dv (GLdouble *v);
void glVertex4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertex4fv (GLfloat *v);
void glVertex4i (GLint x, GLint y, GLint z, GLint w);
void glVertex4iv (GLint *v);
void glVertex4s (GLshort x, GLshort y, GLshort z, GLshort w);
void glVertex4sv (GLshort *v);
void glVertexPointer (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
void glViewport (GLint x, GLint y, GLsizei width, GLsizei height);
} /* GL_GL_PROTOTYPES */

alias void (*PFGLACCUMPROC) (GLenum op, GLfloat value);
alias void (*PFGLALPHAFUNCPROC) (GLenum func, GLclampf ref);
alias GLboolean (*PFGLARETEXTURESRESIDENTPROC) (GLsizei n, GLuint *textures, GLboolean *residences);
alias void (*PFGLARRAYELEMENTPROC) (GLint i);
alias void (*PFGLBEGINPROC) (GLenum mode);
alias void (*PFGLBINDTEXTUREPROC) (GLenum target, GLuint texture);
alias void (*PFGLBITMAPPROC) (GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte *bitmap);
alias void (*PFGLBLENDFUNCPROC) (GLenum sfactor, GLenum dfactor);
alias void (*PFGLCALLLISTPROC) (GLuint list);
alias void (*PFGLCALLLISTSPROC) (GLsizei n, GLenum type, GLvoid *lists);
alias void (*PFGLCLEARPROC) (GLbitfield mask);
alias void (*PFGLCLEARACCUMPROC) (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
alias void (*PFGLCLEARCOLORPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
alias void (*PFGLCLEARDEPTHPROC) (GLclampd depth);
alias void (*PFGLCLEARINDEXPROC) (GLfloat c);
alias void (*PFGLCLEARSTENCILPROC) (GLint s);
alias void (*PFGLCLIPPLANEPROC) (GLenum plane, GLdouble *equation);
alias void (*PFGLCOLOR3BPROC) (GLbyte red, GLbyte green, GLbyte blue);
alias void (*PFGLCOLOR3BVPROC) (GLbyte *v);
alias void (*PFGLCOLOR3DPROC) (GLdouble red, GLdouble green, GLdouble blue);
alias void (*PFGLCOLOR3DVPROC) (GLdouble *v);
alias void (*PFGLCOLOR3FPROC) (GLfloat red, GLfloat green, GLfloat blue);
alias void (*PFGLCOLOR3FVPROC) (GLfloat *v);
alias void (*PFGLCOLOR3IPROC) (GLint red, GLint green, GLint blue);
alias void (*PFGLCOLOR3IVPROC) (GLint *v);
alias void (*PFGLCOLOR3SPROC) (GLshort red, GLshort green, GLshort blue);
alias void (*PFGLCOLOR3SVPROC) (GLshort *v);
alias void (*PFGLCOLOR3UBPROC) (GLubyte red, GLubyte green, GLubyte blue);
alias void (*PFGLCOLOR3UBVPROC) (GLubyte *v);
alias void (*PFGLCOLOR3UIPROC) (GLuint red, GLuint green, GLuint blue);
alias void (*PFGLCOLOR3UIVPROC) (GLuint *v);
alias void (*PFGLCOLOR3USPROC) (GLushort red, GLushort green, GLushort blue);
alias void (*PFGLCOLOR3USVPROC) (GLushort *v);
alias void (*PFGLCOLOR4BPROC) (GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
alias void (*PFGLCOLOR4BVPROC) (GLbyte *v);
alias void (*PFGLCOLOR4DPROC) (GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
alias void (*PFGLCOLOR4DVPROC) (GLdouble *v);
alias void (*PFGLCOLOR4FPROC) (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
alias void (*PFGLCOLOR4FVPROC) (GLfloat *v);
alias void (*PFGLCOLOR4IPROC) (GLint red, GLint green, GLint blue, GLint alpha);
alias void (*PFGLCOLOR4IVPROC) (GLint *v);
alias void (*PFGLCOLOR4SPROC) (GLshort red, GLshort green, GLshort blue, GLshort alpha);
alias void (*PFGLCOLOR4SVPROC) (GLshort *v);
alias void (*PFGLCOLOR4UBPROC) (GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
alias void (*PFGLCOLOR4UBVPROC) (GLubyte *v);
alias void (*PFGLCOLOR4UIPROC) (GLuint red, GLuint green, GLuint blue, GLuint alpha);
alias void (*PFGLCOLOR4UIVPROC) (GLuint *v);
alias void (*PFGLCOLOR4USPROC) (GLushort red, GLushort green, GLushort blue, GLushort alpha);
alias void (*PFGLCOLOR4USVPROC) (GLushort *v);
alias void (*PFGLCOLORMASKPROC) (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
alias void (*PFGLCOLORMATERIALPROC) (GLenum face, GLenum mode);
alias void (*PFGLCOLORPOINTERPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFGLCOPYPIXELSPROC) (GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
alias void (*PFGLCOPYTEXIMAGE1DPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
alias void (*PFGLCOPYTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
alias void (*PFGLCOPYTEXSUBIMAGE1DPROC) (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
alias void (*PFGLCOPYTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias void (*PFGLCULLFACEPROC) (GLenum mode);
alias void (*PFGLDELETELISTSPROC) (GLuint list, GLsizei range);
alias void (*PFGLDELETETEXTURESPROC) (GLsizei n, GLuint *textures);
alias void (*PFGLDEPTHFUNCPROC) (GLenum func);
alias void (*PFGLDEPTHMASKPROC) (GLboolean flag);
alias void (*PFGLDEPTHRANGEPROC) (GLclampd zNear, GLclampd zFar);
alias void (*PFGLDISABLEPROC) (GLenum cap);
alias void (*PFGLDISABLECLIENTSTATEPROC) (GLenum array);
alias void (*PFGLDRAWARRAYSPROC) (GLenum mode, GLint first, GLsizei count);
alias void (*PFGLDRAWBUFFERPROC) (GLenum mode);
alias void (*PFGLDRAWELEMENTSPROC) (GLenum mode, GLsizei count, GLenum type, GLvoid *indices);
alias void (*PFGLDRAWPIXELSPROC) (GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFGLEDGEFLAGPROC) (GLboolean flag);
version (NotWindows) {
alias void (*PFGLEDGEFLAGPOINTERPROC) (GLsizei stride, GLboolean *pointer);
} else /* version (Windows) */ {
alias void (*PFGLEDGEFLAGPOINTERPROC) (GLsizei stride, GLvoid *pointer);
}
alias void (*PFGLEDGEFLAGVPROC) (GLboolean *flag);
alias void (*PFGLENABLEPROC) (GLenum cap);
alias void (*PFGLENABLECLIENTSTATEPROC) (GLenum array);
alias void (*PFGLENDPROC) ();
alias void (*PFGLENDLISTPROC) ();
alias void (*PFGLEVALCOORD1DPROC) (GLdouble u);
alias void (*PFGLEVALCOORD1DVPROC) (GLdouble *u);
alias void (*PFGLEVALCOORD1FPROC) (GLfloat u);
alias void (*PFGLEVALCOORD1FVPROC) (GLfloat *u);
alias void (*PFGLEVALCOORD2DPROC) (GLdouble u, GLdouble v);
alias void (*PFGLEVALCOORD2DVPROC) (GLdouble *u);
alias void (*PFGLEVALCOORD2FPROC) (GLfloat u, GLfloat v);
alias void (*PFGLEVALCOORD2FVPROC) (GLfloat *u);
alias void (*PFGLEVALMESH1PROC) (GLenum mode, GLint i1, GLint i2);
alias void (*PFGLEVALMESH2PROC) (GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
alias void (*PFGLEVALPOINT1PROC) (GLint i);
alias void (*PFGLEVALPOINT2PROC) (GLint i, GLint j);
alias void (*PFGLFEEDBACKBUFFERPROC) (GLsizei size, GLenum type, GLfloat *buffer);
alias void (*PFGLFINISHPROC) ();
alias void (*PFGLFLUSHPROC) ();
alias void (*PFGLFOGFPROC) (GLenum pname, GLfloat param);
alias void (*PFGLFOGFVPROC) (GLenum pname, GLfloat *params);
alias void (*PFGLFOGIPROC) (GLenum pname, GLint param);
alias void (*PFGLFOGIVPROC) (GLenum pname, GLint *params);
alias void (*PFGLFRONTFACEPROC) (GLenum mode);
alias void (*PFGLFRUSTUMPROC) (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
alias GLuint (*PFGLGENLISTSPROC) (GLsizei range);
alias void (*PFGLGENTEXTURESPROC) (GLsizei n, GLuint *textures);
alias void (*PFGLGETBOOLEANVPROC) (GLenum pname, GLboolean *params);
alias void (*PFGLGETCLIPPLANEPROC) (GLenum plane, GLdouble *equation);
alias void (*PFGLGETDOUBLEVPROC) (GLenum pname, GLdouble *params);
alias GLenum (*PFGLGETERRORPROC) ();
alias void (*PFGLGETFLOATVPROC) (GLenum pname, GLfloat *params);
alias void (*PFGLGETINTEGERVPROC) (GLenum pname, GLint *params);
alias void (*PFGLGETLIGHTFVPROC) (GLenum light, GLenum pname, GLfloat *params);
alias void (*PFGLGETLIGHTIVPROC) (GLenum light, GLenum pname, GLint *params);
alias void (*PFGLGETMAPDVPROC) (GLenum target, GLenum query, GLdouble *v);
alias void (*PFGLGETMAPFVPROC) (GLenum target, GLenum query, GLfloat *v);
alias void (*PFGLGETMAPIVPROC) (GLenum target, GLenum query, GLint *v);
alias void (*PFGLGETMATERIALFVPROC) (GLenum face, GLenum pname, GLfloat *params);
alias void (*PFGLGETMATERIALIVPROC) (GLenum face, GLenum pname, GLint *params);
alias void (*PFGLGETPIXELMAPFVPROC) (GLenum map, GLfloat *values);
alias void (*PFGLGETPIXELMAPUIVPROC) (GLenum map, GLuint *values);
alias void (*PFGLGETPIXELMAPUSVPROC) (GLenum map, GLushort *values);
alias void (*PFGLGETPOINTERVPROC) (GLenum pname, GLvoid* *params);
alias void (*PFGLGETPOLYGONSTIPPLEPROC) (GLubyte *mask);
alias GLubyte * (*PFGLGETSTRINGPROC) (GLenum name);
alias void (*PFGLGETTEXENVFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFGLGETTEXENVIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFGLGETTEXGENDVPROC) (GLenum coord, GLenum pname, GLdouble *params);
alias void (*PFGLGETTEXGENFVPROC) (GLenum coord, GLenum pname, GLfloat *params);
alias void (*PFGLGETTEXGENIVPROC) (GLenum coord, GLenum pname, GLint *params);
alias void (*PFGLGETTEXIMAGEPROC) (GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFGLGETTEXLEVELPARAMETERFVPROC) (GLenum target, GLint level, GLenum pname, GLfloat *params);
alias void (*PFGLGETTEXLEVELPARAMETERIVPROC) (GLenum target, GLint level, GLenum pname, GLint *params);
alias void (*PFGLGETTEXPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFGLGETTEXPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFGLHINTPROC) (GLenum target, GLenum mode);
alias void (*PFGLINDEXMASKPROC) (GLuint mask);
alias void (*PFGLINDEXPOINTERPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFGLINDEXDPROC) (GLdouble c);
alias void (*PFGLINDEXDVPROC) (GLdouble *c);
alias void (*PFGLINDEXFPROC) (GLfloat c);
alias void (*PFGLINDEXFVPROC) (GLfloat *c);
alias void (*PFGLINDEXIPROC) (GLint c);
alias void (*PFGLINDEXIVPROC) (GLint *c);
alias void (*PFGLINDEXSPROC) (GLshort c);
alias void (*PFGLINDEXSVPROC) (GLshort *c);
alias void (*PFGLINDEXUBPROC) (GLubyte c);
alias void (*PFGLINDEXUBVPROC) (GLubyte *c);
alias void (*PFGLINITNAMESPROC) ();
alias void (*PFGLINTERLEAVEDARRAYSPROC) (GLenum format, GLsizei stride, GLvoid *pointer);
alias GLboolean (*PFGLISENABLEDPROC) (GLenum cap);
alias GLboolean (*PFGLISLISTPROC) (GLuint list);
alias GLboolean (*PFGLISTEXTUREPROC) (GLuint texture);
alias void (*PFGLLIGHTMODELFPROC) (GLenum pname, GLfloat param);
alias void (*PFGLLIGHTMODELFVPROC) (GLenum pname, GLfloat *params);
alias void (*PFGLLIGHTMODELIPROC) (GLenum pname, GLint param);
alias void (*PFGLLIGHTMODELIVPROC) (GLenum pname, GLint *params);
alias void (*PFGLLIGHTFPROC) (GLenum light, GLenum pname, GLfloat param);
alias void (*PFGLLIGHTFVPROC) (GLenum light, GLenum pname, GLfloat *params);
alias void (*PFGLLIGHTIPROC) (GLenum light, GLenum pname, GLint param);
alias void (*PFGLLIGHTIVPROC) (GLenum light, GLenum pname, GLint *params);
alias void (*PFGLLINESTIPPLEPROC) (GLint factor, GLushort pattern);
alias void (*PFGLLINEWIDTHPROC) (GLfloat width);
alias void (*PFGLLISTBASEPROC) (GLuint base);
alias void (*PFGLLOADIDENTITYPROC) ();
alias void (*PFGLLOADMATRIXDPROC) (GLdouble *m);
alias void (*PFGLLOADMATRIXFPROC) (GLfloat *m);
alias void (*PFGLLOADNAMEPROC) (GLuint name);
alias void (*PFGLLOGICOPPROC) (GLenum opcode);
alias void (*PFGLMAP1DPROC) (GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble *points);
alias void (*PFGLMAP1FPROC) (GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat *points);
alias void (*PFGLMAP2DPROC) (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble *points);
alias void (*PFGLMAP2FPROC) (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat *points);
alias void (*PFGLMAPGRID1DPROC) (GLint un, GLdouble u1, GLdouble u2);
alias void (*PFGLMAPGRID1FPROC) (GLint un, GLfloat u1, GLfloat u2);
alias void (*PFGLMAPGRID2DPROC) (GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
alias void (*PFGLMAPGRID2FPROC) (GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
alias void (*PFGLMATERIALFPROC) (GLenum face, GLenum pname, GLfloat param);
alias void (*PFGLMATERIALFVPROC) (GLenum face, GLenum pname, GLfloat *params);
alias void (*PFGLMATERIALIPROC) (GLenum face, GLenum pname, GLint param);
alias void (*PFGLMATERIALIVPROC) (GLenum face, GLenum pname, GLint *params);
alias void (*PFGLMATRIXMODEPROC) (GLenum mode);
alias void (*PFGLMULTMATRIXDPROC) (GLdouble *m);
alias void (*PFGLMULTMATRIXFPROC) (GLfloat *m);
alias void (*PFGLNEWLISTPROC) (GLuint list, GLenum mode);
alias void (*PFGLNORMAL3BPROC) (GLbyte nx, GLbyte ny, GLbyte nz);
alias void (*PFGLNORMAL3BVPROC) (GLbyte *v);
alias void (*PFGLNORMAL3DPROC) (GLdouble nx, GLdouble ny, GLdouble nz);
alias void (*PFGLNORMAL3DVPROC) (GLdouble *v);
alias void (*PFGLNORMAL3FPROC) (GLfloat nx, GLfloat ny, GLfloat nz);
alias void (*PFGLNORMAL3FVPROC) (GLfloat *v);
alias void (*PFGLNORMAL3IPROC) (GLint nx, GLint ny, GLint nz);
alias void (*PFGLNORMAL3IVPROC) (GLint *v);
alias void (*PFGLNORMAL3SPROC) (GLshort nx, GLshort ny, GLshort nz);
alias void (*PFGLNORMAL3SVPROC) (GLshort *v);
alias void (*PFGLNORMALPOINTERPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFGLORTHOPROC) (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
alias void (*PFGLPASSTHROUGHPROC) (GLfloat token);
version (NotWindows) {
alias void (*PFGLPIXELMAPFVPROC) (GLenum map, GLint mapsize, GLfloat *values);
alias void (*PFGLPIXELMAPUIVPROC) (GLenum map, GLint mapsize, GLuint *values);
alias void (*PFGLPIXELMAPUSVPROC) (GLenum map, GLint mapsize, GLushort *values);
} else /* version (NotWindows) */ {
alias void (*PFGLPIXELMAPFVPROC) (GLenum map, GLsizei mapsize, GLfloat *values);
alias void (*PFGLPIXELMAPUIVPROC) (GLenum map, GLsizei mapsize, GLuint *values);
alias void (*PFGLPIXELMAPUSVPROC) (GLenum map, GLsizei mapsize, GLushort *values);
}
alias void (*PFGLPIXELSTOREFPROC) (GLenum pname, GLfloat param);
alias void (*PFGLPIXELSTOREIPROC) (GLenum pname, GLint param);
alias void (*PFGLPIXELTRANSFERFPROC) (GLenum pname, GLfloat param);
alias void (*PFGLPIXELTRANSFERIPROC) (GLenum pname, GLint param);
alias void (*PFGLPIXELZOOMPROC) (GLfloat xfactor, GLfloat yfactor);
alias void (*PFGLPOINTSIZEPROC) (GLfloat size);
alias void (*PFGLPOLYGONMODEPROC) (GLenum face, GLenum mode);
alias void (*PFGLPOLYGONOFFSETPROC) (GLfloat factor, GLfloat units);
alias void (*PFGLPOLYGONSTIPPLEPROC) (GLubyte *mask);
alias void (*PFGLPOPATTRIBPROC) ();
alias void (*PFGLPOPCLIENTATTRIBPROC) ();
alias void (*PFGLPOPMATRIXPROC) ();
alias void (*PFGLPOPNAMEPROC) ();
alias void (*PFGLPRIORITIZETEXTURESPROC) (GLsizei n, GLuint *textures, GLclampf *priorities);
alias void (*PFGLPUSHATTRIBPROC) (GLbitfield mask);
alias void (*PFGLPUSHCLIENTATTRIBPROC) (GLbitfield mask);
alias void (*PFGLPUSHMATRIXPROC) ();
alias void (*PFGLPUSHNAMEPROC) (GLuint name);
alias void (*PFGLRASTERPOS2DPROC) (GLdouble x, GLdouble y);
alias void (*PFGLRASTERPOS2DVPROC) (GLdouble *v);
alias void (*PFGLRASTERPOS2FPROC) (GLfloat x, GLfloat y);
alias void (*PFGLRASTERPOS2FVPROC) (GLfloat *v);
alias void (*PFGLRASTERPOS2IPROC) (GLint x, GLint y);
alias void (*PFGLRASTERPOS2IVPROC) (GLint *v);
alias void (*PFGLRASTERPOS2SPROC) (GLshort x, GLshort y);
alias void (*PFGLRASTERPOS2SVPROC) (GLshort *v);
alias void (*PFGLRASTERPOS3DPROC) (GLdouble x, GLdouble y, GLdouble z);
alias void (*PFGLRASTERPOS3DVPROC) (GLdouble *v);
alias void (*PFGLRASTERPOS3FPROC) (GLfloat x, GLfloat y, GLfloat z);
alias void (*PFGLRASTERPOS3FVPROC) (GLfloat *v);
alias void (*PFGLRASTERPOS3IPROC) (GLint x, GLint y, GLint z);
alias void (*PFGLRASTERPOS3IVPROC) (GLint *v);
alias void (*PFGLRASTERPOS3SPROC) (GLshort x, GLshort y, GLshort z);
alias void (*PFGLRASTERPOS3SVPROC) (GLshort *v);
alias void (*PFGLRASTERPOS4DPROC) (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFGLRASTERPOS4DVPROC) (GLdouble *v);
alias void (*PFGLRASTERPOS4FPROC) (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFGLRASTERPOS4FVPROC) (GLfloat *v);
alias void (*PFGLRASTERPOS4IPROC) (GLint x, GLint y, GLint z, GLint w);
alias void (*PFGLRASTERPOS4IVPROC) (GLint *v);
alias void (*PFGLRASTERPOS4SPROC) (GLshort x, GLshort y, GLshort z, GLshort w);
alias void (*PFGLRASTERPOS4SVPROC) (GLshort *v);
alias void (*PFGLREADBUFFERPROC) (GLenum mode);
alias void (*PFGLREADPIXELSPROC) (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFGLRECTDPROC) (GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
alias void (*PFGLRECTDVPROC) (GLdouble *v1, GLdouble *v2);
alias void (*PFGLRECTFPROC) (GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
alias void (*PFGLRECTFVPROC) (GLfloat *v1, GLfloat *v2);
alias void (*PFGLRECTIPROC) (GLint x1, GLint y1, GLint x2, GLint y2);
alias void (*PFGLRECTIVPROC) (GLint *v1, GLint *v2);
alias void (*PFGLRECTSPROC) (GLshort x1, GLshort y1, GLshort x2, GLshort y2);
alias void (*PFGLRECTSVPROC) (GLshort *v1, GLshort *v2);
alias GLint (*PFGLRENDERMODEPROC) (GLenum mode);
alias void (*PFGLROTATEDPROC) (GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
alias void (*PFGLROTATEFPROC) (GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFGLSCALEDPROC) (GLdouble x, GLdouble y, GLdouble z);
alias void (*PFGLSCALEFPROC) (GLfloat x, GLfloat y, GLfloat z);
alias void (*PFGLSCISSORPROC) (GLint x, GLint y, GLsizei width, GLsizei height);
alias void (*PFGLSELECTBUFFERPROC) (GLsizei size, GLuint *buffer);
alias void (*PFGLSHADEMODELPROC) (GLenum mode);
alias void (*PFGLSTENCILFUNCPROC) (GLenum func, GLint ref, GLuint mask);
alias void (*PFGLSTENCILMASKPROC) (GLuint mask);
alias void (*PFGLSTENCILOPPROC) (GLenum fail, GLenum zfail, GLenum zpass);
alias void (*PFGLTEXCOORD1DPROC) (GLdouble s);
alias void (*PFGLTEXCOORD1DVPROC) (GLdouble *v);
alias void (*PFGLTEXCOORD1FPROC) (GLfloat s);
alias void (*PFGLTEXCOORD1FVPROC) (GLfloat *v);
alias void (*PFGLTEXCOORD1IPROC) (GLint s);
alias void (*PFGLTEXCOORD1IVPROC) (GLint *v);
alias void (*PFGLTEXCOORD1SPROC) (GLshort s);
alias void (*PFGLTEXCOORD1SVPROC) (GLshort *v);
alias void (*PFGLTEXCOORD2DPROC) (GLdouble s, GLdouble t);
alias void (*PFGLTEXCOORD2DVPROC) (GLdouble *v);
alias void (*PFGLTEXCOORD2FPROC) (GLfloat s, GLfloat t);
alias void (*PFGLTEXCOORD2FVPROC) (GLfloat *v);
alias void (*PFGLTEXCOORD2IPROC) (GLint s, GLint t);
alias void (*PFGLTEXCOORD2IVPROC) (GLint *v);
alias void (*PFGLTEXCOORD2SPROC) (GLshort s, GLshort t);
alias void (*PFGLTEXCOORD2SVPROC) (GLshort *v);
alias void (*PFGLTEXCOORD3DPROC) (GLdouble s, GLdouble t, GLdouble r);
alias void (*PFGLTEXCOORD3DVPROC) (GLdouble *v);
alias void (*PFGLTEXCOORD3FPROC) (GLfloat s, GLfloat t, GLfloat r);
alias void (*PFGLTEXCOORD3FVPROC) (GLfloat *v);
alias void (*PFGLTEXCOORD3IPROC) (GLint s, GLint t, GLint r);
alias void (*PFGLTEXCOORD3IVPROC) (GLint *v);
alias void (*PFGLTEXCOORD3SPROC) (GLshort s, GLshort t, GLshort r);
alias void (*PFGLTEXCOORD3SVPROC) (GLshort *v);
alias void (*PFGLTEXCOORD4DPROC) (GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias void (*PFGLTEXCOORD4DVPROC) (GLdouble *v);
alias void (*PFGLTEXCOORD4FPROC) (GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias void (*PFGLTEXCOORD4FVPROC) (GLfloat *v);
alias void (*PFGLTEXCOORD4IPROC) (GLint s, GLint t, GLint r, GLint q);
alias void (*PFGLTEXCOORD4IVPROC) (GLint *v);
alias void (*PFGLTEXCOORD4SPROC) (GLshort s, GLshort t, GLshort r, GLshort q);
alias void (*PFGLTEXCOORD4SVPROC) (GLshort *v);
alias void (*PFGLTEXCOORDPOINTERPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFGLTEXENVFPROC) (GLenum target, GLenum pname, GLfloat param);
alias void (*PFGLTEXENVFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFGLTEXENVIPROC) (GLenum target, GLenum pname, GLint param);
alias void (*PFGLTEXENVIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFGLTEXGENDPROC) (GLenum coord, GLenum pname, GLdouble param);
alias void (*PFGLTEXGENDVPROC) (GLenum coord, GLenum pname, GLdouble *params);
alias void (*PFGLTEXGENFPROC) (GLenum coord, GLenum pname, GLfloat param);
alias void (*PFGLTEXGENFVPROC) (GLenum coord, GLenum pname, GLfloat *params);
alias void (*PFGLTEXGENIPROC) (GLenum coord, GLenum pname, GLint param);
alias void (*PFGLTEXGENIVPROC) (GLenum coord, GLenum pname, GLint *params);
alias void (*PFGLTEXIMAGE1DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFGLTEXIMAGE2DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFGLTEXPARAMETERFPROC) (GLenum target, GLenum pname, GLfloat param);
alias void (*PFGLTEXPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFGLTEXPARAMETERIPROC) (GLenum target, GLenum pname, GLint param);
alias void (*PFGLTEXPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFGLTEXSUBIMAGE1DPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFGLTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFGLTRANSLATEDPROC) (GLdouble x, GLdouble y, GLdouble z);
alias void (*PFGLTRANSLATEFPROC) (GLfloat x, GLfloat y, GLfloat z);
alias void (*PFGLVERTEX2DPROC) (GLdouble x, GLdouble y);
alias void (*PFGLVERTEX2DVPROC) (GLdouble *v);
alias void (*PFGLVERTEX2FPROC) (GLfloat x, GLfloat y);
alias void (*PFGLVERTEX2FVPROC) (GLfloat *v);
alias void (*PFGLVERTEX2IPROC) (GLint x, GLint y);
alias void (*PFGLVERTEX2IVPROC) (GLint *v);
alias void (*PFGLVERTEX2SPROC) (GLshort x, GLshort y);
alias void (*PFGLVERTEX2SVPROC) (GLshort *v);
alias void (*PFGLVERTEX3DPROC) (GLdouble x, GLdouble y, GLdouble z);
alias void (*PFGLVERTEX3DVPROC) (GLdouble *v);
alias void (*PFGLVERTEX3FPROC) (GLfloat x, GLfloat y, GLfloat z);
alias void (*PFGLVERTEX3FVPROC) (GLfloat *v);
alias void (*PFGLVERTEX3IPROC) (GLint x, GLint y, GLint z);
alias void (*PFGLVERTEX3IVPROC) (GLint *v);
alias void (*PFGLVERTEX3SPROC) (GLshort x, GLshort y, GLshort z);
alias void (*PFGLVERTEX3SVPROC) (GLshort *v);
alias void (*PFGLVERTEX4DPROC) (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFGLVERTEX4DVPROC) (GLdouble *v);
alias void (*PFGLVERTEX4FPROC) (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFGLVERTEX4FVPROC) (GLfloat *v);
alias void (*PFGLVERTEX4IPROC) (GLint x, GLint y, GLint z, GLint w);
alias void (*PFGLVERTEX4IVPROC) (GLint *v);
alias void (*PFGLVERTEX4SPROC) (GLshort x, GLshort y, GLshort z, GLshort w);
alias void (*PFGLVERTEX4SVPROC) (GLshort *v);
alias void (*PFGLVERTEXPOINTERPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFGLVIEWPORTPROC) (GLint x, GLint y, GLsizei width, GLsizei height);

version (Windows) {

// These are all in glext as well :

/* EXT_vertex_array */
alias void (*PFNGLARRAYELEMENTEXTPROC) (GLint i);
alias void (*PFNGLDRAWARRAYSEXTPROC) (GLenum mode, GLint first, GLsizei count);
alias void (*PFNGLVERTEXPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLNORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLINDEXPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLTEXCOORDPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLEDGEFLAGPOINTEREXTPROC) (GLsizei stride, GLsizei count, GLboolean *pointer);
alias void (*PFNGLGETPOINTERVEXTPROC) (GLenum pname, GLvoid* *params);
alias void (*PFNGLARRAYELEMENTARRAYEXTPROC)(GLenum mode, GLsizei count, GLvoid* pi);

/* WIN_swap_hint */
alias void (*PFNGLADDSWAPHINTRECTWINPROC)  (GLint x, GLint y, GLsizei width, GLsizei height);

/* EXT_paletted_texture */
alias void (*PFNGLCOLORTABLEEXTPROC) (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, GLvoid *data);
alias void (*PFNGLCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data);
alias void (*PFNGLGETCOLORTABLEEXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *data);
alias void (*PFNGLGETCOLORTABLEPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETCOLORTABLEPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);

} /* Windows */

