/* glext.h */

module opengl.glext;

extern (C) :

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
** Inc. The Original Code is Copyright (c) 1991-2002 Silicon Graphics, Inc.
** Copyright in any portions created by third parties is as indicated
** elsewhere herein. All Rights Reserved.
** 
** Additional Notice Provisions: This software was created using the
** OpenGL(R) version 1.2.1 Sample Implementation published by SGI, but has
** not been independently verified as being compliant with the OpenGL(R)
** version 1.2.1 Specification.
**
** Conversion of header to D, done by Anders F Bjorklund <afb@algonet.se>
*/

// Expects a previous module to set up one or more of:
// version = GL_VERSION_1_1;
// version = GL_VERSION_1_2;
// version = GL_VERSION_1_3;
// version = GL_VERSION_1_4;
// version = GL_VERSION_1_5;

version (Windows)
  extern (Windows):

/*************************************************************/

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

/* Header file version number, required by OpenGL ABI for Linux */
/* glext.h last updated 2004/2/23 */
/* Current version at http://oss.sgi.com/projects/ogl-sample/registry/ */
const uint GL_GLEXT_VERSION = 22;

version (GL_VERSION_1_2) { } else {
const uint GL_UNSIGNED_BYTE_3_3_2            = 0x8032;
const uint GL_UNSIGNED_SHORT_4_4_4_4         = 0x8033;
const uint GL_UNSIGNED_SHORT_5_5_5_1         = 0x8034;
const uint GL_UNSIGNED_INT_8_8_8_8           = 0x8035;
const uint GL_UNSIGNED_INT_10_10_10_2        = 0x8036;
const uint GL_RESCALE_NORMAL                 = 0x803A;
const uint GL_TEXTURE_BINDING_3D             = 0x806A;
const uint GL_PACK_SKIP_IMAGES               = 0x806B;
const uint GL_PACK_IMAGE_HEIGHT              = 0x806C;
const uint GL_UNPACK_SKIP_IMAGES             = 0x806D;
const uint GL_UNPACK_IMAGE_HEIGHT            = 0x806E;
const uint GL_TEXTURE_3D                     = 0x806F;
const uint GL_PROXY_TEXTURE_3D               = 0x8070;
const uint GL_TEXTURE_DEPTH                  = 0x8071;
const uint GL_TEXTURE_WRAP_R                 = 0x8072;
const uint GL_MAX_3D_TEXTURE_SIZE            = 0x8073;
const uint GL_UNSIGNED_BYTE_2_3_3_REV        = 0x8362;
const uint GL_UNSIGNED_SHORT_5_6_5           = 0x8363;
const uint GL_UNSIGNED_SHORT_5_6_5_REV       = 0x8364;
const uint GL_UNSIGNED_SHORT_4_4_4_4_REV     = 0x8365;
const uint GL_UNSIGNED_SHORT_1_5_5_5_REV     = 0x8366;
const uint GL_UNSIGNED_INT_8_8_8_8_REV       = 0x8367;
const uint GL_UNSIGNED_INT_2_10_10_10_REV    = 0x8368;
const uint GL_BGR                            = 0x80E0;
const uint GL_BGRA                           = 0x80E1;
const uint GL_MAX_ELEMENTS_VERTICES          = 0x80E8;
const uint GL_MAX_ELEMENTS_INDICES           = 0x80E9;
const uint GL_CLAMP_TO_EDGE                  = 0x812F;
const uint GL_TEXTURE_MIN_LOD                = 0x813A;
const uint GL_TEXTURE_MAX_LOD                = 0x813B;
const uint GL_TEXTURE_BASE_LEVEL             = 0x813C;
const uint GL_TEXTURE_MAX_LEVEL              = 0x813D;
const uint GL_LIGHT_MODEL_COLOR_CONTROL      = 0x81F8;
const uint GL_SINGLE_COLOR                   = 0x81F9;
const uint GL_SEPARATE_SPECULAR_COLOR        = 0x81FA;
const uint GL_SMOOTH_POINT_SIZE_RANGE        = 0x0B12;
const uint GL_SMOOTH_POINT_SIZE_GRANULARITY  = 0x0B13;
const uint GL_SMOOTH_LINE_WIDTH_RANGE        = 0x0B22;
const uint GL_SMOOTH_LINE_WIDTH_GRANULARITY  = 0x0B23;
const uint GL_ALIASED_POINT_SIZE_RANGE       = 0x846D;
const uint GL_ALIASED_LINE_WIDTH_RANGE       = 0x846E;
}

version (GL_ARB_imaging) { } else {
const uint GL_CONSTANT_COLOR                 = 0x8001;
const uint GL_ONE_MINUS_CONSTANT_COLOR       = 0x8002;
const uint GL_CONSTANT_ALPHA                 = 0x8003;
const uint GL_ONE_MINUS_CONSTANT_ALPHA       = 0x8004;
const uint GL_BLEND_COLOR                    = 0x8005;
const uint GL_FUNC_ADD                       = 0x8006;
const uint GL_MIN                            = 0x8007;
const uint GL_MAX                            = 0x8008;
const uint GL_BLEND_EQUATION                 = 0x8009;
const uint GL_FUNC_SUBTRACT                  = 0x800A;
const uint GL_FUNC_REVERSE_SUBTRACT          = 0x800B;
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
const uint GL_CONSTANT_BORDER                = 0x8151;
const uint GL_REPLICATE_BORDER               = 0x8153;
const uint GL_CONVOLUTION_BORDER_COLOR       = 0x8154;
} /* GL_VERSION_1_2 */

version (GL_VERSION_1_3) { } else {
const uint GL_TEXTURE0                       = 0x84C0;
const uint GL_TEXTURE1                       = 0x84C1;
const uint GL_TEXTURE2                       = 0x84C2;
const uint GL_TEXTURE3                       = 0x84C3;
const uint GL_TEXTURE4                       = 0x84C4;
const uint GL_TEXTURE5                       = 0x84C5;
const uint GL_TEXTURE6                       = 0x84C6;
const uint GL_TEXTURE7                       = 0x84C7;
const uint GL_TEXTURE8                       = 0x84C8;
const uint GL_TEXTURE9                       = 0x84C9;
const uint GL_TEXTURE10                      = 0x84CA;
const uint GL_TEXTURE11                      = 0x84CB;
const uint GL_TEXTURE12                      = 0x84CC;
const uint GL_TEXTURE13                      = 0x84CD;
const uint GL_TEXTURE14                      = 0x84CE;
const uint GL_TEXTURE15                      = 0x84CF;
const uint GL_TEXTURE16                      = 0x84D0;
const uint GL_TEXTURE17                      = 0x84D1;
const uint GL_TEXTURE18                      = 0x84D2;
const uint GL_TEXTURE19                      = 0x84D3;
const uint GL_TEXTURE20                      = 0x84D4;
const uint GL_TEXTURE21                      = 0x84D5;
const uint GL_TEXTURE22                      = 0x84D6;
const uint GL_TEXTURE23                      = 0x84D7;
const uint GL_TEXTURE24                      = 0x84D8;
const uint GL_TEXTURE25                      = 0x84D9;
const uint GL_TEXTURE26                      = 0x84DA;
const uint GL_TEXTURE27                      = 0x84DB;
const uint GL_TEXTURE28                      = 0x84DC;
const uint GL_TEXTURE29                      = 0x84DD;
const uint GL_TEXTURE30                      = 0x84DE;
const uint GL_TEXTURE31                      = 0x84DF;
const uint GL_ACTIVE_TEXTURE                 = 0x84E0;
const uint GL_CLIENT_ACTIVE_TEXTURE          = 0x84E1;
const uint GL_MAX_TEXTURE_UNITS              = 0x84E2;
const uint GL_TRANSPOSE_MODELVIEW_MATRIX     = 0x84E3;
const uint GL_TRANSPOSE_PROJECTION_MATRIX    = 0x84E4;
const uint GL_TRANSPOSE_TEXTURE_MATRIX       = 0x84E5;
const uint GL_TRANSPOSE_COLOR_MATRIX         = 0x84E6;
const uint GL_MULTISAMPLE                    = 0x809D;
const uint GL_SAMPLE_ALPHA_TO_COVERAGE       = 0x809E;
const uint GL_SAMPLE_ALPHA_TO_ONE            = 0x809F;
const uint GL_SAMPLE_COVERAGE                = 0x80A0;
const uint GL_SAMPLE_BUFFERS                 = 0x80A8;
const uint GL_SAMPLES                        = 0x80A9;
const uint GL_SAMPLE_COVERAGE_VALUE          = 0x80AA;
const uint GL_SAMPLE_COVERAGE_INVERT         = 0x80AB;
const uint GL_MULTISAMPLE_BIT                = 0x20000000;
const uint GL_NORMAL_MAP                     = 0x8511;
const uint GL_REFLECTION_MAP                 = 0x8512;
const uint GL_TEXTURE_CUBE_MAP               = 0x8513;
const uint GL_TEXTURE_BINDING_CUBE_MAP       = 0x8514;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_X    = 0x8515;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_X    = 0x8516;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_Y    = 0x8517;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_Y    = 0x8518;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_Z    = 0x8519;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_Z    = 0x851A;
const uint GL_PROXY_TEXTURE_CUBE_MAP         = 0x851B;
const uint GL_MAX_CUBE_MAP_TEXTURE_SIZE      = 0x851C;
const uint GL_COMPRESSED_ALPHA               = 0x84E9;
const uint GL_COMPRESSED_LUMINANCE           = 0x84EA;
const uint GL_COMPRESSED_LUMINANCE_ALPHA     = 0x84EB;
const uint GL_COMPRESSED_INTENSITY           = 0x84EC;
const uint GL_COMPRESSED_RGB                 = 0x84ED;
const uint GL_COMPRESSED_RGBA                = 0x84EE;
const uint GL_TEXTURE_COMPRESSION_HINT       = 0x84EF;
const uint GL_TEXTURE_COMPRESSED_IMAGE_SIZE  = 0x86A0;
const uint GL_TEXTURE_COMPRESSED             = 0x86A1;
const uint GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
const uint GL_COMPRESSED_TEXTURE_FORMATS     = 0x86A3;
const uint GL_CLAMP_TO_BORDER                = 0x812D;
const uint GL_CLAMP_TO_BORDER_SGIS           = 0x812D;
const uint GL_COMBINE                        = 0x8570;
const uint GL_COMBINE_RGB                    = 0x8571;
const uint GL_COMBINE_ALPHA                  = 0x8572;
const uint GL_SOURCE0_RGB                    = 0x8580;
const uint GL_SOURCE1_RGB                    = 0x8581;
const uint GL_SOURCE2_RGB                    = 0x8582;
const uint GL_SOURCE0_ALPHA                  = 0x8588;
const uint GL_SOURCE1_ALPHA                  = 0x8589;
const uint GL_SOURCE2_ALPHA                  = 0x858A;
const uint GL_OPERAND0_RGB                   = 0x8590;
const uint GL_OPERAND1_RGB                   = 0x8591;
const uint GL_OPERAND2_RGB                   = 0x8592;
const uint GL_OPERAND0_ALPHA                 = 0x8598;
const uint GL_OPERAND1_ALPHA                 = 0x8599;
const uint GL_OPERAND2_ALPHA                 = 0x859A;
const uint GL_RGB_SCALE                      = 0x8573;
const uint GL_ADD_SIGNED                     = 0x8574;
const uint GL_INTERPOLATE                    = 0x8575;
const uint GL_SUBTRACT                       = 0x84E7;
const uint GL_CONSTANT                       = 0x8576;
const uint GL_PRIMARY_COLOR                  = 0x8577;
const uint GL_PREVIOUS                       = 0x8578;
const uint GL_DOT3_RGB                       = 0x86AE;
const uint GL_DOT3_RGBA                      = 0x86AF;
} /* GL_VERSION_1_3 */

version (GL_VERSION_1_4) { } else {
const uint GL_BLEND_DST_RGB                  = 0x80C8;
const uint GL_BLEND_SRC_RGB                  = 0x80C9;
const uint GL_BLEND_DST_ALPHA                = 0x80CA;
const uint GL_BLEND_SRC_ALPHA                = 0x80CB;
const uint GL_POINT_SIZE_MIN                 = 0x8126;
const uint GL_POINT_SIZE_MAX                 = 0x8127;
const uint GL_POINT_FADE_THRESHOLD_SIZE      = 0x8128;
const uint GL_POINT_DISTANCE_ATTENUATION     = 0x8129;
const uint GL_GENERATE_MIPMAP                = 0x8191;
const uint GL_GENERATE_MIPMAP_HINT           = 0x8192;
const uint GL_DEPTH_COMPONENT16              = 0x81A5;
const uint GL_DEPTH_COMPONENT24              = 0x81A6;
const uint GL_DEPTH_COMPONENT32              = 0x81A7;
const uint GL_MIRRORED_REPEAT                = 0x8370;
const uint GL_FOG_COORDINATE_SOURCE          = 0x8450;
const uint GL_FOG_COORDINATE                 = 0x8451;
const uint GL_FRAGMENT_DEPTH                 = 0x8452;
const uint GL_CURRENT_FOG_COORDINATE         = 0x8453;
const uint GL_FOG_COORDINATE_ARRAY_TYPE      = 0x8454;
const uint GL_FOG_COORDINATE_ARRAY_STRIDE    = 0x8455;
const uint GL_FOG_COORDINATE_ARRAY_POINTER   = 0x8456;
const uint GL_FOG_COORDINATE_ARRAY           = 0x8457;
const uint GL_COLOR_SUM                      = 0x8458;
const uint GL_CURRENT_SECONDARY_COLOR        = 0x8459;
const uint GL_SECONDARY_COLOR_ARRAY_SIZE     = 0x845A;
const uint GL_SECONDARY_COLOR_ARRAY_TYPE     = 0x845B;
const uint GL_SECONDARY_COLOR_ARRAY_STRIDE   = 0x845C;
const uint GL_SECONDARY_COLOR_ARRAY_POINTER  = 0x845D;
const uint GL_SECONDARY_COLOR_ARRAY          = 0x845E;
const uint GL_MAX_TEXTURE_LOD_BIAS           = 0x84FD;
const uint GL_TEXTURE_FILTER_CONTROL         = 0x8500;
const uint GL_TEXTURE_LOD_BIAS               = 0x8501;
const uint GL_INCR_WRAP                      = 0x8507;
const uint GL_DECR_WRAP                      = 0x8508;
const uint GL_TEXTURE_DEPTH_SIZE             = 0x884A;
const uint GL_DEPTH_TEXTURE_MODE             = 0x884B;
const uint GL_TEXTURE_COMPARE_MODE           = 0x884C;
const uint GL_TEXTURE_COMPARE_FUNC           = 0x884D;
const uint GL_COMPARE_R_TO_TEXTURE           = 0x884E;
} /* GL_VERSION_1_4 */

version (GL_VERSION_1_5) { } else {
const uint GL_BUFFER_SIZE                    = 0x8764;
const uint GL_BUFFER_USAGE                   = 0x8765;
const uint GL_QUERY_COUNTER_BITS             = 0x8864;
const uint GL_CURRENT_QUERY                  = 0x8865;
const uint GL_QUERY_RESULT                   = 0x8866;
const uint GL_QUERY_RESULT_AVAILABLE         = 0x8867;
const uint GL_ARRAY_BUFFER                   = 0x8892;
const uint GL_ELEMENT_ARRAY_BUFFER           = 0x8893;
const uint GL_ARRAY_BUFFER_BINDING           = 0x8894;
const uint GL_ELEMENT_ARRAY_BUFFER_BINDING   = 0x8895;
const uint GL_VERTEX_ARRAY_BUFFER_BINDING    = 0x8896;
const uint GL_NORMAL_ARRAY_BUFFER_BINDING    = 0x8897;
const uint GL_COLOR_ARRAY_BUFFER_BINDING     = 0x8898;
const uint GL_INDEX_ARRAY_BUFFER_BINDING     = 0x8899;
const uint GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A;
const uint GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889B;
const uint GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C;
const uint GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889D;
const uint GL_WEIGHT_ARRAY_BUFFER_BINDING    = 0x889E;
const uint GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
const uint GL_READ_ONLY                      = 0x88B8;
const uint GL_WRITE_ONLY                     = 0x88B9;
const uint GL_READ_WRITE                     = 0x88BA;
const uint GL_BUFFER_ACCESS                  = 0x88BB;
const uint GL_BUFFER_MAPPED                  = 0x88BC;
const uint GL_BUFFER_MAP_POINTER             = 0x88BD;
const uint GL_STREAM_DRAW                    = 0x88E0;
const uint GL_STREAM_READ                    = 0x88E1;
const uint GL_STREAM_COPY                    = 0x88E2;
const uint GL_STATIC_DRAW                    = 0x88E4;
const uint GL_STATIC_READ                    = 0x88E5;
const uint GL_STATIC_COPY                    = 0x88E6;
const uint GL_DYNAMIC_DRAW                   = 0x88E8;
const uint GL_DYNAMIC_READ                   = 0x88E9;
const uint GL_DYNAMIC_COPY                   = 0x88EA;
const uint GL_SAMPLES_PASSED                 = 0x8914;
const uint GL_FOG_COORD_SOURCE               = GL_FOG_COORDINATE_SOURCE;
const uint GL_FOG_COORD                      = GL_FOG_COORDINATE;
const uint GL_CURRENT_FOG_COORD              = GL_CURRENT_FOG_COORDINATE;
const uint GL_FOG_COORD_ARRAY_TYPE           = GL_FOG_COORDINATE_ARRAY_TYPE;
const uint GL_FOG_COORD_ARRAY_STRIDE         = GL_FOG_COORDINATE_ARRAY_STRIDE;
const uint GL_FOG_COORD_ARRAY_POINTER        = GL_FOG_COORDINATE_ARRAY_POINTER;
const uint GL_FOG_COORD_ARRAY                = GL_FOG_COORDINATE_ARRAY;
const uint GL_FOG_COORD_ARRAY_BUFFER_BINDING = GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING;
const uint GL_SRC0_RGB                       = GL_SOURCE0_RGB;
const uint GL_SRC1_RGB                       = GL_SOURCE1_RGB;
const uint GL_SRC2_RGB                       = GL_SOURCE2_RGB;
const uint GL_SRC0_ALPHA                     = GL_SOURCE0_ALPHA;
const uint GL_SRC1_ALPHA                     = GL_SOURCE1_ALPHA;
const uint GL_SRC2_ALPHA                     = GL_SOURCE2_ALPHA;
}

version (GL_ARB_multitexture) { } else {
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
}

version (GL_ARB_transpose_matrix) { } else {
const uint GL_TRANSPOSE_MODELVIEW_MATRIX_ARB = 0x84E3;
const uint GL_TRANSPOSE_PROJECTION_MATRIX_ARB = 0x84E4;
const uint GL_TRANSPOSE_TEXTURE_MATRIX_ARB   = 0x84E5;
const uint GL_TRANSPOSE_COLOR_MATRIX_ARB     = 0x84E6;
}

version (GL_ARB_multisample) { } else {
const uint GL_MULTISAMPLE_ARB                = 0x809D;
const uint GL_SAMPLE_ALPHA_TO_COVERAGE_ARB   = 0x809E;
const uint GL_SAMPLE_ALPHA_TO_ONE_ARB        = 0x809F;
const uint GL_SAMPLE_COVERAGE_ARB            = 0x80A0;
const uint GL_SAMPLE_BUFFERS_ARB             = 0x80A8;
const uint GL_SAMPLES_ARB                    = 0x80A9;
const uint GL_SAMPLE_COVERAGE_VALUE_ARB      = 0x80AA;
const uint GL_SAMPLE_COVERAGE_INVERT_ARB     = 0x80AB;
const uint GL_MULTISAMPLE_BIT_ARB            = 0x20000000;
}

version (GL_ARB_texture_env_add) { } else {
}

version (GL_ARB_texture_cube_map) { } else {
const uint GL_NORMAL_MAP_ARB                 = 0x8511;
const uint GL_REFLECTION_MAP_ARB             = 0x8512;
const uint GL_TEXTURE_CUBE_MAP_ARB           = 0x8513;
const uint GL_TEXTURE_BINDING_CUBE_MAP_ARB   = 0x8514;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = 0x8515;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = 0x8516;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = 0x8517;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = 0x8518;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = 0x8519;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = 0x851A;
const uint GL_PROXY_TEXTURE_CUBE_MAP_ARB     = 0x851B;
const uint GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB  = 0x851C;
}

version (GL_ARB_texture_compression) { } else {
const uint GL_COMPRESSED_ALPHA_ARB           = 0x84E9;
const uint GL_COMPRESSED_LUMINANCE_ARB       = 0x84EA;
const uint GL_COMPRESSED_LUMINANCE_ALPHA_ARB = 0x84EB;
const uint GL_COMPRESSED_INTENSITY_ARB       = 0x84EC;
const uint GL_COMPRESSED_RGB_ARB             = 0x84ED;
const uint GL_COMPRESSED_RGBA_ARB            = 0x84EE;
const uint GL_TEXTURE_COMPRESSION_HINT_ARB   = 0x84EF;
const uint GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = 0x86A0;
const uint GL_TEXTURE_COMPRESSED_ARB         = 0x86A1;
const uint GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A2;
const uint GL_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A3;
}

version (GL_ARB_texture_border_clamp) { } else {
const uint GL_CLAMP_TO_BORDER_ARB            = 0x812D;
}

version (GL_ARB_point_parameters) { } else {
const uint GL_POINT_SIZE_MIN_ARB             = 0x8126;
const uint GL_POINT_SIZE_MAX_ARB             = 0x8127;
const uint GL_POINT_FADE_THRESHOLD_SIZE_ARB  = 0x8128;
const uint GL_POINT_DISTANCE_ATTENUATION_ARB = 0x8129;
}

version (GL_ARB_vertex_blend) { } else {
const uint GL_MAX_VERTEX_UNITS_ARB           = 0x86A4;
const uint GL_ACTIVE_VERTEX_UNITS_ARB        = 0x86A5;
const uint GL_WEIGHT_SUM_UNITY_ARB           = 0x86A6;
const uint GL_VERTEX_BLEND_ARB               = 0x86A7;
const uint GL_CURRENT_WEIGHT_ARB             = 0x86A8;
const uint GL_WEIGHT_ARRAY_TYPE_ARB          = 0x86A9;
const uint GL_WEIGHT_ARRAY_STRIDE_ARB        = 0x86AA;
const uint GL_WEIGHT_ARRAY_SIZE_ARB          = 0x86AB;
const uint GL_WEIGHT_ARRAY_POINTER_ARB       = 0x86AC;
const uint GL_WEIGHT_ARRAY_ARB               = 0x86AD;
const uint GL_MODELVIEW0_ARB                 = 0x1700;
const uint GL_MODELVIEW1_ARB                 = 0x850A;
const uint GL_MODELVIEW2_ARB                 = 0x8722;
const uint GL_MODELVIEW3_ARB                 = 0x8723;
const uint GL_MODELVIEW4_ARB                 = 0x8724;
const uint GL_MODELVIEW5_ARB                 = 0x8725;
const uint GL_MODELVIEW6_ARB                 = 0x8726;
const uint GL_MODELVIEW7_ARB                 = 0x8727;
const uint GL_MODELVIEW8_ARB                 = 0x8728;
const uint GL_MODELVIEW9_ARB                 = 0x8729;
const uint GL_MODELVIEW10_ARB                = 0x872A;
const uint GL_MODELVIEW11_ARB                = 0x872B;
const uint GL_MODELVIEW12_ARB                = 0x872C;
const uint GL_MODELVIEW13_ARB                = 0x872D;
const uint GL_MODELVIEW14_ARB                = 0x872E;
const uint GL_MODELVIEW15_ARB                = 0x872F;
const uint GL_MODELVIEW16_ARB                = 0x8730;
const uint GL_MODELVIEW17_ARB                = 0x8731;
const uint GL_MODELVIEW18_ARB                = 0x8732;
const uint GL_MODELVIEW19_ARB                = 0x8733;
const uint GL_MODELVIEW20_ARB                = 0x8734;
const uint GL_MODELVIEW21_ARB                = 0x8735;
const uint GL_MODELVIEW22_ARB                = 0x8736;
const uint GL_MODELVIEW23_ARB                = 0x8737;
const uint GL_MODELVIEW24_ARB                = 0x8738;
const uint GL_MODELVIEW25_ARB                = 0x8739;
const uint GL_MODELVIEW26_ARB                = 0x873A;
const uint GL_MODELVIEW27_ARB                = 0x873B;
const uint GL_MODELVIEW28_ARB                = 0x873C;
const uint GL_MODELVIEW29_ARB                = 0x873D;
const uint GL_MODELVIEW30_ARB                = 0x873E;
const uint GL_MODELVIEW31_ARB                = 0x873F;
}

version (GL_ARB_matrix_palette) { } else {
const uint GL_MATRIX_PALETTE_ARB             = 0x8840;
const uint GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 0x8841;
const uint GL_MAX_PALETTE_MATRICES_ARB       = 0x8842;
const uint GL_CURRENT_PALETTE_MATRIX_ARB     = 0x8843;
const uint GL_MATRIX_INDEX_ARRAY_ARB         = 0x8844;
const uint GL_CURRENT_MATRIX_INDEX_ARB       = 0x8845;
const uint GL_MATRIX_INDEX_ARRAY_SIZE_ARB    = 0x8846;
const uint GL_MATRIX_INDEX_ARRAY_TYPE_ARB    = 0x8847;
const uint GL_MATRIX_INDEX_ARRAY_STRIDE_ARB  = 0x8848;
const uint GL_MATRIX_INDEX_ARRAY_POINTER_ARB = 0x8849;
}

version (GL_ARB_texture_env_combine) { } else {
const uint GL_COMBINE_ARB                    = 0x8570;
const uint GL_COMBINE_RGB_ARB                = 0x8571;
const uint GL_COMBINE_ALPHA_ARB              = 0x8572;
const uint GL_SOURCE0_RGB_ARB                = 0x8580;
const uint GL_SOURCE1_RGB_ARB                = 0x8581;
const uint GL_SOURCE2_RGB_ARB                = 0x8582;
const uint GL_SOURCE0_ALPHA_ARB              = 0x8588;
const uint GL_SOURCE1_ALPHA_ARB              = 0x8589;
const uint GL_SOURCE2_ALPHA_ARB              = 0x858A;
const uint GL_OPERAND0_RGB_ARB               = 0x8590;
const uint GL_OPERAND1_RGB_ARB               = 0x8591;
const uint GL_OPERAND2_RGB_ARB               = 0x8592;
const uint GL_OPERAND0_ALPHA_ARB             = 0x8598;
const uint GL_OPERAND1_ALPHA_ARB             = 0x8599;
const uint GL_OPERAND2_ALPHA_ARB             = 0x859A;
const uint GL_RGB_SCALE_ARB                  = 0x8573;
const uint GL_ADD_SIGNED_ARB                 = 0x8574;
const uint GL_INTERPOLATE_ARB                = 0x8575;
const uint GL_SUBTRACT_ARB                   = 0x84E7;
const uint GL_CONSTANT_ARB                   = 0x8576;
const uint GL_PRIMARY_COLOR_ARB              = 0x8577;
const uint GL_PREVIOUS_ARB                   = 0x8578;
}

version (GL_ARB_texture_env_crossbar) { } else {
}

version (GL_ARB_texture_env_dot3) { } else {
const uint GL_DOT3_RGB_ARB                   = 0x86AE;
const uint GL_DOT3_RGBA_ARB                  = 0x86AF;
}

version (GL_ARB_texture_mirrored_repeat) { } else {
const uint GL_MIRRORED_REPEAT_ARB            = 0x8370;
}

version (GL_ARB_depth_texture) { } else {
const uint GL_DEPTH_COMPONENT16_ARB          = 0x81A5;
const uint GL_DEPTH_COMPONENT24_ARB          = 0x81A6;
const uint GL_DEPTH_COMPONENT32_ARB          = 0x81A7;
const uint GL_TEXTURE_DEPTH_SIZE_ARB         = 0x884A;
const uint GL_DEPTH_TEXTURE_MODE_ARB         = 0x884B;
}

version (GL_ARB_shadow) { } else {
const uint GL_TEXTURE_COMPARE_MODE_ARB       = 0x884C;
const uint GL_TEXTURE_COMPARE_FUNC_ARB       = 0x884D;
const uint GL_COMPARE_R_TO_TEXTURE_ARB       = 0x884E;
}

version (GL_ARB_shadow_ambient) { } else {
const uint GL_TEXTURE_COMPARE_FAIL_VALUE_ARB = 0x80BF;
}

version (GL_ARB_window_pos) { } else {
}

version (GL_ARB_vertex_program) { } else {
const uint GL_COLOR_SUM_ARB                  = 0x8458;
const uint GL_VERTEX_PROGRAM_ARB             = 0x8620;
const uint GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = 0x8622;
const uint GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB   = 0x8623;
const uint GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = 0x8624;
const uint GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB   = 0x8625;
const uint GL_CURRENT_VERTEX_ATTRIB_ARB      = 0x8626;
const uint GL_PROGRAM_LENGTH_ARB             = 0x8627;
const uint GL_PROGRAM_STRING_ARB             = 0x8628;
const uint GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = 0x862E;
const uint GL_MAX_PROGRAM_MATRICES_ARB       = 0x862F;
const uint GL_CURRENT_MATRIX_STACK_DEPTH_ARB = 0x8640;
const uint GL_CURRENT_MATRIX_ARB             = 0x8641;
const uint GL_VERTEX_PROGRAM_POINT_SIZE_ARB  = 0x8642;
const uint GL_VERTEX_PROGRAM_TWO_SIDE_ARB    = 0x8643;
const uint GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB = 0x8645;
const uint GL_PROGRAM_ERROR_POSITION_ARB     = 0x864B;
const uint GL_PROGRAM_BINDING_ARB            = 0x8677;
const uint GL_MAX_VERTEX_ATTRIBS_ARB         = 0x8869;
const uint GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = 0x886A;
const uint GL_PROGRAM_ERROR_STRING_ARB       = 0x8874;
const uint GL_PROGRAM_FORMAT_ASCII_ARB       = 0x8875;
const uint GL_PROGRAM_FORMAT_ARB             = 0x8876;
const uint GL_PROGRAM_INSTRUCTIONS_ARB       = 0x88A0;
const uint GL_MAX_PROGRAM_INSTRUCTIONS_ARB   = 0x88A1;
const uint GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A2;
const uint GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A3;
const uint GL_PROGRAM_TEMPORARIES_ARB        = 0x88A4;
const uint GL_MAX_PROGRAM_TEMPORARIES_ARB    = 0x88A5;
const uint GL_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A6;
const uint GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A7;
const uint GL_PROGRAM_PARAMETERS_ARB         = 0x88A8;
const uint GL_MAX_PROGRAM_PARAMETERS_ARB     = 0x88A9;
const uint GL_PROGRAM_NATIVE_PARAMETERS_ARB  = 0x88AA;
const uint GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AB;
const uint GL_PROGRAM_ATTRIBS_ARB            = 0x88AC;
const uint GL_MAX_PROGRAM_ATTRIBS_ARB        = 0x88AD;
const uint GL_PROGRAM_NATIVE_ATTRIBS_ARB     = 0x88AE;
const uint GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AF;
const uint GL_PROGRAM_ADDRESS_REGISTERS_ARB  = 0x88B0;
const uint GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B1;
const uint GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B2;
const uint GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B3;
const uint GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = 0x88B4;
const uint GL_MAX_PROGRAM_ENV_PARAMETERS_ARB = 0x88B5;
const uint GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB = 0x88B6;
const uint GL_TRANSPOSE_CURRENT_MATRIX_ARB   = 0x88B7;
const uint GL_MATRIX0_ARB                    = 0x88C0;
const uint GL_MATRIX1_ARB                    = 0x88C1;
const uint GL_MATRIX2_ARB                    = 0x88C2;
const uint GL_MATRIX3_ARB                    = 0x88C3;
const uint GL_MATRIX4_ARB                    = 0x88C4;
const uint GL_MATRIX5_ARB                    = 0x88C5;
const uint GL_MATRIX6_ARB                    = 0x88C6;
const uint GL_MATRIX7_ARB                    = 0x88C7;
const uint GL_MATRIX8_ARB                    = 0x88C8;
const uint GL_MATRIX9_ARB                    = 0x88C9;
const uint GL_MATRIX10_ARB                   = 0x88CA;
const uint GL_MATRIX11_ARB                   = 0x88CB;
const uint GL_MATRIX12_ARB                   = 0x88CC;
const uint GL_MATRIX13_ARB                   = 0x88CD;
const uint GL_MATRIX14_ARB                   = 0x88CE;
const uint GL_MATRIX15_ARB                   = 0x88CF;
const uint GL_MATRIX16_ARB                   = 0x88D0;
const uint GL_MATRIX17_ARB                   = 0x88D1;
const uint GL_MATRIX18_ARB                   = 0x88D2;
const uint GL_MATRIX19_ARB                   = 0x88D3;
const uint GL_MATRIX20_ARB                   = 0x88D4;
const uint GL_MATRIX21_ARB                   = 0x88D5;
const uint GL_MATRIX22_ARB                   = 0x88D6;
const uint GL_MATRIX23_ARB                   = 0x88D7;
const uint GL_MATRIX24_ARB                   = 0x88D8;
const uint GL_MATRIX25_ARB                   = 0x88D9;
const uint GL_MATRIX26_ARB                   = 0x88DA;
const uint GL_MATRIX27_ARB                   = 0x88DB;
const uint GL_MATRIX28_ARB                   = 0x88DC;
const uint GL_MATRIX29_ARB                   = 0x88DD;
const uint GL_MATRIX30_ARB                   = 0x88DE;
const uint GL_MATRIX31_ARB                   = 0x88DF;
}

version (GL_ARB_fragment_program) { } else {
const uint GL_FRAGMENT_PROGRAM_ARB           = 0x8804;
const uint GL_PROGRAM_ALU_INSTRUCTIONS_ARB   = 0x8805;
const uint GL_PROGRAM_TEX_INSTRUCTIONS_ARB   = 0x8806;
const uint GL_PROGRAM_TEX_INDIRECTIONS_ARB   = 0x8807;
const uint GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x8808;
const uint GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x8809;
const uint GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x880A;
const uint GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB = 0x880B;
const uint GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB = 0x880C;
const uint GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB = 0x880D;
const uint GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 0x880E;
const uint GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 0x880F;
const uint GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 0x8810;
const uint GL_MAX_TEXTURE_COORDS_ARB         = 0x8871;
const uint GL_MAX_TEXTURE_IMAGE_UNITS_ARB    = 0x8872;
}

version (GL_ARB_vertex_buffer_object) { } else {
const uint GL_BUFFER_SIZE_ARB                = 0x8764;
const uint GL_BUFFER_USAGE_ARB               = 0x8765;
const uint GL_ARRAY_BUFFER_ARB               = 0x8892;
const uint GL_ELEMENT_ARRAY_BUFFER_ARB       = 0x8893;
const uint GL_ARRAY_BUFFER_BINDING_ARB       = 0x8894;
const uint GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB = 0x8895;
const uint GL_VERTEX_ARRAY_BUFFER_BINDING_ARB = 0x8896;
const uint GL_NORMAL_ARRAY_BUFFER_BINDING_ARB = 0x8897;
const uint GL_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x8898;
const uint GL_INDEX_ARRAY_BUFFER_BINDING_ARB = 0x8899;
const uint GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB = 0x889A;
const uint GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB = 0x889B;
const uint GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x889C;
const uint GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB = 0x889D;
const uint GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB = 0x889E;
const uint GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB = 0x889F;
const uint GL_READ_ONLY_ARB                  = 0x88B8;
const uint GL_WRITE_ONLY_ARB                 = 0x88B9;
const uint GL_READ_WRITE_ARB                 = 0x88BA;
const uint GL_BUFFER_ACCESS_ARB              = 0x88BB;
const uint GL_BUFFER_MAPPED_ARB              = 0x88BC;
const uint GL_BUFFER_MAP_POINTER_ARB         = 0x88BD;
const uint GL_STREAM_DRAW_ARB                = 0x88E0;
const uint GL_STREAM_READ_ARB                = 0x88E1;
const uint GL_STREAM_COPY_ARB                = 0x88E2;
const uint GL_STATIC_DRAW_ARB                = 0x88E4;
const uint GL_STATIC_READ_ARB                = 0x88E5;
const uint GL_STATIC_COPY_ARB                = 0x88E6;
const uint GL_DYNAMIC_DRAW_ARB               = 0x88E8;
const uint GL_DYNAMIC_READ_ARB               = 0x88E9;
const uint GL_DYNAMIC_COPY_ARB               = 0x88EA;
}

version (GL_ARB_occlusion_query) { } else {
const uint GL_QUERY_COUNTER_BITS_ARB         = 0x8864;
const uint GL_CURRENT_QUERY_ARB              = 0x8865;
const uint GL_QUERY_RESULT_ARB               = 0x8866;
const uint GL_QUERY_RESULT_AVAILABLE_ARB     = 0x8867;
const uint GL_SAMPLES_PASSED_ARB             = 0x8914;
}

version (GL_ARB_shader_objects) { } else {
const uint GL_PROGRAM_OBJECT_ARB             = 0x8B40;
const uint GL_SHADER_OBJECT_ARB              = 0x8B48;
const uint GL_OBJECT_TYPE_ARB                = 0x8B4E;
const uint GL_OBJECT_SUBTYPE_ARB             = 0x8B4F;
const uint GL_FLOAT_VEC2_ARB                 = 0x8B50;
const uint GL_FLOAT_VEC3_ARB                 = 0x8B51;
const uint GL_FLOAT_VEC4_ARB                 = 0x8B52;
const uint GL_INT_VEC2_ARB                   = 0x8B53;
const uint GL_INT_VEC3_ARB                   = 0x8B54;
const uint GL_INT_VEC4_ARB                   = 0x8B55;
const uint GL_BOOL_ARB                       = 0x8B56;
const uint GL_BOOL_VEC2_ARB                  = 0x8B57;
const uint GL_BOOL_VEC3_ARB                  = 0x8B58;
const uint GL_BOOL_VEC4_ARB                  = 0x8B59;
const uint GL_FLOAT_MAT2_ARB                 = 0x8B5A;
const uint GL_FLOAT_MAT3_ARB                 = 0x8B5B;
const uint GL_FLOAT_MAT4_ARB                 = 0x8B5C;
const uint GL_OBJECT_DELETE_STATUS_ARB       = 0x8B80;
const uint GL_OBJECT_COMPILE_STATUS_ARB      = 0x8B81;
const uint GL_OBJECT_LINK_STATUS_ARB         = 0x8B82;
const uint GL_OBJECT_VALIDATE_STATUS_ARB     = 0x8B83;
const uint GL_OBJECT_INFO_LOG_LENGTH_ARB     = 0x8B84;
const uint GL_OBJECT_ATTACHED_OBJECTS_ARB    = 0x8B85;
const uint GL_OBJECT_ACTIVE_UNIFORMS_ARB     = 0x8B86;
const uint GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8B87;
const uint GL_OBJECT_SHADER_SOURCE_LENGTH_ARB = 0x8B88;
}

version (GL_ARB_vertex_shader) { } else {
const uint GL_VERTEX_SHADER_ARB              = 0x8B31;
const uint GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB = 0x8B4A;
const uint GL_MAX_VARYING_FLOATS_ARB         = 0x8B4B;
const uint GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = 0x8B4C;
const uint GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB = 0x8B4D;
const uint GL_OBJECT_ACTIVE_ATTRIBUTES_ARB   = 0x8B89;
const uint GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = 0x8B8A;
}

version (GL_ARB_fragment_shader) { } else {
const uint GL_FRAGMENT_SHADER_ARB            = 0x8B30;
const uint GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = 0x8B49;
}

version (GL_ARB_shading_language_100) { } else {
}

version (GL_ARB_texture_non_power_of_two) { } else {
}

version (GL_ARB_point_sprite) { } else {
const uint GL_POINT_SPRITE_ARB               = 0x8861;
const uint GL_COORD_REPLACE_ARB              = 0x8862;
}

version (GL_ARB_fragment_program_shadow) { } else {
}

version (GL_EXT_abgr) { } else {
const uint GL_ABGR_EXT                       = 0x8000;
}

version (GL_EXT_blend_color) { } else {
const uint GL_CONSTANT_COLOR_EXT             = 0x8001;
const uint GL_ONE_MINUS_CONSTANT_COLOR_EXT   = 0x8002;
const uint GL_CONSTANT_ALPHA_EXT             = 0x8003;
const uint GL_ONE_MINUS_CONSTANT_ALPHA_EXT   = 0x8004;
const uint GL_BLEND_COLOR_EXT                = 0x8005;
}

version (GL_EXT_polygon_offset) { } else {
const uint GL_POLYGON_OFFSET_EXT             = 0x8037;
const uint GL_POLYGON_OFFSET_FACTOR_EXT      = 0x8038;
const uint GL_POLYGON_OFFSET_BIAS_EXT        = 0x8039;
}

version (GL_EXT_texture) { } else {
const uint GL_ALPHA4_EXT                     = 0x803B;
const uint GL_ALPHA8_EXT                     = 0x803C;
const uint GL_ALPHA12_EXT                    = 0x803D;
const uint GL_ALPHA16_EXT                    = 0x803E;
const uint GL_LUMINANCE4_EXT                 = 0x803F;
const uint GL_LUMINANCE8_EXT                 = 0x8040;
const uint GL_LUMINANCE12_EXT                = 0x8041;
const uint GL_LUMINANCE16_EXT                = 0x8042;
const uint GL_LUMINANCE4_ALPHA4_EXT          = 0x8043;
const uint GL_LUMINANCE6_ALPHA2_EXT          = 0x8044;
const uint GL_LUMINANCE8_ALPHA8_EXT          = 0x8045;
const uint GL_LUMINANCE12_ALPHA4_EXT         = 0x8046;
const uint GL_LUMINANCE12_ALPHA12_EXT        = 0x8047;
const uint GL_LUMINANCE16_ALPHA16_EXT        = 0x8048;
const uint GL_INTENSITY_EXT                  = 0x8049;
const uint GL_INTENSITY4_EXT                 = 0x804A;
const uint GL_INTENSITY8_EXT                 = 0x804B;
const uint GL_INTENSITY12_EXT                = 0x804C;
const uint GL_INTENSITY16_EXT                = 0x804D;
const uint GL_RGB2_EXT                       = 0x804E;
const uint GL_RGB4_EXT                       = 0x804F;
const uint GL_RGB5_EXT                       = 0x8050;
const uint GL_RGB8_EXT                       = 0x8051;
const uint GL_RGB10_EXT                      = 0x8052;
const uint GL_RGB12_EXT                      = 0x8053;
const uint GL_RGB16_EXT                      = 0x8054;
const uint GL_RGBA2_EXT                      = 0x8055;
const uint GL_RGBA4_EXT                      = 0x8056;
const uint GL_RGB5_A1_EXT                    = 0x8057;
const uint GL_RGBA8_EXT                      = 0x8058;
const uint GL_RGB10_A2_EXT                   = 0x8059;
const uint GL_RGBA12_EXT                     = 0x805A;
const uint GL_RGBA16_EXT                     = 0x805B;
const uint GL_TEXTURE_RED_SIZE_EXT           = 0x805C;
const uint GL_TEXTURE_GREEN_SIZE_EXT         = 0x805D;
const uint GL_TEXTURE_BLUE_SIZE_EXT          = 0x805E;
const uint GL_TEXTURE_ALPHA_SIZE_EXT         = 0x805F;
const uint GL_TEXTURE_LUMINANCE_SIZE_EXT     = 0x8060;
const uint GL_TEXTURE_INTENSITY_SIZE_EXT     = 0x8061;
const uint GL_REPLACE_EXT                    = 0x8062;
const uint GL_PROXY_TEXTURE_1D_EXT           = 0x8063;
const uint GL_PROXY_TEXTURE_2D_EXT           = 0x8064;
const uint GL_TEXTURE_TOO_LARGE_EXT          = 0x8065;
}

version (GL_EXT_texture3D) { } else {
const uint GL_PACK_SKIP_IMAGES_EXT           = 0x806B;
const uint GL_PACK_IMAGE_HEIGHT_EXT          = 0x806C;
const uint GL_UNPACK_SKIP_IMAGES_EXT         = 0x806D;
const uint GL_UNPACK_IMAGE_HEIGHT_EXT        = 0x806E;
const uint GL_TEXTURE_3D_EXT                 = 0x806F;
const uint GL_PROXY_TEXTURE_3D_EXT           = 0x8070;
const uint GL_TEXTURE_DEPTH_EXT              = 0x8071;
const uint GL_TEXTURE_WRAP_R_EXT             = 0x8072;
const uint GL_MAX_3D_TEXTURE_SIZE_EXT        = 0x8073;
}

version (GL_SGIS_texture_filter4) { } else {
const uint GL_FILTER4_SGIS                   = 0x8146;
const uint GL_TEXTURE_FILTER4_SIZE_SGIS      = 0x8147;
}

version (GL_EXT_subtexture) { } else {
}

version (GL_EXT_copy_texture) { } else {
}

version (GL_EXT_histogram) { } else {
const uint GL_HISTOGRAM_EXT                  = 0x8024;
const uint GL_PROXY_HISTOGRAM_EXT            = 0x8025;
const uint GL_HISTOGRAM_WIDTH_EXT            = 0x8026;
const uint GL_HISTOGRAM_FORMAT_EXT           = 0x8027;
const uint GL_HISTOGRAM_RED_SIZE_EXT         = 0x8028;
const uint GL_HISTOGRAM_GREEN_SIZE_EXT       = 0x8029;
const uint GL_HISTOGRAM_BLUE_SIZE_EXT        = 0x802A;
const uint GL_HISTOGRAM_ALPHA_SIZE_EXT       = 0x802B;
const uint GL_HISTOGRAM_LUMINANCE_SIZE_EXT   = 0x802C;
const uint GL_HISTOGRAM_SINK_EXT             = 0x802D;
const uint GL_MINMAX_EXT                     = 0x802E;
const uint GL_MINMAX_FORMAT_EXT              = 0x802F;
const uint GL_MINMAX_SINK_EXT                = 0x8030;
const uint GL_TABLE_TOO_LARGE_EXT            = 0x8031;
}

version (GL_EXT_convolution) { } else {
const uint GL_CONVOLUTION_1D_EXT             = 0x8010;
const uint GL_CONVOLUTION_2D_EXT             = 0x8011;
const uint GL_SEPARABLE_2D_EXT               = 0x8012;
const uint GL_CONVOLUTION_BORDER_MODE_EXT    = 0x8013;
const uint GL_CONVOLUTION_FILTER_SCALE_EXT   = 0x8014;
const uint GL_CONVOLUTION_FILTER_BIAS_EXT    = 0x8015;
const uint GL_REDUCE_EXT                     = 0x8016;
const uint GL_CONVOLUTION_FORMAT_EXT         = 0x8017;
const uint GL_CONVOLUTION_WIDTH_EXT          = 0x8018;
const uint GL_CONVOLUTION_HEIGHT_EXT         = 0x8019;
const uint GL_MAX_CONVOLUTION_WIDTH_EXT      = 0x801A;
const uint GL_MAX_CONVOLUTION_HEIGHT_EXT     = 0x801B;
const uint GL_POST_CONVOLUTION_RED_SCALE_EXT = 0x801C;
const uint GL_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D;
const uint GL_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801E;
const uint GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F;
const uint GL_POST_CONVOLUTION_RED_BIAS_EXT  = 0x8020;
const uint GL_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021;
const uint GL_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022;
const uint GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023;
}

version (GL_SGI_color_matrix) { } else {
const uint GL_COLOR_MATRIX_SGI               = 0x80B1;
const uint GL_COLOR_MATRIX_STACK_DEPTH_SGI   = 0x80B2;
const uint GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B3;
const uint GL_POST_COLOR_MATRIX_RED_SCALE_SGI = 0x80B4;
const uint GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = 0x80B5;
const uint GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = 0x80B6;
const uint GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = 0x80B7;
const uint GL_POST_COLOR_MATRIX_RED_BIAS_SGI = 0x80B8;
const uint GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = 0x80B9;
const uint GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = 0x80BA;
const uint GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = 0x80BB;
}

version (GL_SGI_color_table) { } else {
const uint GL_COLOR_TABLE_SGI                = 0x80D0;
const uint GL_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D1;
const uint GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D2;
const uint GL_PROXY_COLOR_TABLE_SGI          = 0x80D3;
const uint GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D4;
const uint GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D5;
const uint GL_COLOR_TABLE_SCALE_SGI          = 0x80D6;
const uint GL_COLOR_TABLE_BIAS_SGI           = 0x80D7;
const uint GL_COLOR_TABLE_FORMAT_SGI         = 0x80D8;
const uint GL_COLOR_TABLE_WIDTH_SGI          = 0x80D9;
const uint GL_COLOR_TABLE_RED_SIZE_SGI       = 0x80DA;
const uint GL_COLOR_TABLE_GREEN_SIZE_SGI     = 0x80DB;
const uint GL_COLOR_TABLE_BLUE_SIZE_SGI      = 0x80DC;
const uint GL_COLOR_TABLE_ALPHA_SIZE_SGI     = 0x80DD;
const uint GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80DE;
const uint GL_COLOR_TABLE_INTENSITY_SIZE_SGI = 0x80DF;
}

version (GL_SGIS_pixel_texture) { } else {
const uint GL_PIXEL_TEXTURE_SGIS             = 0x8353;
const uint GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS = 0x8354;
const uint GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS = 0x8355;
const uint GL_PIXEL_GROUP_COLOR_SGIS         = 0x8356;
}

version (GL_SGIX_pixel_texture) { } else {
const uint GL_PIXEL_TEX_GEN_SGIX             = 0x8139;
const uint GL_PIXEL_TEX_GEN_MODE_SGIX        = 0x832B;
}

version (GL_SGIS_texture4D) { } else {
const uint GL_PACK_SKIP_VOLUMES_SGIS         = 0x8130;
const uint GL_PACK_IMAGE_DEPTH_SGIS          = 0x8131;
const uint GL_UNPACK_SKIP_VOLUMES_SGIS       = 0x8132;
const uint GL_UNPACK_IMAGE_DEPTH_SGIS        = 0x8133;
const uint GL_TEXTURE_4D_SGIS                = 0x8134;
const uint GL_PROXY_TEXTURE_4D_SGIS          = 0x8135;
const uint GL_TEXTURE_4DSIZE_SGIS            = 0x8136;
const uint GL_TEXTURE_WRAP_Q_SGIS            = 0x8137;
const uint GL_MAX_4D_TEXTURE_SIZE_SGIS       = 0x8138;
const uint GL_TEXTURE_4D_BINDING_SGIS        = 0x814F;
}

version (GL_SGI_texture_color_table) { } else {
const uint GL_TEXTURE_COLOR_TABLE_SGI        = 0x80BC;
const uint GL_PROXY_TEXTURE_COLOR_TABLE_SGI  = 0x80BD;
}

version (GL_EXT_cmyka) { } else {
const uint GL_CMYK_EXT                       = 0x800C;
const uint GL_CMYKA_EXT                      = 0x800D;
const uint GL_PACK_CMYK_HINT_EXT             = 0x800E;
const uint GL_UNPACK_CMYK_HINT_EXT           = 0x800F;
}

version (GL_EXT_texture_object) { } else {
const uint GL_TEXTURE_PRIORITY_EXT           = 0x8066;
const uint GL_TEXTURE_RESIDENT_EXT           = 0x8067;
const uint GL_TEXTURE_1D_BINDING_EXT         = 0x8068;
const uint GL_TEXTURE_2D_BINDING_EXT         = 0x8069;
const uint GL_TEXTURE_3D_BINDING_EXT         = 0x806A;
}

version (GL_SGIS_detail_texture) { } else {
const uint GL_DETAIL_TEXTURE_2D_SGIS         = 0x8095;
const uint GL_DETAIL_TEXTURE_2D_BINDING_SGIS = 0x8096;
const uint GL_LINEAR_DETAIL_SGIS             = 0x8097;
const uint GL_LINEAR_DETAIL_ALPHA_SGIS       = 0x8098;
const uint GL_LINEAR_DETAIL_COLOR_SGIS       = 0x8099;
const uint GL_DETAIL_TEXTURE_LEVEL_SGIS      = 0x809A;
const uint GL_DETAIL_TEXTURE_MODE_SGIS       = 0x809B;
const uint GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS = 0x809C;
}

version (GL_SGIS_sharpen_texture) { } else {
const uint GL_LINEAR_SHARPEN_SGIS            = 0x80AD;
const uint GL_LINEAR_SHARPEN_ALPHA_SGIS      = 0x80AE;
const uint GL_LINEAR_SHARPEN_COLOR_SGIS      = 0x80AF;
const uint GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = 0x80B0;
}

version (GL_EXT_packed_pixels) { } else {
const uint GL_UNSIGNED_BYTE_3_3_2_EXT        = 0x8032;
const uint GL_UNSIGNED_SHORT_4_4_4_4_EXT     = 0x8033;
const uint GL_UNSIGNED_SHORT_5_5_5_1_EXT     = 0x8034;
const uint GL_UNSIGNED_INT_8_8_8_8_EXT       = 0x8035;
const uint GL_UNSIGNED_INT_10_10_10_2_EXT    = 0x8036;
}

version (GL_SGIS_texture_lod) { } else {
const uint GL_TEXTURE_MIN_LOD_SGIS           = 0x813A;
const uint GL_TEXTURE_MAX_LOD_SGIS           = 0x813B;
const uint GL_TEXTURE_BASE_LEVEL_SGIS        = 0x813C;
const uint GL_TEXTURE_MAX_LEVEL_SGIS         = 0x813D;
}

version (GL_SGIS_multisample) { } else {
const uint GL_MULTISAMPLE_SGIS               = 0x809D;
const uint GL_SAMPLE_ALPHA_TO_MASK_SGIS      = 0x809E;
const uint GL_SAMPLE_ALPHA_TO_ONE_SGIS       = 0x809F;
const uint GL_SAMPLE_MASK_SGIS               = 0x80A0;
const uint GL_1PASS_SGIS                     = 0x80A1;
const uint GL_2PASS_0_SGIS                   = 0x80A2;
const uint GL_2PASS_1_SGIS                   = 0x80A3;
const uint GL_4PASS_0_SGIS                   = 0x80A4;
const uint GL_4PASS_1_SGIS                   = 0x80A5;
const uint GL_4PASS_2_SGIS                   = 0x80A6;
const uint GL_4PASS_3_SGIS                   = 0x80A7;
const uint GL_SAMPLE_BUFFERS_SGIS            = 0x80A8;
const uint GL_SAMPLES_SGIS                   = 0x80A9;
const uint GL_SAMPLE_MASK_VALUE_SGIS         = 0x80AA;
const uint GL_SAMPLE_MASK_INVERT_SGIS        = 0x80AB;
const uint GL_SAMPLE_PATTERN_SGIS            = 0x80AC;
}

version (GL_EXT_rescale_normal) { } else {
const uint GL_RESCALE_NORMAL_EXT             = 0x803A;
}

version (GL_EXT_vertex_array) { } else {
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
}

version (GL_EXT_misc_attribute) { } else {
}

version (GL_SGIS_generate_mipmap) { } else {
const uint GL_GENERATE_MIPMAP_SGIS           = 0x8191;
const uint GL_GENERATE_MIPMAP_HINT_SGIS      = 0x8192;
}

version (GL_SGIX_clipmap) { } else {
const uint GL_LINEAR_CLIPMAP_LINEAR_SGIX     = 0x8170;
const uint GL_TEXTURE_CLIPMAP_CENTER_SGIX    = 0x8171;
const uint GL_TEXTURE_CLIPMAP_FRAME_SGIX     = 0x8172;
const uint GL_TEXTURE_CLIPMAP_OFFSET_SGIX    = 0x8173;
const uint GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8174;
const uint GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX = 0x8175;
const uint GL_TEXTURE_CLIPMAP_DEPTH_SGIX     = 0x8176;
const uint GL_MAX_CLIPMAP_DEPTH_SGIX         = 0x8177;
const uint GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX = 0x8178;
const uint GL_NEAREST_CLIPMAP_NEAREST_SGIX   = 0x844D;
const uint GL_NEAREST_CLIPMAP_LINEAR_SGIX    = 0x844E;
const uint GL_LINEAR_CLIPMAP_NEAREST_SGIX    = 0x844F;
}

version (GL_SGIX_shadow) { } else {
const uint GL_TEXTURE_COMPARE_SGIX           = 0x819A;
const uint GL_TEXTURE_COMPARE_OPERATOR_SGIX  = 0x819B;
const uint GL_TEXTURE_LEQUAL_R_SGIX          = 0x819C;
const uint GL_TEXTURE_GEQUAL_R_SGIX          = 0x819D;
}

version (GL_SGIS_texture_edge_clamp) { } else {
const uint GL_CLAMP_TO_EDGE_SGIS             = 0x812F;
}

version (GL_EXT_blend_minmax) { } else {
const uint GL_FUNC_ADD_EXT                   = 0x8006;
const uint GL_MIN_EXT                        = 0x8007;
const uint GL_MAX_EXT                        = 0x8008;
const uint GL_BLEND_EQUATION_EXT             = 0x8009;
}

version (GL_EXT_blend_subtract) { } else {
const uint GL_FUNC_SUBTRACT_EXT              = 0x800A;
const uint GL_FUNC_REVERSE_SUBTRACT_EXT      = 0x800B;
}

version (GL_EXT_blend_logic_op) { } else {
}

version (GL_SGIX_interlace) { } else {
const uint GL_INTERLACE_SGIX                 = 0x8094;
}

version (GL_SGIX_pixel_tiles) { } else {
const uint GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX = 0x813E;
const uint GL_PIXEL_TILE_CACHE_INCREMENT_SGIX = 0x813F;
const uint GL_PIXEL_TILE_WIDTH_SGIX          = 0x8140;
const uint GL_PIXEL_TILE_HEIGHT_SGIX         = 0x8141;
const uint GL_PIXEL_TILE_GRID_WIDTH_SGIX     = 0x8142;
const uint GL_PIXEL_TILE_GRID_HEIGHT_SGIX    = 0x8143;
const uint GL_PIXEL_TILE_GRID_DEPTH_SGIX     = 0x8144;
const uint GL_PIXEL_TILE_CACHE_SIZE_SGIX     = 0x8145;
}

version (GL_SGIS_texture_select) { } else {
const uint GL_DUAL_ALPHA4_SGIS               = 0x8110;
const uint GL_DUAL_ALPHA8_SGIS               = 0x8111;
const uint GL_DUAL_ALPHA12_SGIS              = 0x8112;
const uint GL_DUAL_ALPHA16_SGIS              = 0x8113;
const uint GL_DUAL_LUMINANCE4_SGIS           = 0x8114;
const uint GL_DUAL_LUMINANCE8_SGIS           = 0x8115;
const uint GL_DUAL_LUMINANCE12_SGIS          = 0x8116;
const uint GL_DUAL_LUMINANCE16_SGIS          = 0x8117;
const uint GL_DUAL_INTENSITY4_SGIS           = 0x8118;
const uint GL_DUAL_INTENSITY8_SGIS           = 0x8119;
const uint GL_DUAL_INTENSITY12_SGIS          = 0x811A;
const uint GL_DUAL_INTENSITY16_SGIS          = 0x811B;
const uint GL_DUAL_LUMINANCE_ALPHA4_SGIS     = 0x811C;
const uint GL_DUAL_LUMINANCE_ALPHA8_SGIS     = 0x811D;
const uint GL_QUAD_ALPHA4_SGIS               = 0x811E;
const uint GL_QUAD_ALPHA8_SGIS               = 0x811F;
const uint GL_QUAD_LUMINANCE4_SGIS           = 0x8120;
const uint GL_QUAD_LUMINANCE8_SGIS           = 0x8121;
const uint GL_QUAD_INTENSITY4_SGIS           = 0x8122;
const uint GL_QUAD_INTENSITY8_SGIS           = 0x8123;
const uint GL_DUAL_TEXTURE_SELECT_SGIS       = 0x8124;
const uint GL_QUAD_TEXTURE_SELECT_SGIS       = 0x8125;
}

version (GL_SGIX_sprite) { } else {
const uint GL_SPRITE_SGIX                    = 0x8148;
const uint GL_SPRITE_MODE_SGIX               = 0x8149;
const uint GL_SPRITE_AXIS_SGIX               = 0x814A;
const uint GL_SPRITE_TRANSLATION_SGIX        = 0x814B;
const uint GL_SPRITE_AXIAL_SGIX              = 0x814C;
const uint GL_SPRITE_OBJECT_ALIGNED_SGIX     = 0x814D;
const uint GL_SPRITE_EYE_ALIGNED_SGIX        = 0x814E;
}

version (GL_SGIX_texture_multi_buffer) { } else {
const uint GL_TEXTURE_MULTI_BUFFER_HINT_SGIX = 0x812E;
}

version (GL_EXT_point_parameters) { } else {
const uint GL_POINT_SIZE_MIN_EXT             = 0x8126;
const uint GL_POINT_SIZE_MAX_EXT             = 0x8127;
const uint GL_POINT_FADE_THRESHOLD_SIZE_EXT  = 0x8128;
const uint GL_DISTANCE_ATTENUATION_EXT       = 0x8129;
}

version (GL_SGIS_point_parameters) { } else {
const uint GL_POINT_SIZE_MIN_SGIS            = 0x8126;
const uint GL_POINT_SIZE_MAX_SGIS            = 0x8127;
const uint GL_POINT_FADE_THRESHOLD_SIZE_SGIS = 0x8128;
const uint GL_DISTANCE_ATTENUATION_SGIS      = 0x8129;
}

version (GL_SGIX_instruments) { } else {
const uint GL_INSTRUMENT_BUFFER_POINTER_SGIX = 0x8180;
const uint GL_INSTRUMENT_MEASUREMENTS_SGIX   = 0x8181;
}

version (GL_SGIX_texture_scale_bias) { } else {
const uint GL_POST_TEXTURE_FILTER_BIAS_SGIX  = 0x8179;
const uint GL_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817A;
const uint GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817B;
const uint GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817C;
}

version (GL_SGIX_framezoom) { } else {
const uint GL_FRAMEZOOM_SGIX                 = 0x818B;
const uint GL_FRAMEZOOM_FACTOR_SGIX          = 0x818C;
const uint GL_MAX_FRAMEZOOM_FACTOR_SGIX      = 0x818D;
}

version (GL_SGIX_tag_sample_buffer) { } else {
}

version (GL_FfdMaskSGIX) { } else {
const uint GL_TEXTURE_DEFORMATION_BIT_SGIX   = 0x00000001;
const uint GL_GEOMETRY_DEFORMATION_BIT_SGIX  = 0x00000002;
}

version (GL_SGIX_polynomial_ffd) { } else {
const uint GL_GEOMETRY_DEFORMATION_SGIX      = 0x8194;
const uint GL_TEXTURE_DEFORMATION_SGIX       = 0x8195;
const uint GL_DEFORMATIONS_MASK_SGIX         = 0x8196;
const uint GL_MAX_DEFORMATION_ORDER_SGIX     = 0x8197;
}

version (GL_SGIX_reference_plane) { } else {
const uint GL_REFERENCE_PLANE_SGIX           = 0x817D;
const uint GL_REFERENCE_PLANE_EQUATION_SGIX  = 0x817E;
}

version (GL_SGIX_flush_raster) { } else {
}

version (GL_SGIX_depth_texture) { } else {
const uint GL_DEPTH_COMPONENT16_SGIX         = 0x81A5;
const uint GL_DEPTH_COMPONENT24_SGIX         = 0x81A6;
const uint GL_DEPTH_COMPONENT32_SGIX         = 0x81A7;
}

version (GL_SGIS_fog_function) { } else {
const uint GL_FOG_FUNC_SGIS                  = 0x812A;
const uint GL_FOG_FUNC_POINTS_SGIS           = 0x812B;
const uint GL_MAX_FOG_FUNC_POINTS_SGIS       = 0x812C;
}

version (GL_SGIX_fog_offset) { } else {
const uint GL_FOG_OFFSET_SGIX                = 0x8198;
const uint GL_FOG_OFFSET_VALUE_SGIX          = 0x8199;
}

version (GL_HP_image_transform) { } else {
const uint GL_IMAGE_SCALE_X_HP               = 0x8155;
const uint GL_IMAGE_SCALE_Y_HP               = 0x8156;
const uint GL_IMAGE_TRANSLATE_X_HP           = 0x8157;
const uint GL_IMAGE_TRANSLATE_Y_HP           = 0x8158;
const uint GL_IMAGE_ROTATE_ANGLE_HP          = 0x8159;
const uint GL_IMAGE_ROTATE_ORIGIN_X_HP       = 0x815A;
const uint GL_IMAGE_ROTATE_ORIGIN_Y_HP       = 0x815B;
const uint GL_IMAGE_MAG_FILTER_HP            = 0x815C;
const uint GL_IMAGE_MIN_FILTER_HP            = 0x815D;
const uint GL_IMAGE_CUBIC_WEIGHT_HP          = 0x815E;
const uint GL_CUBIC_HP                       = 0x815F;
const uint GL_AVERAGE_HP                     = 0x8160;
const uint GL_IMAGE_TRANSFORM_2D_HP          = 0x8161;
const uint GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8162;
const uint GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8163;
}

version (GL_HP_convolution_border_modes) { } else {
const uint GL_IGNORE_BORDER_HP               = 0x8150;
const uint GL_CONSTANT_BORDER_HP             = 0x8151;
const uint GL_REPLICATE_BORDER_HP            = 0x8153;
const uint GL_CONVOLUTION_BORDER_COLOR_HP    = 0x8154;
}

version (GL_INGR_palette_buffer) { } else {
}

version (GL_SGIX_texture_add_env) { } else {
const uint GL_TEXTURE_ENV_BIAS_SGIX          = 0x80BE;
}

version (GL_EXT_color_subtable) { } else {
}

version (GL_PGI_vertex_hints) { } else {
const uint GL_VERTEX_DATA_HINT_PGI           = 0x1A22A;
const uint GL_VERTEX_CONSISTENT_HINT_PGI     = 0x1A22B;
const uint GL_MATERIAL_SIDE_HINT_PGI         = 0x1A22C;
const uint GL_MAX_VERTEX_HINT_PGI            = 0x1A22D;
const uint GL_COLOR3_BIT_PGI                 = 0x00010000;
const uint GL_COLOR4_BIT_PGI                 = 0x00020000;
const uint GL_EDGEFLAG_BIT_PGI               = 0x00040000;
const uint GL_INDEX_BIT_PGI                  = 0x00080000;
const uint GL_MAT_AMBIENT_BIT_PGI            = 0x00100000;
const uint GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI = 0x00200000;
const uint GL_MAT_DIFFUSE_BIT_PGI            = 0x00400000;
const uint GL_MAT_EMISSION_BIT_PGI           = 0x00800000;
const uint GL_MAT_COLOR_INDEXES_BIT_PGI      = 0x01000000;
const uint GL_MAT_SHININESS_BIT_PGI          = 0x02000000;
const uint GL_MAT_SPECULAR_BIT_PGI           = 0x04000000;
const uint GL_NORMAL_BIT_PGI                 = 0x08000000;
const uint GL_TEXCOORD1_BIT_PGI              = 0x10000000;
const uint GL_TEXCOORD2_BIT_PGI              = 0x20000000;
const uint GL_TEXCOORD3_BIT_PGI              = 0x40000000;
const uint GL_TEXCOORD4_BIT_PGI              = 0x80000000;
const uint GL_VERTEX23_BIT_PGI               = 0x00000004;
const uint GL_VERTEX4_BIT_PGI                = 0x00000008;
}

version (GL_PGI_misc_hints) { } else {
const uint GL_PREFER_DOUBLEBUFFER_HINT_PGI   = 0x1A1F8;
const uint GL_CONSERVE_MEMORY_HINT_PGI       = 0x1A1FD;
const uint GL_RECLAIM_MEMORY_HINT_PGI        = 0x1A1FE;
const uint GL_NATIVE_GRAPHICS_HANDLE_PGI     = 0x1A202;
const uint GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI = 0x1A203;
const uint GL_NATIVE_GRAPHICS_END_HINT_PGI   = 0x1A204;
const uint GL_ALWAYS_FAST_HINT_PGI           = 0x1A20C;
const uint GL_ALWAYS_SOFT_HINT_PGI           = 0x1A20D;
const uint GL_ALLOW_DRAW_OBJ_HINT_PGI        = 0x1A20E;
const uint GL_ALLOW_DRAW_WIN_HINT_PGI        = 0x1A20F;
const uint GL_ALLOW_DRAW_FRG_HINT_PGI        = 0x1A210;
const uint GL_ALLOW_DRAW_MEM_HINT_PGI        = 0x1A211;
const uint GL_STRICT_DEPTHFUNC_HINT_PGI      = 0x1A216;
const uint GL_STRICT_LIGHTING_HINT_PGI       = 0x1A217;
const uint GL_STRICT_SCISSOR_HINT_PGI        = 0x1A218;
const uint GL_FULL_STIPPLE_HINT_PGI          = 0x1A219;
const uint GL_CLIP_NEAR_HINT_PGI             = 0x1A220;
const uint GL_CLIP_FAR_HINT_PGI              = 0x1A221;
const uint GL_WIDE_LINE_HINT_PGI             = 0x1A222;
const uint GL_BACK_NORMALS_HINT_PGI          = 0x1A223;
}

version (GL_EXT_paletted_texture) { } else {
const uint GL_COLOR_INDEX1_EXT               = 0x80E2;
const uint GL_COLOR_INDEX2_EXT               = 0x80E3;
const uint GL_COLOR_INDEX4_EXT               = 0x80E4;
const uint GL_COLOR_INDEX8_EXT               = 0x80E5;
const uint GL_COLOR_INDEX12_EXT              = 0x80E6;
const uint GL_COLOR_INDEX16_EXT              = 0x80E7;
const uint GL_TEXTURE_INDEX_SIZE_EXT         = 0x80ED;
}

version (GL_EXT_clip_volume_hint) { } else {
const uint GL_CLIP_VOLUME_CLIPPING_HINT_EXT  = 0x80F0;
}

version (GL_SGIX_list_priority) { } else {
const uint GL_LIST_PRIORITY_SGIX             = 0x8182;
}

version (GL_SGIX_ir_instrument1) { } else {
const uint GL_IR_INSTRUMENT1_SGIX            = 0x817F;
}

version (GL_SGIX_calligraphic_fragment) { } else {
const uint GL_CALLIGRAPHIC_FRAGMENT_SGIX     = 0x8183;
}

version (GL_SGIX_texture_lod_bias) { } else {
const uint GL_TEXTURE_LOD_BIAS_S_SGIX        = 0x818E;
const uint GL_TEXTURE_LOD_BIAS_T_SGIX        = 0x818F;
const uint GL_TEXTURE_LOD_BIAS_R_SGIX        = 0x8190;
}

version (GL_SGIX_shadow_ambient) { } else {
const uint GL_SHADOW_AMBIENT_SGIX            = 0x80BF;
}

version (GL_EXT_index_texture) { } else {
}

version (GL_EXT_index_material) { } else {
const uint GL_INDEX_MATERIAL_EXT             = 0x81B8;
const uint GL_INDEX_MATERIAL_PARAMETER_EXT   = 0x81B9;
const uint GL_INDEX_MATERIAL_FACE_EXT        = 0x81BA;
}

version (GL_EXT_index_func) { } else {
const uint GL_INDEX_TEST_EXT                 = 0x81B5;
const uint GL_INDEX_TEST_FUNC_EXT            = 0x81B6;
const uint GL_INDEX_TEST_REF_EXT             = 0x81B7;
}

version (GL_EXT_index_array_formats) { } else {
const uint GL_IUI_V2F_EXT                    = 0x81AD;
const uint GL_IUI_V3F_EXT                    = 0x81AE;
const uint GL_IUI_N3F_V2F_EXT                = 0x81AF;
const uint GL_IUI_N3F_V3F_EXT                = 0x81B0;
const uint GL_T2F_IUI_V2F_EXT                = 0x81B1;
const uint GL_T2F_IUI_V3F_EXT                = 0x81B2;
const uint GL_T2F_IUI_N3F_V2F_EXT            = 0x81B3;
const uint GL_T2F_IUI_N3F_V3F_EXT            = 0x81B4;
}

version (GL_EXT_compiled_vertex_array) { } else {
const uint GL_ARRAY_ELEMENT_LOCK_FIRST_EXT   = 0x81A8;
const uint GL_ARRAY_ELEMENT_LOCK_COUNT_EXT   = 0x81A9;
}

version (GL_EXT_cull_vertex) { } else {
const uint GL_CULL_VERTEX_EXT                = 0x81AA;
const uint GL_CULL_VERTEX_EYE_POSITION_EXT   = 0x81AB;
const uint GL_CULL_VERTEX_OBJECT_POSITION_EXT = 0x81AC;
}

version (GL_SGIX_ycrcb) { } else {
const uint GL_YCRCB_422_SGIX                 = 0x81BB;
const uint GL_YCRCB_444_SGIX                 = 0x81BC;
}

version (GL_SGIX_fragment_lighting) { } else {
const uint GL_FRAGMENT_LIGHTING_SGIX         = 0x8400;
const uint GL_FRAGMENT_COLOR_MATERIAL_SGIX   = 0x8401;
const uint GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = 0x8402;
const uint GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = 0x8403;
const uint GL_MAX_FRAGMENT_LIGHTS_SGIX       = 0x8404;
const uint GL_MAX_ACTIVE_LIGHTS_SGIX         = 0x8405;
const uint GL_CURRENT_RASTER_NORMAL_SGIX     = 0x8406;
const uint GL_LIGHT_ENV_MODE_SGIX            = 0x8407;
const uint GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = 0x8408;
const uint GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = 0x8409;
const uint GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = 0x840A;
const uint GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = 0x840B;
const uint GL_FRAGMENT_LIGHT0_SGIX           = 0x840C;
const uint GL_FRAGMENT_LIGHT1_SGIX           = 0x840D;
const uint GL_FRAGMENT_LIGHT2_SGIX           = 0x840E;
const uint GL_FRAGMENT_LIGHT3_SGIX           = 0x840F;
const uint GL_FRAGMENT_LIGHT4_SGIX           = 0x8410;
const uint GL_FRAGMENT_LIGHT5_SGIX           = 0x8411;
const uint GL_FRAGMENT_LIGHT6_SGIX           = 0x8412;
const uint GL_FRAGMENT_LIGHT7_SGIX           = 0x8413;
}

version (GL_IBM_rasterpos_clip) { } else {
const uint GL_RASTER_POSITION_UNCLIPPED_IBM  = 0x19262;
}

version (GL_HP_texture_lighting) { } else {
const uint GL_TEXTURE_LIGHTING_MODE_HP       = 0x8167;
const uint GL_TEXTURE_POST_SPECULAR_HP       = 0x8168;
const uint GL_TEXTURE_PRE_SPECULAR_HP        = 0x8169;
}

version (GL_EXT_draw_range_elements) { } else {
const uint GL_MAX_ELEMENTS_VERTICES_EXT      = 0x80E8;
const uint GL_MAX_ELEMENTS_INDICES_EXT       = 0x80E9;
}

version (GL_WIN_phong_shading) { } else {
const uint GL_PHONG_WIN                      = 0x80EA;
const uint GL_PHONG_HINT_WIN                 = 0x80EB;
}

version (GL_WIN_specular_fog) { } else {
const uint GL_FOG_SPECULAR_TEXTURE_WIN       = 0x80EC;
}

version (GL_EXT_light_texture) { } else {
const uint GL_FRAGMENT_MATERIAL_EXT          = 0x8349;
const uint GL_FRAGMENT_NORMAL_EXT            = 0x834A;
const uint GL_FRAGMENT_COLOR_EXT             = 0x834C;
const uint GL_ATTENUATION_EXT                = 0x834D;
const uint GL_SHADOW_ATTENUATION_EXT         = 0x834E;
const uint GL_TEXTURE_APPLICATION_MODE_EXT   = 0x834F;
const uint GL_TEXTURE_LIGHT_EXT              = 0x8350;
const uint GL_TEXTURE_MATERIAL_FACE_EXT      = 0x8351;
const uint GL_TEXTURE_MATERIAL_PARAMETER_EXT = 0x8352;
/* reuse GL_FRAGMENT_DEPTH_EXT */
}

version (GL_SGIX_blend_alpha_minmax) { } else {
const uint GL_ALPHA_MIN_SGIX                 = 0x8320;
const uint GL_ALPHA_MAX_SGIX                 = 0x8321;
}

version (GL_SGIX_impact_pixel_texture) { } else {
const uint GL_PIXEL_TEX_GEN_Q_CEILING_SGIX   = 0x8184;
const uint GL_PIXEL_TEX_GEN_Q_ROUND_SGIX     = 0x8185;
const uint GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX     = 0x8186;
const uint GL_PIXEL_TEX_GEN_ALPHA_REPLACE_SGIX = 0x8187;
const uint GL_PIXEL_TEX_GEN_ALPHA_NO_REPLACE_SGIX = 0x8188;
const uint GL_PIXEL_TEX_GEN_ALPHA_LS_SGIX    = 0x8189;
const uint GL_PIXEL_TEX_GEN_ALPHA_MS_SGIX    = 0x818A;
}

version (GL_EXT_bgra) { } else {
const uint GL_BGR_EXT                        = 0x80E0;
const uint GL_BGRA_EXT                       = 0x80E1;
}

version (GL_SGIX_async) { } else {
const uint GL_ASYNC_MARKER_SGIX              = 0x8329;
}

version (GL_SGIX_async_pixel) { } else {
const uint GL_ASYNC_TEX_IMAGE_SGIX           = 0x835C;
const uint GL_ASYNC_DRAW_PIXELS_SGIX         = 0x835D;
const uint GL_ASYNC_READ_PIXELS_SGIX         = 0x835E;
const uint GL_MAX_ASYNC_TEX_IMAGE_SGIX       = 0x835F;
const uint GL_MAX_ASYNC_DRAW_PIXELS_SGIX     = 0x8360;
const uint GL_MAX_ASYNC_READ_PIXELS_SGIX     = 0x8361;
}

version (GL_SGIX_async_histogram) { } else {
const uint GL_ASYNC_HISTOGRAM_SGIX           = 0x832C;
const uint GL_MAX_ASYNC_HISTOGRAM_SGIX       = 0x832D;
}

version (GL_INTEL_texture_scissor) { } else {
}

version (GL_INTEL_parallel_arrays) { } else {
const uint GL_PARALLEL_ARRAYS_INTEL          = 0x83F4;
const uint GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F5;
const uint GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F6;
const uint GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F7;
const uint GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F8;
}

version (GL_HP_occlusion_test) { } else {
const uint GL_OCCLUSION_TEST_HP              = 0x8165;
const uint GL_OCCLUSION_TEST_RESULT_HP       = 0x8166;
}

version (GL_EXT_pixel_transform) { } else {
const uint GL_PIXEL_TRANSFORM_2D_EXT         = 0x8330;
const uint GL_PIXEL_MAG_FILTER_EXT           = 0x8331;
const uint GL_PIXEL_MIN_FILTER_EXT           = 0x8332;
const uint GL_PIXEL_CUBIC_WEIGHT_EXT         = 0x8333;
const uint GL_CUBIC_EXT                      = 0x8334;
const uint GL_AVERAGE_EXT                    = 0x8335;
const uint GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8336;
const uint GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8337;
const uint GL_PIXEL_TRANSFORM_2D_MATRIX_EXT  = 0x8338;
}

version (GL_EXT_pixel_transform_color_table) { } else {
}

version (GL_EXT_shared_texture_palette) { } else {
const uint GL_SHARED_TEXTURE_PALETTE_EXT     = 0x81FB;
}

version (GL_EXT_separate_specular_color) { } else {
const uint GL_LIGHT_MODEL_COLOR_CONTROL_EXT  = 0x81F8;
const uint GL_SINGLE_COLOR_EXT               = 0x81F9;
const uint GL_SEPARATE_SPECULAR_COLOR_EXT    = 0x81FA;
}

version (GL_EXT_secondary_color) { } else {
const uint GL_COLOR_SUM_EXT                  = 0x8458;
const uint GL_CURRENT_SECONDARY_COLOR_EXT    = 0x8459;
const uint GL_SECONDARY_COLOR_ARRAY_SIZE_EXT = 0x845A;
const uint GL_SECONDARY_COLOR_ARRAY_TYPE_EXT = 0x845B;
const uint GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT = 0x845C;
const uint GL_SECONDARY_COLOR_ARRAY_POINTER_EXT = 0x845D;
const uint GL_SECONDARY_COLOR_ARRAY_EXT      = 0x845E;
}

version (GL_EXT_texture_perturb_normal) { } else {
const uint GL_PERTURB_EXT                    = 0x85AE;
const uint GL_TEXTURE_NORMAL_EXT             = 0x85AF;
}

version (GL_EXT_multi_draw_arrays) { } else {
}

version (GL_EXT_fog_coord) { } else {
const uint GL_FOG_COORDINATE_SOURCE_EXT      = 0x8450;
const uint GL_FOG_COORDINATE_EXT             = 0x8451;
const uint GL_FRAGMENT_DEPTH_EXT             = 0x8452;
const uint GL_CURRENT_FOG_COORDINATE_EXT     = 0x8453;
const uint GL_FOG_COORDINATE_ARRAY_TYPE_EXT  = 0x8454;
const uint GL_FOG_COORDINATE_ARRAY_STRIDE_EXT = 0x8455;
const uint GL_FOG_COORDINATE_ARRAY_POINTER_EXT = 0x8456;
const uint GL_FOG_COORDINATE_ARRAY_EXT       = 0x8457;
}

version (GL_REND_screen_coordinates) { } else {
const uint GL_SCREEN_COORDINATES_REND        = 0x8490;
const uint GL_INVERTED_SCREEN_W_REND         = 0x8491;
}

version (GL_EXT_coordinate_frame) { } else {
const uint GL_TANGENT_ARRAY_EXT              = 0x8439;
const uint GL_BINORMAL_ARRAY_EXT             = 0x843A;
const uint GL_CURRENT_TANGENT_EXT            = 0x843B;
const uint GL_CURRENT_BINORMAL_EXT           = 0x843C;
const uint GL_TANGENT_ARRAY_TYPE_EXT         = 0x843E;
const uint GL_TANGENT_ARRAY_STRIDE_EXT       = 0x843F;
const uint GL_BINORMAL_ARRAY_TYPE_EXT        = 0x8440;
const uint GL_BINORMAL_ARRAY_STRIDE_EXT      = 0x8441;
const uint GL_TANGENT_ARRAY_POINTER_EXT      = 0x8442;
const uint GL_BINORMAL_ARRAY_POINTER_EXT     = 0x8443;
const uint GL_MAP1_TANGENT_EXT               = 0x8444;
const uint GL_MAP2_TANGENT_EXT               = 0x8445;
const uint GL_MAP1_BINORMAL_EXT              = 0x8446;
const uint GL_MAP2_BINORMAL_EXT              = 0x8447;
}

version (GL_EXT_texture_env_combine) { } else {
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
}

version (GL_APPLE_specular_vector) { } else {
const uint GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE = 0x85B0;
}

version (GL_APPLE_transform_hint) { } else {
const uint GL_TRANSFORM_HINT_APPLE           = 0x85B1;
}

version (GL_SGIX_fog_scale) { } else {
const uint GL_FOG_SCALE_SGIX                 = 0x81FC;
const uint GL_FOG_SCALE_VALUE_SGIX           = 0x81FD;
}

version (GL_SUNX_constant_data) { } else {
const uint GL_UNPACK_CONSTANT_DATA_SUNX      = 0x81D5;
const uint GL_TEXTURE_CONSTANT_DATA_SUNX     = 0x81D6;
}

version (GL_SUN_global_alpha) { } else {
const uint GL_GLOBAL_ALPHA_SUN               = 0x81D9;
const uint GL_GLOBAL_ALPHA_FACTOR_SUN        = 0x81DA;
}

version (GL_SUN_triangle_list) { } else {
const uint GL_RESTART_SUN                    = 0x0001;
const uint GL_REPLACE_MIDDLE_SUN             = 0x0002;
const uint GL_REPLACE_OLDEST_SUN             = 0x0003;
const uint GL_TRIANGLE_LIST_SUN              = 0x81D7;
const uint GL_REPLACEMENT_CODE_SUN           = 0x81D8;
const uint GL_REPLACEMENT_CODE_ARRAY_SUN     = 0x85C0;
const uint GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN = 0x85C1;
const uint GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN = 0x85C2;
const uint GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN = 0x85C3;
const uint GL_R1UI_V3F_SUN                   = 0x85C4;
const uint GL_R1UI_C4UB_V3F_SUN              = 0x85C5;
const uint GL_R1UI_C3F_V3F_SUN               = 0x85C6;
const uint GL_R1UI_N3F_V3F_SUN               = 0x85C7;
const uint GL_R1UI_C4F_N3F_V3F_SUN           = 0x85C8;
const uint GL_R1UI_T2F_V3F_SUN               = 0x85C9;
const uint GL_R1UI_T2F_N3F_V3F_SUN           = 0x85CA;
const uint GL_R1UI_T2F_C4F_N3F_V3F_SUN       = 0x85CB;
}

version (GL_SUN_vertex) { } else {
}

version (GL_EXT_blend_func_separate) { } else {
const uint GL_BLEND_DST_RGB_EXT              = 0x80C8;
const uint GL_BLEND_SRC_RGB_EXT              = 0x80C9;
const uint GL_BLEND_DST_ALPHA_EXT            = 0x80CA;
const uint GL_BLEND_SRC_ALPHA_EXT            = 0x80CB;
}

version (GL_INGR_color_clamp) { } else {
const uint GL_RED_MIN_CLAMP_INGR             = 0x8560;
const uint GL_GREEN_MIN_CLAMP_INGR           = 0x8561;
const uint GL_BLUE_MIN_CLAMP_INGR            = 0x8562;
const uint GL_ALPHA_MIN_CLAMP_INGR           = 0x8563;
const uint GL_RED_MAX_CLAMP_INGR             = 0x8564;
const uint GL_GREEN_MAX_CLAMP_INGR           = 0x8565;
const uint GL_BLUE_MAX_CLAMP_INGR            = 0x8566;
const uint GL_ALPHA_MAX_CLAMP_INGR           = 0x8567;
}

version (GL_INGR_interlace_read) { } else {
const uint GL_INTERLACE_READ_INGR            = 0x8568;
}

version (GL_EXT_stencil_wrap) { } else {
const uint GL_INCR_WRAP_EXT                  = 0x8507;
const uint GL_DECR_WRAP_EXT                  = 0x8508;
}

version (GL_EXT_422_pixels) { } else {
const uint GL_422_EXT                        = 0x80CC;
const uint GL_422_REV_EXT                    = 0x80CD;
const uint GL_422_AVERAGE_EXT                = 0x80CE;
const uint GL_422_REV_AVERAGE_EXT            = 0x80CF;
}

version (GL_NV_texgen_reflection) { } else {
const uint GL_NORMAL_MAP_NV                  = 0x8511;
const uint GL_REFLECTION_MAP_NV              = 0x8512;
}

version (GL_EXT_texture_cube_map) { } else {
const uint GL_NORMAL_MAP_EXT                 = 0x8511;
const uint GL_REFLECTION_MAP_EXT             = 0x8512;
const uint GL_TEXTURE_CUBE_MAP_EXT           = 0x8513;
const uint GL_TEXTURE_BINDING_CUBE_MAP_EXT   = 0x8514;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT = 0x8515;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT = 0x8516;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT = 0x8517;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT = 0x8518;
const uint GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT = 0x8519;
const uint GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT = 0x851A;
const uint GL_PROXY_TEXTURE_CUBE_MAP_EXT     = 0x851B;
const uint GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT  = 0x851C;
}

version (GL_SUN_convolution_border_modes) { } else {
const uint GL_WRAP_BORDER_SUN                = 0x81D4;
}

version (GL_EXT_texture_env_add) { } else {
}

version (GL_EXT_texture_lod_bias) { } else {
const uint GL_MAX_TEXTURE_LOD_BIAS_EXT       = 0x84FD;
const uint GL_TEXTURE_FILTER_CONTROL_EXT     = 0x8500;
const uint GL_TEXTURE_LOD_BIAS_EXT           = 0x8501;
}

version (GL_EXT_texture_filter_anisotropic) { } else {
const uint GL_TEXTURE_MAX_ANISOTROPY_EXT     = 0x84FE;
const uint GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF;
}

version (GL_EXT_vertex_weighting) { } else {
const uint GL_MODELVIEW0_STACK_DEPTH_EXT     = 0x0BA3; /* GL_MODELVIEW_STACK_DEPTH */
const uint GL_MODELVIEW1_STACK_DEPTH_EXT     = 0x8502;
const uint GL_MODELVIEW0_MATRIX_EXT          = 0x0BA6; /* GL_MODELVIEW_MATRIX */
const uint GL_MODELVIEW1_MATRIX_EXT          = 0x8506;
const uint GL_VERTEX_WEIGHTING_EXT           = 0x8509;
const uint GL_MODELVIEW0_EXT                 = 0x1700; /* GL_MODELVIEW */
const uint GL_MODELVIEW1_EXT                 = 0x850A;
const uint GL_CURRENT_VERTEX_WEIGHT_EXT      = 0x850B;
const uint GL_VERTEX_WEIGHT_ARRAY_EXT        = 0x850C;
const uint GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT   = 0x850D;
const uint GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT   = 0x850E;
const uint GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = 0x850F;
const uint GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT = 0x8510;
}

version (GL_NV_light_max_exponent) { } else {
const uint GL_MAX_SHININESS_NV               = 0x8504;
const uint GL_MAX_SPOT_EXPONENT_NV           = 0x8505;
}

version (GL_NV_vertex_array_range) { } else {
const uint GL_VERTEX_ARRAY_RANGE_NV          = 0x851D;
const uint GL_VERTEX_ARRAY_RANGE_LENGTH_NV   = 0x851E;
const uint GL_VERTEX_ARRAY_RANGE_VALID_NV    = 0x851F;
const uint GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = 0x8520;
const uint GL_VERTEX_ARRAY_RANGE_POINTER_NV  = 0x8521;
}

version (GL_NV_register_combiners) { } else {
const uint GL_REGISTER_COMBINERS_NV          = 0x8522;
const uint GL_VARIABLE_A_NV                  = 0x8523;
const uint GL_VARIABLE_B_NV                  = 0x8524;
const uint GL_VARIABLE_C_NV                  = 0x8525;
const uint GL_VARIABLE_D_NV                  = 0x8526;
const uint GL_VARIABLE_E_NV                  = 0x8527;
const uint GL_VARIABLE_F_NV                  = 0x8528;
const uint GL_VARIABLE_G_NV                  = 0x8529;
const uint GL_CONSTANT_COLOR0_NV             = 0x852A;
const uint GL_CONSTANT_COLOR1_NV             = 0x852B;
const uint GL_PRIMARY_COLOR_NV               = 0x852C;
const uint GL_SECONDARY_COLOR_NV             = 0x852D;
const uint GL_SPARE0_NV                      = 0x852E;
const uint GL_SPARE1_NV                      = 0x852F;
const uint GL_DISCARD_NV                     = 0x8530;
const uint GL_E_TIMES_F_NV                   = 0x8531;
const uint GL_SPARE0_PLUS_SECONDARY_COLOR_NV = 0x8532;
const uint GL_UNSIGNED_IDENTITY_NV           = 0x8536;
const uint GL_UNSIGNED_INVERT_NV             = 0x8537;
const uint GL_EXPAND_NORMAL_NV               = 0x8538;
const uint GL_EXPAND_NEGATE_NV               = 0x8539;
const uint GL_HALF_BIAS_NORMAL_NV            = 0x853A;
const uint GL_HALF_BIAS_NEGATE_NV            = 0x853B;
const uint GL_SIGNED_IDENTITY_NV             = 0x853C;
const uint GL_SIGNED_NEGATE_NV               = 0x853D;
const uint GL_SCALE_BY_TWO_NV                = 0x853E;
const uint GL_SCALE_BY_FOUR_NV               = 0x853F;
const uint GL_SCALE_BY_ONE_HALF_NV           = 0x8540;
const uint GL_BIAS_BY_NEGATIVE_ONE_HALF_NV   = 0x8541;
const uint GL_COMBINER_INPUT_NV              = 0x8542;
const uint GL_COMBINER_MAPPING_NV            = 0x8543;
const uint GL_COMBINER_COMPONENT_USAGE_NV    = 0x8544;
const uint GL_COMBINER_AB_DOT_PRODUCT_NV     = 0x8545;
const uint GL_COMBINER_CD_DOT_PRODUCT_NV     = 0x8546;
const uint GL_COMBINER_MUX_SUM_NV            = 0x8547;
const uint GL_COMBINER_SCALE_NV              = 0x8548;
const uint GL_COMBINER_BIAS_NV               = 0x8549;
const uint GL_COMBINER_AB_OUTPUT_NV          = 0x854A;
const uint GL_COMBINER_CD_OUTPUT_NV          = 0x854B;
const uint GL_COMBINER_SUM_OUTPUT_NV         = 0x854C;
const uint GL_MAX_GENERAL_COMBINERS_NV       = 0x854D;
const uint GL_NUM_GENERAL_COMBINERS_NV       = 0x854E;
const uint GL_COLOR_SUM_CLAMP_NV             = 0x854F;
const uint GL_COMBINER0_NV                   = 0x8550;
const uint GL_COMBINER1_NV                   = 0x8551;
const uint GL_COMBINER2_NV                   = 0x8552;
const uint GL_COMBINER3_NV                   = 0x8553;
const uint GL_COMBINER4_NV                   = 0x8554;
const uint GL_COMBINER5_NV                   = 0x8555;
const uint GL_COMBINER6_NV                   = 0x8556;
const uint GL_COMBINER7_NV                   = 0x8557;
/* reuse GL_TEXTURE0_ARB */
/* reuse GL_TEXTURE1_ARB */
/* reuse GL_ZERO */
/* reuse GL_NONE */
/* reuse GL_FOG */
}

version (GL_NV_fog_distance) { } else {
const uint GL_FOG_DISTANCE_MODE_NV           = 0x855A;
const uint GL_EYE_RADIAL_NV                  = 0x855B;
const uint GL_EYE_PLANE_ABSOLUTE_NV          = 0x855C;
/* reuse GL_EYE_PLANE */
}

version (GL_NV_texgen_emboss) { } else {
const uint GL_EMBOSS_LIGHT_NV                = 0x855D;
const uint GL_EMBOSS_CONSTANT_NV             = 0x855E;
const uint GL_EMBOSS_MAP_NV                  = 0x855F;
}

version (GL_NV_blend_square) { } else {
}

version (GL_NV_texture_env_combine4) { } else {
const uint GL_COMBINE4_NV                    = 0x8503;
const uint GL_SOURCE3_RGB_NV                 = 0x8583;
const uint GL_SOURCE3_ALPHA_NV               = 0x858B;
const uint GL_OPERAND3_RGB_NV                = 0x8593;
const uint GL_OPERAND3_ALPHA_NV              = 0x859B;
}

version (GL_MESA_resize_buffers) { } else {
}

version (GL_MESA_window_pos) { } else {
}

version (GL_EXT_texture_compression_s3tc) { } else {
const uint GL_COMPRESSED_RGB_S3TC_DXT1_EXT   = 0x83F0;
const uint GL_COMPRESSED_RGBA_S3TC_DXT1_EXT  = 0x83F1;
const uint GL_COMPRESSED_RGBA_S3TC_DXT3_EXT  = 0x83F2;
const uint GL_COMPRESSED_RGBA_S3TC_DXT5_EXT  = 0x83F3;
}

version (GL_IBM_cull_vertex) { } else {
const uint GL_CULL_VERTEX_IBM                = 103050;
}

version (GL_IBM_multimode_draw_arrays) { } else {
}

version (GL_IBM_vertex_array_lists) { } else {
const uint GL_VERTEX_ARRAY_LIST_IBM          = 103070;
const uint GL_NORMAL_ARRAY_LIST_IBM          = 103071;
const uint GL_COLOR_ARRAY_LIST_IBM           = 103072;
const uint GL_INDEX_ARRAY_LIST_IBM           = 103073;
const uint GL_TEXTURE_COORD_ARRAY_LIST_IBM   = 103074;
const uint GL_EDGE_FLAG_ARRAY_LIST_IBM       = 103075;
const uint GL_FOG_COORDINATE_ARRAY_LIST_IBM  = 103076;
const uint GL_SECONDARY_COLOR_ARRAY_LIST_IBM = 103077;
const uint GL_VERTEX_ARRAY_LIST_STRIDE_IBM   = 103080;
const uint GL_NORMAL_ARRAY_LIST_STRIDE_IBM   = 103081;
const uint GL_COLOR_ARRAY_LIST_STRIDE_IBM    = 103082;
const uint GL_INDEX_ARRAY_LIST_STRIDE_IBM    = 103083;
const uint GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM = 103084;
const uint GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM = 103085;
const uint GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM = 103086;
const uint GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM = 103087;
}

version (GL_SGIX_subsample) { } else {
const uint GL_PACK_SUBSAMPLE_RATE_SGIX       = 0x85A0;
const uint GL_UNPACK_SUBSAMPLE_RATE_SGIX     = 0x85A1;
const uint GL_PIXEL_SUBSAMPLE_4444_SGIX      = 0x85A2;
const uint GL_PIXEL_SUBSAMPLE_2424_SGIX      = 0x85A3;
const uint GL_PIXEL_SUBSAMPLE_4242_SGIX      = 0x85A4;
}

version (GL_SGIX_ycrcb_subsample) { } else {
}

version (GL_SGIX_ycrcba) { } else {
const uint GL_YCRCB_SGIX                     = 0x8318;
const uint GL_YCRCBA_SGIX                    = 0x8319;
}

version (GL_SGI_depth_pass_instrument) { } else {
const uint GL_DEPTH_PASS_INSTRUMENT_SGIX     = 0x8310;
const uint GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX = 0x8311;
const uint GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX = 0x8312;
}

version (GL_3DFX_texture_compression_FXT1) { } else {
const uint GL_COMPRESSED_RGB_FXT1_3DFX       = 0x86B0;
const uint GL_COMPRESSED_RGBA_FXT1_3DFX      = 0x86B1;
}

version (GL_3DFX_multisample) { } else {
const uint GL_MULTISAMPLE_3DFX               = 0x86B2;
const uint GL_SAMPLE_BUFFERS_3DFX            = 0x86B3;
const uint GL_SAMPLES_3DFX                   = 0x86B4;
const uint GL_MULTISAMPLE_BIT_3DFX           = 0x20000000;
}

version (GL_3DFX_tbuffer) { } else {
}

version (GL_EXT_multisample) { } else {
const uint GL_MULTISAMPLE_EXT                = 0x809D;
const uint GL_SAMPLE_ALPHA_TO_MASK_EXT       = 0x809E;
const uint GL_SAMPLE_ALPHA_TO_ONE_EXT        = 0x809F;
const uint GL_SAMPLE_MASK_EXT                = 0x80A0;
const uint GL_1PASS_EXT                      = 0x80A1;
const uint GL_2PASS_0_EXT                    = 0x80A2;
const uint GL_2PASS_1_EXT                    = 0x80A3;
const uint GL_4PASS_0_EXT                    = 0x80A4;
const uint GL_4PASS_1_EXT                    = 0x80A5;
const uint GL_4PASS_2_EXT                    = 0x80A6;
const uint GL_4PASS_3_EXT                    = 0x80A7;
const uint GL_SAMPLE_BUFFERS_EXT             = 0x80A8;
const uint GL_SAMPLES_EXT                    = 0x80A9;
const uint GL_SAMPLE_MASK_VALUE_EXT          = 0x80AA;
const uint GL_SAMPLE_MASK_INVERT_EXT         = 0x80AB;
const uint GL_SAMPLE_PATTERN_EXT             = 0x80AC;
const uint GL_MULTISAMPLE_BIT_EXT            = 0x20000000;
}

version (GL_SGIX_vertex_preclip) { } else {
const uint GL_VERTEX_PRECLIP_SGIX            = 0x83EE;
const uint GL_VERTEX_PRECLIP_HINT_SGIX       = 0x83EF;
}

version (GL_SGIX_convolution_accuracy) { } else {
const uint GL_CONVOLUTION_HINT_SGIX          = 0x8316;
}

version (GL_SGIX_resample) { } else {
const uint GL_PACK_RESAMPLE_SGIX             = 0x842C;
const uint GL_UNPACK_RESAMPLE_SGIX           = 0x842D;
const uint GL_RESAMPLE_REPLICATE_SGIX        = 0x842E;
const uint GL_RESAMPLE_ZERO_FILL_SGIX        = 0x842F;
const uint GL_RESAMPLE_DECIMATE_SGIX         = 0x8430;
}

version (GL_SGIS_point_line_texgen) { } else {
const uint GL_EYE_DISTANCE_TO_POINT_SGIS     = 0x81F0;
const uint GL_OBJECT_DISTANCE_TO_POINT_SGIS  = 0x81F1;
const uint GL_EYE_DISTANCE_TO_LINE_SGIS      = 0x81F2;
const uint GL_OBJECT_DISTANCE_TO_LINE_SGIS   = 0x81F3;
const uint GL_EYE_POINT_SGIS                 = 0x81F4;
const uint GL_OBJECT_POINT_SGIS              = 0x81F5;
const uint GL_EYE_LINE_SGIS                  = 0x81F6;
const uint GL_OBJECT_LINE_SGIS               = 0x81F7;
}

version (GL_SGIS_texture_color_mask) { } else {
const uint GL_TEXTURE_COLOR_WRITEMASK_SGIS   = 0x81EF;
}

version (GL_EXT_texture_env_dot3) { } else {
const uint GL_DOT3_RGB_EXT                   = 0x8740;
const uint GL_DOT3_RGBA_EXT                  = 0x8741;
}

version (GL_ATI_texture_mirror_once) { } else {
const uint GL_MIRROR_CLAMP_ATI               = 0x8742;
const uint GL_MIRROR_CLAMP_TO_EDGE_ATI       = 0x8743;
}

version (GL_NV_fence) { } else {
const uint GL_ALL_COMPLETED_NV               = 0x84F2;
const uint GL_FENCE_STATUS_NV                = 0x84F3;
const uint GL_FENCE_CONDITION_NV             = 0x84F4;
}

version (GL_IBM_texture_mirrored_repeat) { } else {
const uint GL_MIRRORED_REPEAT_IBM            = 0x8370;
}

version (GL_NV_evaluators) { } else {
const uint GL_EVAL_2D_NV                     = 0x86C0;
const uint GL_EVAL_TRIANGULAR_2D_NV          = 0x86C1;
const uint GL_MAP_TESSELLATION_NV            = 0x86C2;
const uint GL_MAP_ATTRIB_U_ORDER_NV          = 0x86C3;
const uint GL_MAP_ATTRIB_V_ORDER_NV          = 0x86C4;
const uint GL_EVAL_FRACTIONAL_TESSELLATION_NV = 0x86C5;
const uint GL_EVAL_VERTEX_ATTRIB0_NV         = 0x86C6;
const uint GL_EVAL_VERTEX_ATTRIB1_NV         = 0x86C7;
const uint GL_EVAL_VERTEX_ATTRIB2_NV         = 0x86C8;
const uint GL_EVAL_VERTEX_ATTRIB3_NV         = 0x86C9;
const uint GL_EVAL_VERTEX_ATTRIB4_NV         = 0x86CA;
const uint GL_EVAL_VERTEX_ATTRIB5_NV         = 0x86CB;
const uint GL_EVAL_VERTEX_ATTRIB6_NV         = 0x86CC;
const uint GL_EVAL_VERTEX_ATTRIB7_NV         = 0x86CD;
const uint GL_EVAL_VERTEX_ATTRIB8_NV         = 0x86CE;
const uint GL_EVAL_VERTEX_ATTRIB9_NV         = 0x86CF;
const uint GL_EVAL_VERTEX_ATTRIB10_NV        = 0x86D0;
const uint GL_EVAL_VERTEX_ATTRIB11_NV        = 0x86D1;
const uint GL_EVAL_VERTEX_ATTRIB12_NV        = 0x86D2;
const uint GL_EVAL_VERTEX_ATTRIB13_NV        = 0x86D3;
const uint GL_EVAL_VERTEX_ATTRIB14_NV        = 0x86D4;
const uint GL_EVAL_VERTEX_ATTRIB15_NV        = 0x86D5;
const uint GL_MAX_MAP_TESSELLATION_NV        = 0x86D6;
const uint GL_MAX_RATIONAL_EVAL_ORDER_NV     = 0x86D7;
}

version (GL_NV_packed_depth_stencil) { } else {
const uint GL_DEPTH_STENCIL_NV               = 0x84F9;
const uint GL_UNSIGNED_INT_24_8_NV           = 0x84FA;
}

version (GL_NV_register_combiners2) { } else {
const uint GL_PER_STAGE_CONSTANTS_NV         = 0x8535;
}

version (GL_NV_texture_compression_vtc) { } else {
}

version (GL_NV_texture_rectangle) { } else {
const uint GL_TEXTURE_RECTANGLE_NV           = 0x84F5;
const uint GL_TEXTURE_BINDING_RECTANGLE_NV   = 0x84F6;
const uint GL_PROXY_TEXTURE_RECTANGLE_NV     = 0x84F7;
const uint GL_MAX_RECTANGLE_TEXTURE_SIZE_NV  = 0x84F8;
}

version (GL_NV_texture_shader) { } else {
const uint GL_OFFSET_TEXTURE_RECTANGLE_NV    = 0x864C;
const uint GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV = 0x864D;
const uint GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV = 0x864E;
const uint GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV = 0x86D9;
const uint GL_UNSIGNED_INT_S8_S8_8_8_NV      = 0x86DA;
const uint GL_UNSIGNED_INT_8_8_S8_S8_REV_NV  = 0x86DB;
const uint GL_DSDT_MAG_INTENSITY_NV          = 0x86DC;
const uint GL_SHADER_CONSISTENT_NV           = 0x86DD;
const uint GL_TEXTURE_SHADER_NV              = 0x86DE;
const uint GL_SHADER_OPERATION_NV            = 0x86DF;
const uint GL_CULL_MODES_NV                  = 0x86E0;
const uint GL_OFFSET_TEXTURE_MATRIX_NV       = 0x86E1;
const uint GL_OFFSET_TEXTURE_SCALE_NV        = 0x86E2;
const uint GL_OFFSET_TEXTURE_BIAS_NV         = 0x86E3;
const uint GL_OFFSET_TEXTURE_2D_MATRIX_NV    = GL_OFFSET_TEXTURE_MATRIX_NV;
const uint GL_OFFSET_TEXTURE_2D_SCALE_NV     = GL_OFFSET_TEXTURE_SCALE_NV;
const uint GL_OFFSET_TEXTURE_2D_BIAS_NV      = GL_OFFSET_TEXTURE_BIAS_NV;
const uint GL_PREVIOUS_TEXTURE_INPUT_NV      = 0x86E4;
const uint GL_CONST_EYE_NV                   = 0x86E5;
const uint GL_PASS_THROUGH_NV                = 0x86E6;
const uint GL_CULL_FRAGMENT_NV               = 0x86E7;
const uint GL_OFFSET_TEXTURE_2D_NV           = 0x86E8;
const uint GL_DEPENDENT_AR_TEXTURE_2D_NV     = 0x86E9;
const uint GL_DEPENDENT_GB_TEXTURE_2D_NV     = 0x86EA;
const uint GL_DOT_PRODUCT_NV                 = 0x86EC;
const uint GL_DOT_PRODUCT_DEPTH_REPLACE_NV   = 0x86ED;
const uint GL_DOT_PRODUCT_TEXTURE_2D_NV      = 0x86EE;
const uint GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV = 0x86F0;
const uint GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV = 0x86F1;
const uint GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV = 0x86F2;
const uint GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV = 0x86F3;
const uint GL_HILO_NV                        = 0x86F4;
const uint GL_DSDT_NV                        = 0x86F5;
const uint GL_DSDT_MAG_NV                    = 0x86F6;
const uint GL_DSDT_MAG_VIB_NV                = 0x86F7;
const uint GL_HILO16_NV                      = 0x86F8;
const uint GL_SIGNED_HILO_NV                 = 0x86F9;
const uint GL_SIGNED_HILO16_NV               = 0x86FA;
const uint GL_SIGNED_RGBA_NV                 = 0x86FB;
const uint GL_SIGNED_RGBA8_NV                = 0x86FC;
const uint GL_SIGNED_RGB_NV                  = 0x86FE;
const uint GL_SIGNED_RGB8_NV                 = 0x86FF;
const uint GL_SIGNED_LUMINANCE_NV            = 0x8701;
const uint GL_SIGNED_LUMINANCE8_NV           = 0x8702;
const uint GL_SIGNED_LUMINANCE_ALPHA_NV      = 0x8703;
const uint GL_SIGNED_LUMINANCE8_ALPHA8_NV    = 0x8704;
const uint GL_SIGNED_ALPHA_NV                = 0x8705;
const uint GL_SIGNED_ALPHA8_NV               = 0x8706;
const uint GL_SIGNED_INTENSITY_NV            = 0x8707;
const uint GL_SIGNED_INTENSITY8_NV           = 0x8708;
const uint GL_DSDT8_NV                       = 0x8709;
const uint GL_DSDT8_MAG8_NV                  = 0x870A;
const uint GL_DSDT8_MAG8_INTENSITY8_NV       = 0x870B;
const uint GL_SIGNED_RGB_UNSIGNED_ALPHA_NV   = 0x870C;
const uint GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV = 0x870D;
const uint GL_HI_SCALE_NV                    = 0x870E;
const uint GL_LO_SCALE_NV                    = 0x870F;
const uint GL_DS_SCALE_NV                    = 0x8710;
const uint GL_DT_SCALE_NV                    = 0x8711;
const uint GL_MAGNITUDE_SCALE_NV             = 0x8712;
const uint GL_VIBRANCE_SCALE_NV              = 0x8713;
const uint GL_HI_BIAS_NV                     = 0x8714;
const uint GL_LO_BIAS_NV                     = 0x8715;
const uint GL_DS_BIAS_NV                     = 0x8716;
const uint GL_DT_BIAS_NV                     = 0x8717;
const uint GL_MAGNITUDE_BIAS_NV              = 0x8718;
const uint GL_VIBRANCE_BIAS_NV               = 0x8719;
const uint GL_TEXTURE_BORDER_VALUES_NV       = 0x871A;
const uint GL_TEXTURE_HI_SIZE_NV             = 0x871B;
const uint GL_TEXTURE_LO_SIZE_NV             = 0x871C;
const uint GL_TEXTURE_DS_SIZE_NV             = 0x871D;
const uint GL_TEXTURE_DT_SIZE_NV             = 0x871E;
const uint GL_TEXTURE_MAG_SIZE_NV            = 0x871F;
}

version (GL_NV_texture_shader2) { } else {
const uint GL_DOT_PRODUCT_TEXTURE_3D_NV      = 0x86EF;
}

version (GL_NV_vertex_array_range2) { } else {
const uint GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV = 0x8533;
}

version (GL_NV_vertex_program) { } else {
const uint GL_VERTEX_PROGRAM_NV              = 0x8620;
const uint GL_VERTEX_STATE_PROGRAM_NV        = 0x8621;
const uint GL_ATTRIB_ARRAY_SIZE_NV           = 0x8623;
const uint GL_ATTRIB_ARRAY_STRIDE_NV         = 0x8624;
const uint GL_ATTRIB_ARRAY_TYPE_NV           = 0x8625;
const uint GL_CURRENT_ATTRIB_NV              = 0x8626;
const uint GL_PROGRAM_LENGTH_NV              = 0x8627;
const uint GL_PROGRAM_STRING_NV              = 0x8628;
const uint GL_MODELVIEW_PROJECTION_NV        = 0x8629;
const uint GL_IDENTITY_NV                    = 0x862A;
const uint GL_INVERSE_NV                     = 0x862B;
const uint GL_TRANSPOSE_NV                   = 0x862C;
const uint GL_INVERSE_TRANSPOSE_NV           = 0x862D;
const uint GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV = 0x862E;
const uint GL_MAX_TRACK_MATRICES_NV          = 0x862F;
const uint GL_MATRIX0_NV                     = 0x8630;
const uint GL_MATRIX1_NV                     = 0x8631;
const uint GL_MATRIX2_NV                     = 0x8632;
const uint GL_MATRIX3_NV                     = 0x8633;
const uint GL_MATRIX4_NV                     = 0x8634;
const uint GL_MATRIX5_NV                     = 0x8635;
const uint GL_MATRIX6_NV                     = 0x8636;
const uint GL_MATRIX7_NV                     = 0x8637;
const uint GL_CURRENT_MATRIX_STACK_DEPTH_NV  = 0x8640;
const uint GL_CURRENT_MATRIX_NV              = 0x8641;
const uint GL_VERTEX_PROGRAM_POINT_SIZE_NV   = 0x8642;
const uint GL_VERTEX_PROGRAM_TWO_SIDE_NV     = 0x8643;
const uint GL_PROGRAM_PARAMETER_NV           = 0x8644;
const uint GL_ATTRIB_ARRAY_POINTER_NV        = 0x8645;
const uint GL_PROGRAM_TARGET_NV              = 0x8646;
const uint GL_PROGRAM_RESIDENT_NV            = 0x8647;
const uint GL_TRACK_MATRIX_NV                = 0x8648;
const uint GL_TRACK_MATRIX_TRANSFORM_NV      = 0x8649;
const uint GL_VERTEX_PROGRAM_BINDING_NV      = 0x864A;
const uint GL_PROGRAM_ERROR_POSITION_NV      = 0x864B;
const uint GL_VERTEX_ATTRIB_ARRAY0_NV        = 0x8650;
const uint GL_VERTEX_ATTRIB_ARRAY1_NV        = 0x8651;
const uint GL_VERTEX_ATTRIB_ARRAY2_NV        = 0x8652;
const uint GL_VERTEX_ATTRIB_ARRAY3_NV        = 0x8653;
const uint GL_VERTEX_ATTRIB_ARRAY4_NV        = 0x8654;
const uint GL_VERTEX_ATTRIB_ARRAY5_NV        = 0x8655;
const uint GL_VERTEX_ATTRIB_ARRAY6_NV        = 0x8656;
const uint GL_VERTEX_ATTRIB_ARRAY7_NV        = 0x8657;
const uint GL_VERTEX_ATTRIB_ARRAY8_NV        = 0x8658;
const uint GL_VERTEX_ATTRIB_ARRAY9_NV        = 0x8659;
const uint GL_VERTEX_ATTRIB_ARRAY10_NV       = 0x865A;
const uint GL_VERTEX_ATTRIB_ARRAY11_NV       = 0x865B;
const uint GL_VERTEX_ATTRIB_ARRAY12_NV       = 0x865C;
const uint GL_VERTEX_ATTRIB_ARRAY13_NV       = 0x865D;
const uint GL_VERTEX_ATTRIB_ARRAY14_NV       = 0x865E;
const uint GL_VERTEX_ATTRIB_ARRAY15_NV       = 0x865F;
const uint GL_MAP1_VERTEX_ATTRIB0_4_NV       = 0x8660;
const uint GL_MAP1_VERTEX_ATTRIB1_4_NV       = 0x8661;
const uint GL_MAP1_VERTEX_ATTRIB2_4_NV       = 0x8662;
const uint GL_MAP1_VERTEX_ATTRIB3_4_NV       = 0x8663;
const uint GL_MAP1_VERTEX_ATTRIB4_4_NV       = 0x8664;
const uint GL_MAP1_VERTEX_ATTRIB5_4_NV       = 0x8665;
const uint GL_MAP1_VERTEX_ATTRIB6_4_NV       = 0x8666;
const uint GL_MAP1_VERTEX_ATTRIB7_4_NV       = 0x8667;
const uint GL_MAP1_VERTEX_ATTRIB8_4_NV       = 0x8668;
const uint GL_MAP1_VERTEX_ATTRIB9_4_NV       = 0x8669;
const uint GL_MAP1_VERTEX_ATTRIB10_4_NV      = 0x866A;
const uint GL_MAP1_VERTEX_ATTRIB11_4_NV      = 0x866B;
const uint GL_MAP1_VERTEX_ATTRIB12_4_NV      = 0x866C;
const uint GL_MAP1_VERTEX_ATTRIB13_4_NV      = 0x866D;
const uint GL_MAP1_VERTEX_ATTRIB14_4_NV      = 0x866E;
const uint GL_MAP1_VERTEX_ATTRIB15_4_NV      = 0x866F;
const uint GL_MAP2_VERTEX_ATTRIB0_4_NV       = 0x8670;
const uint GL_MAP2_VERTEX_ATTRIB1_4_NV       = 0x8671;
const uint GL_MAP2_VERTEX_ATTRIB2_4_NV       = 0x8672;
const uint GL_MAP2_VERTEX_ATTRIB3_4_NV       = 0x8673;
const uint GL_MAP2_VERTEX_ATTRIB4_4_NV       = 0x8674;
const uint GL_MAP2_VERTEX_ATTRIB5_4_NV       = 0x8675;
const uint GL_MAP2_VERTEX_ATTRIB6_4_NV       = 0x8676;
const uint GL_MAP2_VERTEX_ATTRIB7_4_NV       = 0x8677;
const uint GL_MAP2_VERTEX_ATTRIB8_4_NV       = 0x8678;
const uint GL_MAP2_VERTEX_ATTRIB9_4_NV       = 0x8679;
const uint GL_MAP2_VERTEX_ATTRIB10_4_NV      = 0x867A;
const uint GL_MAP2_VERTEX_ATTRIB11_4_NV      = 0x867B;
const uint GL_MAP2_VERTEX_ATTRIB12_4_NV      = 0x867C;
const uint GL_MAP2_VERTEX_ATTRIB13_4_NV      = 0x867D;
const uint GL_MAP2_VERTEX_ATTRIB14_4_NV      = 0x867E;
const uint GL_MAP2_VERTEX_ATTRIB15_4_NV      = 0x867F;
}

version (GL_SGIX_texture_coordinate_clamp) { } else {
const uint GL_TEXTURE_MAX_CLAMP_S_SGIX       = 0x8369;
const uint GL_TEXTURE_MAX_CLAMP_T_SGIX       = 0x836A;
const uint GL_TEXTURE_MAX_CLAMP_R_SGIX       = 0x836B;
}

version (GL_SGIX_scalebias_hint) { } else {
const uint GL_SCALEBIAS_HINT_SGIX            = 0x8322;
}

version (GL_OML_interlace) { } else {
const uint GL_INTERLACE_OML                  = 0x8980;
const uint GL_INTERLACE_READ_OML             = 0x8981;
}

version (GL_OML_subsample) { } else {
const uint GL_FORMAT_SUBSAMPLE_24_24_OML     = 0x8982;
const uint GL_FORMAT_SUBSAMPLE_244_244_OML   = 0x8983;
}

version (GL_OML_resample) { } else {
const uint GL_PACK_RESAMPLE_OML              = 0x8984;
const uint GL_UNPACK_RESAMPLE_OML            = 0x8985;
const uint GL_RESAMPLE_REPLICATE_OML         = 0x8986;
const uint GL_RESAMPLE_ZERO_FILL_OML         = 0x8987;
const uint GL_RESAMPLE_AVERAGE_OML           = 0x8988;
const uint GL_RESAMPLE_DECIMATE_OML          = 0x8989;
}

version (GL_NV_copy_depth_to_color) { } else {
const uint GL_DEPTH_STENCIL_TO_RGBA_NV       = 0x886E;
const uint GL_DEPTH_STENCIL_TO_BGRA_NV       = 0x886F;
}

version (GL_ATI_envmap_bumpmap) { } else {
const uint GL_BUMP_ROT_MATRIX_ATI            = 0x8775;
const uint GL_BUMP_ROT_MATRIX_SIZE_ATI       = 0x8776;
const uint GL_BUMP_NUM_TEX_UNITS_ATI         = 0x8777;
const uint GL_BUMP_TEX_UNITS_ATI             = 0x8778;
const uint GL_DUDV_ATI                       = 0x8779;
const uint GL_DU8DV8_ATI                     = 0x877A;
const uint GL_BUMP_ENVMAP_ATI                = 0x877B;
const uint GL_BUMP_TARGET_ATI                = 0x877C;
}

version (GL_ATI_fragment_shader) { } else {
const uint GL_FRAGMENT_SHADER_ATI            = 0x8920;
const uint GL_REG_0_ATI                      = 0x8921;
const uint GL_REG_1_ATI                      = 0x8922;
const uint GL_REG_2_ATI                      = 0x8923;
const uint GL_REG_3_ATI                      = 0x8924;
const uint GL_REG_4_ATI                      = 0x8925;
const uint GL_REG_5_ATI                      = 0x8926;
const uint GL_REG_6_ATI                      = 0x8927;
const uint GL_REG_7_ATI                      = 0x8928;
const uint GL_REG_8_ATI                      = 0x8929;
const uint GL_REG_9_ATI                      = 0x892A;
const uint GL_REG_10_ATI                     = 0x892B;
const uint GL_REG_11_ATI                     = 0x892C;
const uint GL_REG_12_ATI                     = 0x892D;
const uint GL_REG_13_ATI                     = 0x892E;
const uint GL_REG_14_ATI                     = 0x892F;
const uint GL_REG_15_ATI                     = 0x8930;
const uint GL_REG_16_ATI                     = 0x8931;
const uint GL_REG_17_ATI                     = 0x8932;
const uint GL_REG_18_ATI                     = 0x8933;
const uint GL_REG_19_ATI                     = 0x8934;
const uint GL_REG_20_ATI                     = 0x8935;
const uint GL_REG_21_ATI                     = 0x8936;
const uint GL_REG_22_ATI                     = 0x8937;
const uint GL_REG_23_ATI                     = 0x8938;
const uint GL_REG_24_ATI                     = 0x8939;
const uint GL_REG_25_ATI                     = 0x893A;
const uint GL_REG_26_ATI                     = 0x893B;
const uint GL_REG_27_ATI                     = 0x893C;
const uint GL_REG_28_ATI                     = 0x893D;
const uint GL_REG_29_ATI                     = 0x893E;
const uint GL_REG_30_ATI                     = 0x893F;
const uint GL_REG_31_ATI                     = 0x8940;
const uint GL_CON_0_ATI                      = 0x8941;
const uint GL_CON_1_ATI                      = 0x8942;
const uint GL_CON_2_ATI                      = 0x8943;
const uint GL_CON_3_ATI                      = 0x8944;
const uint GL_CON_4_ATI                      = 0x8945;
const uint GL_CON_5_ATI                      = 0x8946;
const uint GL_CON_6_ATI                      = 0x8947;
const uint GL_CON_7_ATI                      = 0x8948;
const uint GL_CON_8_ATI                      = 0x8949;
const uint GL_CON_9_ATI                      = 0x894A;
const uint GL_CON_10_ATI                     = 0x894B;
const uint GL_CON_11_ATI                     = 0x894C;
const uint GL_CON_12_ATI                     = 0x894D;
const uint GL_CON_13_ATI                     = 0x894E;
const uint GL_CON_14_ATI                     = 0x894F;
const uint GL_CON_15_ATI                     = 0x8950;
const uint GL_CON_16_ATI                     = 0x8951;
const uint GL_CON_17_ATI                     = 0x8952;
const uint GL_CON_18_ATI                     = 0x8953;
const uint GL_CON_19_ATI                     = 0x8954;
const uint GL_CON_20_ATI                     = 0x8955;
const uint GL_CON_21_ATI                     = 0x8956;
const uint GL_CON_22_ATI                     = 0x8957;
const uint GL_CON_23_ATI                     = 0x8958;
const uint GL_CON_24_ATI                     = 0x8959;
const uint GL_CON_25_ATI                     = 0x895A;
const uint GL_CON_26_ATI                     = 0x895B;
const uint GL_CON_27_ATI                     = 0x895C;
const uint GL_CON_28_ATI                     = 0x895D;
const uint GL_CON_29_ATI                     = 0x895E;
const uint GL_CON_30_ATI                     = 0x895F;
const uint GL_CON_31_ATI                     = 0x8960;
const uint GL_MOV_ATI                        = 0x8961;
const uint GL_ADD_ATI                        = 0x8963;
const uint GL_MUL_ATI                        = 0x8964;
const uint GL_SUB_ATI                        = 0x8965;
const uint GL_DOT3_ATI                       = 0x8966;
const uint GL_DOT4_ATI                       = 0x8967;
const uint GL_MAD_ATI                        = 0x8968;
const uint GL_LERP_ATI                       = 0x8969;
const uint GL_CND_ATI                        = 0x896A;
const uint GL_CND0_ATI                       = 0x896B;
const uint GL_DOT2_ADD_ATI                   = 0x896C;
const uint GL_SECONDARY_INTERPOLATOR_ATI     = 0x896D;
const uint GL_NUM_FRAGMENT_REGISTERS_ATI     = 0x896E;
const uint GL_NUM_FRAGMENT_CONSTANTS_ATI     = 0x896F;
const uint GL_NUM_PASSES_ATI                 = 0x8970;
const uint GL_NUM_INSTRUCTIONS_PER_PASS_ATI  = 0x8971;
const uint GL_NUM_INSTRUCTIONS_TOTAL_ATI     = 0x8972;
const uint GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973;
const uint GL_NUM_LOOPBACK_COMPONENTS_ATI    = 0x8974;
const uint GL_COLOR_ALPHA_PAIRING_ATI        = 0x8975;
const uint GL_SWIZZLE_STR_ATI                = 0x8976;
const uint GL_SWIZZLE_STQ_ATI                = 0x8977;
const uint GL_SWIZZLE_STR_DR_ATI             = 0x8978;
const uint GL_SWIZZLE_STQ_DQ_ATI             = 0x8979;
const uint GL_SWIZZLE_STRQ_ATI               = 0x897A;
const uint GL_SWIZZLE_STRQ_DQ_ATI            = 0x897B;
const uint GL_RED_BIT_ATI                    = 0x00000001;
const uint GL_GREEN_BIT_ATI                  = 0x00000002;
const uint GL_BLUE_BIT_ATI                   = 0x00000004;
const uint GL_2X_BIT_ATI                     = 0x00000001;
const uint GL_4X_BIT_ATI                     = 0x00000002;
const uint GL_8X_BIT_ATI                     = 0x00000004;
const uint GL_HALF_BIT_ATI                   = 0x00000008;
const uint GL_QUARTER_BIT_ATI                = 0x00000010;
const uint GL_EIGHTH_BIT_ATI                 = 0x00000020;
const uint GL_SATURATE_BIT_ATI               = 0x00000040;
const uint GL_COMP_BIT_ATI                   = 0x00000002;
const uint GL_NEGATE_BIT_ATI                 = 0x00000004;
const uint GL_BIAS_BIT_ATI                   = 0x00000008;
}

version (GL_ATI_pn_triangles) { } else {
const uint GL_PN_TRIANGLES_ATI               = 0x87F0;
const uint GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F1;
const uint GL_PN_TRIANGLES_POINT_MODE_ATI    = 0x87F2;
const uint GL_PN_TRIANGLES_NORMAL_MODE_ATI   = 0x87F3;
const uint GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F4;
const uint GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 0x87F5;
const uint GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 0x87F6;
const uint GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 0x87F7;
const uint GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87F8;
}

version (GL_ATI_vertex_array_object) { } else {
const uint GL_STATIC_ATI                     = 0x8760;
const uint GL_DYNAMIC_ATI                    = 0x8761;
const uint GL_PRESERVE_ATI                   = 0x8762;
const uint GL_DISCARD_ATI                    = 0x8763;
const uint GL_OBJECT_BUFFER_SIZE_ATI         = 0x8764;
const uint GL_OBJECT_BUFFER_USAGE_ATI        = 0x8765;
const uint GL_ARRAY_OBJECT_BUFFER_ATI        = 0x8766;
const uint GL_ARRAY_OBJECT_OFFSET_ATI        = 0x8767;
}

version (GL_EXT_vertex_shader) { } else {
const uint GL_VERTEX_SHADER_EXT              = 0x8780;
const uint GL_VERTEX_SHADER_BINDING_EXT      = 0x8781;
const uint GL_OP_INDEX_EXT                   = 0x8782;
const uint GL_OP_NEGATE_EXT                  = 0x8783;
const uint GL_OP_DOT3_EXT                    = 0x8784;
const uint GL_OP_DOT4_EXT                    = 0x8785;
const uint GL_OP_MUL_EXT                     = 0x8786;
const uint GL_OP_ADD_EXT                     = 0x8787;
const uint GL_OP_MADD_EXT                    = 0x8788;
const uint GL_OP_FRAC_EXT                    = 0x8789;
const uint GL_OP_MAX_EXT                     = 0x878A;
const uint GL_OP_MIN_EXT                     = 0x878B;
const uint GL_OP_SET_GE_EXT                  = 0x878C;
const uint GL_OP_SET_LT_EXT                  = 0x878D;
const uint GL_OP_CLAMP_EXT                   = 0x878E;
const uint GL_OP_FLOOR_EXT                   = 0x878F;
const uint GL_OP_ROUND_EXT                   = 0x8790;
const uint GL_OP_EXP_BASE_2_EXT              = 0x8791;
const uint GL_OP_LOG_BASE_2_EXT              = 0x8792;
const uint GL_OP_POWER_EXT                   = 0x8793;
const uint GL_OP_RECIP_EXT                   = 0x8794;
const uint GL_OP_RECIP_SQRT_EXT              = 0x8795;
const uint GL_OP_SUB_EXT                     = 0x8796;
const uint GL_OP_CROSS_PRODUCT_EXT           = 0x8797;
const uint GL_OP_MULTIPLY_MATRIX_EXT         = 0x8798;
const uint GL_OP_MOV_EXT                     = 0x8799;
const uint GL_OUTPUT_VERTEX_EXT              = 0x879A;
const uint GL_OUTPUT_COLOR0_EXT              = 0x879B;
const uint GL_OUTPUT_COLOR1_EXT              = 0x879C;
const uint GL_OUTPUT_TEXTURE_COORD0_EXT      = 0x879D;
const uint GL_OUTPUT_TEXTURE_COORD1_EXT      = 0x879E;
const uint GL_OUTPUT_TEXTURE_COORD2_EXT      = 0x879F;
const uint GL_OUTPUT_TEXTURE_COORD3_EXT      = 0x87A0;
const uint GL_OUTPUT_TEXTURE_COORD4_EXT      = 0x87A1;
const uint GL_OUTPUT_TEXTURE_COORD5_EXT      = 0x87A2;
const uint GL_OUTPUT_TEXTURE_COORD6_EXT      = 0x87A3;
const uint GL_OUTPUT_TEXTURE_COORD7_EXT      = 0x87A4;
const uint GL_OUTPUT_TEXTURE_COORD8_EXT      = 0x87A5;
const uint GL_OUTPUT_TEXTURE_COORD9_EXT      = 0x87A6;
const uint GL_OUTPUT_TEXTURE_COORD10_EXT     = 0x87A7;
const uint GL_OUTPUT_TEXTURE_COORD11_EXT     = 0x87A8;
const uint GL_OUTPUT_TEXTURE_COORD12_EXT     = 0x87A9;
const uint GL_OUTPUT_TEXTURE_COORD13_EXT     = 0x87AA;
const uint GL_OUTPUT_TEXTURE_COORD14_EXT     = 0x87AB;
const uint GL_OUTPUT_TEXTURE_COORD15_EXT     = 0x87AC;
const uint GL_OUTPUT_TEXTURE_COORD16_EXT     = 0x87AD;
const uint GL_OUTPUT_TEXTURE_COORD17_EXT     = 0x87AE;
const uint GL_OUTPUT_TEXTURE_COORD18_EXT     = 0x87AF;
const uint GL_OUTPUT_TEXTURE_COORD19_EXT     = 0x87B0;
const uint GL_OUTPUT_TEXTURE_COORD20_EXT     = 0x87B1;
const uint GL_OUTPUT_TEXTURE_COORD21_EXT     = 0x87B2;
const uint GL_OUTPUT_TEXTURE_COORD22_EXT     = 0x87B3;
const uint GL_OUTPUT_TEXTURE_COORD23_EXT     = 0x87B4;
const uint GL_OUTPUT_TEXTURE_COORD24_EXT     = 0x87B5;
const uint GL_OUTPUT_TEXTURE_COORD25_EXT     = 0x87B6;
const uint GL_OUTPUT_TEXTURE_COORD26_EXT     = 0x87B7;
const uint GL_OUTPUT_TEXTURE_COORD27_EXT     = 0x87B8;
const uint GL_OUTPUT_TEXTURE_COORD28_EXT     = 0x87B9;
const uint GL_OUTPUT_TEXTURE_COORD29_EXT     = 0x87BA;
const uint GL_OUTPUT_TEXTURE_COORD30_EXT     = 0x87BB;
const uint GL_OUTPUT_TEXTURE_COORD31_EXT     = 0x87BC;
const uint GL_OUTPUT_FOG_EXT                 = 0x87BD;
const uint GL_SCALAR_EXT                     = 0x87BE;
const uint GL_VECTOR_EXT                     = 0x87BF;
const uint GL_MATRIX_EXT                     = 0x87C0;
const uint GL_VARIANT_EXT                    = 0x87C1;
const uint GL_INVARIANT_EXT                  = 0x87C2;
const uint GL_LOCAL_CONSTANT_EXT             = 0x87C3;
const uint GL_LOCAL_EXT                      = 0x87C4;
const uint GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87C5;
const uint GL_MAX_VERTEX_SHADER_VARIANTS_EXT = 0x87C6;
const uint GL_MAX_VERTEX_SHADER_INVARIANTS_EXT = 0x87C7;
const uint GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87C8;
const uint GL_MAX_VERTEX_SHADER_LOCALS_EXT   = 0x87C9;
const uint GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CA;
const uint GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = 0x87CB;
const uint GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87CC;
const uint GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT = 0x87CD;
const uint GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = 0x87CE;
const uint GL_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CF;
const uint GL_VERTEX_SHADER_VARIANTS_EXT     = 0x87D0;
const uint GL_VERTEX_SHADER_INVARIANTS_EXT   = 0x87D1;
const uint GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87D2;
const uint GL_VERTEX_SHADER_LOCALS_EXT       = 0x87D3;
const uint GL_VERTEX_SHADER_OPTIMIZED_EXT    = 0x87D4;
const uint GL_X_EXT                          = 0x87D5;
const uint GL_Y_EXT                          = 0x87D6;
const uint GL_Z_EXT                          = 0x87D7;
const uint GL_W_EXT                          = 0x87D8;
const uint GL_NEGATIVE_X_EXT                 = 0x87D9;
const uint GL_NEGATIVE_Y_EXT                 = 0x87DA;
const uint GL_NEGATIVE_Z_EXT                 = 0x87DB;
const uint GL_NEGATIVE_W_EXT                 = 0x87DC;
const uint GL_ZERO_EXT                       = 0x87DD;
const uint GL_ONE_EXT                        = 0x87DE;
const uint GL_NEGATIVE_ONE_EXT               = 0x87DF;
const uint GL_NORMALIZED_RANGE_EXT           = 0x87E0;
const uint GL_FULL_RANGE_EXT                 = 0x87E1;
const uint GL_CURRENT_VERTEX_EXT             = 0x87E2;
const uint GL_MVP_MATRIX_EXT                 = 0x87E3;
const uint GL_VARIANT_VALUE_EXT              = 0x87E4;
const uint GL_VARIANT_DATATYPE_EXT           = 0x87E5;
const uint GL_VARIANT_ARRAY_STRIDE_EXT       = 0x87E6;
const uint GL_VARIANT_ARRAY_TYPE_EXT         = 0x87E7;
const uint GL_VARIANT_ARRAY_EXT              = 0x87E8;
const uint GL_VARIANT_ARRAY_POINTER_EXT      = 0x87E9;
const uint GL_INVARIANT_VALUE_EXT            = 0x87EA;
const uint GL_INVARIANT_DATATYPE_EXT         = 0x87EB;
const uint GL_LOCAL_CONSTANT_VALUE_EXT       = 0x87EC;
const uint GL_LOCAL_CONSTANT_DATATYPE_EXT    = 0x87ED;
}

version (GL_ATI_vertex_streams) { } else {
const uint GL_MAX_VERTEX_STREAMS_ATI         = 0x876B;
const uint GL_VERTEX_STREAM0_ATI             = 0x876C;
const uint GL_VERTEX_STREAM1_ATI             = 0x876D;
const uint GL_VERTEX_STREAM2_ATI             = 0x876E;
const uint GL_VERTEX_STREAM3_ATI             = 0x876F;
const uint GL_VERTEX_STREAM4_ATI             = 0x8770;
const uint GL_VERTEX_STREAM5_ATI             = 0x8771;
const uint GL_VERTEX_STREAM6_ATI             = 0x8772;
const uint GL_VERTEX_STREAM7_ATI             = 0x8773;
const uint GL_VERTEX_SOURCE_ATI              = 0x8774;
}

version (GL_ATI_element_array) { } else {
const uint GL_ELEMENT_ARRAY_ATI              = 0x8768;
const uint GL_ELEMENT_ARRAY_TYPE_ATI         = 0x8769;
const uint GL_ELEMENT_ARRAY_POINTER_ATI      = 0x876A;
}

version (GL_SUN_mesh_array) { } else {
const uint GL_QUAD_MESH_SUN                  = 0x8614;
const uint GL_TRIANGLE_MESH_SUN              = 0x8615;
}

version (GL_SUN_slice_accum) { } else {
const uint GL_SLICE_ACCUM_SUN                = 0x85CC;
}

version (GL_NV_multisample_filter_hint) { } else {
const uint GL_MULTISAMPLE_FILTER_HINT_NV     = 0x8534;
}

version (GL_NV_depth_clamp) { } else {
const uint GL_DEPTH_CLAMP_NV                 = 0x864F;
}

version (GL_NV_occlusion_query) { } else {
const uint GL_PIXEL_COUNTER_BITS_NV          = 0x8864;
const uint GL_CURRENT_OCCLUSION_QUERY_ID_NV  = 0x8865;
const uint GL_PIXEL_COUNT_NV                 = 0x8866;
const uint GL_PIXEL_COUNT_AVAILABLE_NV       = 0x8867;
}

version (GL_NV_point_sprite) { } else {
const uint GL_POINT_SPRITE_NV                = 0x8861;
const uint GL_COORD_REPLACE_NV               = 0x8862;
const uint GL_POINT_SPRITE_R_MODE_NV         = 0x8863;
}

version (GL_NV_texture_shader3) { } else {
const uint GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV = 0x8850;
const uint GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV = 0x8851;
const uint GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8852;
const uint GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV = 0x8853;
const uint GL_OFFSET_HILO_TEXTURE_2D_NV      = 0x8854;
const uint GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV = 0x8855;
const uint GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV = 0x8856;
const uint GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV = 0x8857;
const uint GL_DEPENDENT_HILO_TEXTURE_2D_NV   = 0x8858;
const uint GL_DEPENDENT_RGB_TEXTURE_3D_NV    = 0x8859;
const uint GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV = 0x885A;
const uint GL_DOT_PRODUCT_PASS_THROUGH_NV    = 0x885B;
const uint GL_DOT_PRODUCT_TEXTURE_1D_NV      = 0x885C;
const uint GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV = 0x885D;
const uint GL_HILO8_NV                       = 0x885E;
const uint GL_SIGNED_HILO8_NV                = 0x885F;
const uint GL_FORCE_BLUE_TO_ONE_NV           = 0x8860;
}

version (GL_NV_vertex_program1_1) { } else {
}

version (GL_EXT_shadow_funcs) { } else {
}

version (GL_EXT_stencil_two_side) { } else {
const uint GL_STENCIL_TEST_TWO_SIDE_EXT      = 0x8910;
const uint GL_ACTIVE_STENCIL_FACE_EXT        = 0x8911;
}

version (GL_ATI_text_fragment_shader) { } else {
const uint GL_TEXT_FRAGMENT_SHADER_ATI       = 0x8200;
}

version (GL_APPLE_client_storage) { } else {
const uint GL_UNPACK_CLIENT_STORAGE_APPLE    = 0x85B2;
}

version (GL_APPLE_element_array) { } else {
const uint GL_ELEMENT_ARRAY_APPLE            = 0x8768;
const uint GL_ELEMENT_ARRAY_TYPE_APPLE       = 0x8769;
const uint GL_ELEMENT_ARRAY_POINTER_APPLE    = 0x876A;
}

version (GL_APPLE_fence) { } else {
const uint GL_DRAW_PIXELS_APPLE              = 0x8A0A;
const uint GL_FENCE_APPLE                    = 0x8A0B;
}

version (GL_APPLE_vertex_array_object) { } else {
const uint GL_VERTEX_ARRAY_BINDING_APPLE     = 0x85B5;
}

version (GL_APPLE_vertex_array_range) { } else {
const uint GL_VERTEX_ARRAY_RANGE_APPLE       = 0x851D;
const uint GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE = 0x851E;
const uint GL_VERTEX_ARRAY_STORAGE_HINT_APPLE = 0x851F;
const uint GL_VERTEX_ARRAY_RANGE_POINTER_APPLE = 0x8521;
const uint GL_STORAGE_CACHED_APPLE           = 0x85BE;
const uint GL_STORAGE_SHARED_APPLE           = 0x85BF;
}

version (GL_APPLE_ycbcr_422) { } else {
const uint GL_YCBCR_422_APPLE                = 0x85B9;
const uint GL_UNSIGNED_SHORT_8_8_APPLE       = 0x85BA;
const uint GL_UNSIGNED_SHORT_8_8_REV_APPLE   = 0x85BB;
}

version (GL_S3_s3tc) { } else {
const uint GL_RGB_S3TC                       = 0x83A0;
const uint GL_RGB4_S3TC                      = 0x83A1;
const uint GL_RGBA_S3TC                      = 0x83A2;
const uint GL_RGBA4_S3TC                     = 0x83A3;
}

version (GL_ATI_draw_buffers) { } else {
const uint GL_MAX_DRAW_BUFFERS_ATI           = 0x8824;
const uint GL_DRAW_BUFFER0_ATI               = 0x8825;
const uint GL_DRAW_BUFFER1_ATI               = 0x8826;
const uint GL_DRAW_BUFFER2_ATI               = 0x8827;
const uint GL_DRAW_BUFFER3_ATI               = 0x8828;
const uint GL_DRAW_BUFFER4_ATI               = 0x8829;
const uint GL_DRAW_BUFFER5_ATI               = 0x882A;
const uint GL_DRAW_BUFFER6_ATI               = 0x882B;
const uint GL_DRAW_BUFFER7_ATI               = 0x882C;
const uint GL_DRAW_BUFFER8_ATI               = 0x882D;
const uint GL_DRAW_BUFFER9_ATI               = 0x882E;
const uint GL_DRAW_BUFFER10_ATI              = 0x882F;
const uint GL_DRAW_BUFFER11_ATI              = 0x8830;
const uint GL_DRAW_BUFFER12_ATI              = 0x8831;
const uint GL_DRAW_BUFFER13_ATI              = 0x8832;
const uint GL_DRAW_BUFFER14_ATI              = 0x8833;
const uint GL_DRAW_BUFFER15_ATI              = 0x8834;
}

version (GL_ATI_texture_env_combine3) { } else {
const uint GL_MODULATE_ADD_ATI               = 0x8744;
const uint GL_MODULATE_SIGNED_ADD_ATI        = 0x8745;
const uint GL_MODULATE_SUBTRACT_ATI          = 0x8746;
}

version (GL_ATI_texture_float) { } else {
const uint GL_RGBA_FLOAT32_ATI               = 0x8814;
const uint GL_RGB_FLOAT32_ATI                = 0x8815;
const uint GL_ALPHA_FLOAT32_ATI              = 0x8816;
const uint GL_INTENSITY_FLOAT32_ATI          = 0x8817;
const uint GL_LUMINANCE_FLOAT32_ATI          = 0x8818;
const uint GL_LUMINANCE_ALPHA_FLOAT32_ATI    = 0x8819;
const uint GL_RGBA_FLOAT16_ATI               = 0x881A;
const uint GL_RGB_FLOAT16_ATI                = 0x881B;
const uint GL_ALPHA_FLOAT16_ATI              = 0x881C;
const uint GL_INTENSITY_FLOAT16_ATI          = 0x881D;
const uint GL_LUMINANCE_FLOAT16_ATI          = 0x881E;
const uint GL_LUMINANCE_ALPHA_FLOAT16_ATI    = 0x881F;
}

version (GL_NV_float_buffer) { } else {
const uint GL_FLOAT_R_NV                     = 0x8880;
const uint GL_FLOAT_RG_NV                    = 0x8881;
const uint GL_FLOAT_RGB_NV                   = 0x8882;
const uint GL_FLOAT_RGBA_NV                  = 0x8883;
const uint GL_FLOAT_R16_NV                   = 0x8884;
const uint GL_FLOAT_R32_NV                   = 0x8885;
const uint GL_FLOAT_RG16_NV                  = 0x8886;
const uint GL_FLOAT_RG32_NV                  = 0x8887;
const uint GL_FLOAT_RGB16_NV                 = 0x8888;
const uint GL_FLOAT_RGB32_NV                 = 0x8889;
const uint GL_FLOAT_RGBA16_NV                = 0x888A;
const uint GL_FLOAT_RGBA32_NV                = 0x888B;
const uint GL_TEXTURE_FLOAT_COMPONENTS_NV    = 0x888C;
const uint GL_FLOAT_CLEAR_COLOR_VALUE_NV     = 0x888D;
const uint GL_FLOAT_RGBA_MODE_NV             = 0x888E;
}

version (GL_NV_fragment_program) { } else {
const uint GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = 0x8868;
const uint GL_FRAGMENT_PROGRAM_NV            = 0x8870;
const uint GL_MAX_TEXTURE_COORDS_NV          = 0x8871;
const uint GL_MAX_TEXTURE_IMAGE_UNITS_NV     = 0x8872;
const uint GL_FRAGMENT_PROGRAM_BINDING_NV    = 0x8873;
const uint GL_PROGRAM_ERROR_STRING_NV        = 0x8874;
}

version (GL_NV_half_float) { } else {
const uint GL_HALF_FLOAT_NV                  = 0x140B;
}

version (GL_NV_pixel_data_range) { } else {
const uint GL_WRITE_PIXEL_DATA_RANGE_NV      = 0x8878;
const uint GL_READ_PIXEL_DATA_RANGE_NV       = 0x8879;
const uint GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV = 0x887A;
const uint GL_READ_PIXEL_DATA_RANGE_LENGTH_NV = 0x887B;
const uint GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV = 0x887C;
const uint GL_READ_PIXEL_DATA_RANGE_POINTER_NV = 0x887D;
}

version (GL_NV_primitive_restart) { } else {
const uint GL_PRIMITIVE_RESTART_NV           = 0x8558;
const uint GL_PRIMITIVE_RESTART_INDEX_NV     = 0x8559;
}

version (GL_NV_texture_expand_normal) { } else {
const uint GL_TEXTURE_UNSIGNED_REMAP_MODE_NV = 0x888F;
}

version (GL_NV_vertex_program2) { } else {
}

version (GL_ATI_map_object_buffer) { } else {
}

version (GL_ATI_separate_stencil) { } else {
const uint GL_STENCIL_BACK_FUNC_ATI          = 0x8800;
const uint GL_STENCIL_BACK_FAIL_ATI          = 0x8801;
const uint GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 0x8802;
const uint GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI = 0x8803;
}

version (GL_ATI_vertex_attrib_array_object) { } else {
}

version (GL_EXT_depth_bounds_test) { } else {
const uint GL_DEPTH_BOUNDS_TEST_EXT          = 0x8890;
const uint GL_DEPTH_BOUNDS_EXT               = 0x8891;
}

version (GL_EXT_texture_mirror_clamp) { } else {
const uint GL_MIRROR_CLAMP_EXT               = 0x8742;
const uint GL_MIRROR_CLAMP_TO_EDGE_EXT       = 0x8743;
const uint GL_MIRROR_CLAMP_TO_BORDER_EXT     = 0x8912;
}

version (GL_EXT_blend_equation_separate) { } else {
const uint GL_BLEND_EQUATION_RGB_EXT         = GL_BLEND_EQUATION;
const uint GL_BLEND_EQUATION_ALPHA_EXT       = 0x883D;
}

version (GL_MESA_pack_invert) { } else {
const uint GL_PACK_INVERT_MESA               = 0x8758;
}

version (GL_MESA_ycbcr_texture) { } else {
const uint GL_UNSIGNED_SHORT_8_8_MESA        = 0x85BA;
const uint GL_UNSIGNED_SHORT_8_8_REV_MESA    = 0x85BB;
const uint GL_YCBCR_MESA                     = 0x8757;
}


/*************************************************************/

version (GL_VERSION_1_5) { } else {
/* GL types for handling large vertex buffer objects */
alias ptrdiff_t GLintptr;
alias ptrdiff_t GLsizeiptr;
}

version (GL_ARB_vertex_buffer_object) { } else {
/* GL types for handling large vertex buffer objects */
alias ptrdiff_t GLintptrARB;
alias ptrdiff_t GLsizeiptrARB;
}

version (GL_ARB_shader_objects) { } else {
/* GL types for handling shader object handles and characters */
alias byte GLcharARB;		/* native character */
alias uint GLhandleARB;	/* shader object handle */
}

version (GL_NV_half_float) { } else {
/* GL type for representing NVIDIA "half" floating point type in host memory */
alias ushort GLhalfNV;
}

version (GL_VERSION_1_2) { } else {
version = GL_VERSION_1_2;
version (GL_GLEXT_PROTOTYPES) {
void glBlendColor (GLclampf, GLclampf, GLclampf, GLclampf);
void glBlendEquation (GLenum);
void glDrawRangeElements (GLenum, GLuint, GLuint, GLsizei, GLenum, GLvoid *);
void glColorTable (GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *);
void glColorTableParameterfv (GLenum, GLenum, GLfloat *);
void glColorTableParameteriv (GLenum, GLenum, GLint *);
void glCopyColorTable (GLenum, GLenum, GLint, GLint, GLsizei);
void glGetColorTable (GLenum, GLenum, GLenum, GLvoid *);
void glGetColorTableParameterfv (GLenum, GLenum, GLfloat *);
void glGetColorTableParameteriv (GLenum, GLenum, GLint *);
void glColorSubTable (GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
void glCopyColorSubTable (GLenum, GLsizei, GLint, GLint, GLsizei);
void glConvolutionFilter1D (GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *);
void glConvolutionFilter2D (GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
void glConvolutionParameterf (GLenum, GLenum, GLfloat);
void glConvolutionParameterfv (GLenum, GLenum, GLfloat *);
void glConvolutionParameteri (GLenum, GLenum, GLint);
void glConvolutionParameteriv (GLenum, GLenum, GLint *);
void glCopyConvolutionFilter1D (GLenum, GLenum, GLint, GLint, GLsizei);
void glCopyConvolutionFilter2D (GLenum, GLenum, GLint, GLint, GLsizei, GLsizei);
void glGetConvolutionFilter (GLenum, GLenum, GLenum, GLvoid *);
void glGetConvolutionParameterfv (GLenum, GLenum, GLfloat *);
void glGetConvolutionParameteriv (GLenum, GLenum, GLint *);
void glGetSeparableFilter (GLenum, GLenum, GLenum, GLvoid *, GLvoid *, GLvoid *);
void glSeparableFilter2D (GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *, GLvoid *);
void glGetHistogram (GLenum, GLboolean, GLenum, GLenum, GLvoid *);
void glGetHistogramParameterfv (GLenum, GLenum, GLfloat *);
void glGetHistogramParameteriv (GLenum, GLenum, GLint *);
void glGetMinmax (GLenum, GLboolean, GLenum, GLenum, GLvoid *);
void glGetMinmaxParameterfv (GLenum, GLenum, GLfloat *);
void glGetMinmaxParameteriv (GLenum, GLenum, GLint *);
void glHistogram (GLenum, GLsizei, GLenum, GLboolean);
void glMinmax (GLenum, GLenum, GLboolean);
void glResetHistogram (GLenum);
void glResetMinmax (GLenum);
void glTexImage3D (GLenum, GLint, GLint, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, GLvoid *);
void glTexSubImage3D (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
void glCopyTexSubImage3D (GLenum, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBLENDCOLORPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
alias void (*PFNGLBLENDEQUATIONPROC) (GLenum mode);
alias void (*PFNGLDRAWRANGEELEMENTSPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices);
alias void (*PFNGLCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table);
alias void (*PFNGLCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLCOPYCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias void (*PFNGLGETCOLORTABLEPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
alias void (*PFNGLGETCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data);
alias void (*PFNGLCOPYCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
alias void (*PFNGLCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image);
alias void (*PFNGLCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image);
alias void (*PFNGLCONVOLUTIONPARAMETERFPROC) (GLenum target, GLenum pname, GLfloat params);
alias void (*PFNGLCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLCONVOLUTIONPARAMETERIPROC) (GLenum target, GLenum pname, GLint params);
alias void (*PFNGLCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLCOPYCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias void (*PFNGLCOPYCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
alias void (*PFNGLGETCONVOLUTIONFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *image);
alias void (*PFNGLGETCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETSEPARABLEFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
alias void (*PFNGLSEPARABLEFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column);
alias void (*PFNGLGETHISTOGRAMPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias void (*PFNGLGETHISTOGRAMPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETHISTOGRAMPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETMINMAXPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias void (*PFNGLGETMINMAXPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETMINMAXPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLHISTOGRAMPROC) (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
alias void (*PFNGLMINMAXPROC) (GLenum target, GLenum internalformat, GLboolean sink);
alias void (*PFNGLRESETHISTOGRAMPROC) (GLenum target);
alias void (*PFNGLRESETMINMAXPROC) (GLenum target);
alias void (*PFNGLTEXIMAGE3DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFNGLTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFNGLCOPYTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
}

version (GL_VERSION_1_3) { } else {
version = GL_VERSION_1_3;
version (GL_GLEXT_PROTOTYPES) {
void glActiveTexture (GLenum);
void glClientActiveTexture (GLenum);
void glMultiTexCoord1d (GLenum, GLdouble);
void glMultiTexCoord1dv (GLenum, GLdouble *);
void glMultiTexCoord1f (GLenum, GLfloat);
void glMultiTexCoord1fv (GLenum, GLfloat *);
void glMultiTexCoord1i (GLenum, GLint);
void glMultiTexCoord1iv (GLenum, GLint *);
void glMultiTexCoord1s (GLenum, GLshort);
void glMultiTexCoord1sv (GLenum, GLshort *);
void glMultiTexCoord2d (GLenum, GLdouble, GLdouble);
void glMultiTexCoord2dv (GLenum, GLdouble *);
void glMultiTexCoord2f (GLenum, GLfloat, GLfloat);
void glMultiTexCoord2fv (GLenum, GLfloat *);
void glMultiTexCoord2i (GLenum, GLint, GLint);
void glMultiTexCoord2iv (GLenum, GLint *);
void glMultiTexCoord2s (GLenum, GLshort, GLshort);
void glMultiTexCoord2sv (GLenum, GLshort *);
void glMultiTexCoord3d (GLenum, GLdouble, GLdouble, GLdouble);
void glMultiTexCoord3dv (GLenum, GLdouble *);
void glMultiTexCoord3f (GLenum, GLfloat, GLfloat, GLfloat);
void glMultiTexCoord3fv (GLenum, GLfloat *);
void glMultiTexCoord3i (GLenum, GLint, GLint, GLint);
void glMultiTexCoord3iv (GLenum, GLint *);
void glMultiTexCoord3s (GLenum, GLshort, GLshort, GLshort);
void glMultiTexCoord3sv (GLenum, GLshort *);
void glMultiTexCoord4d (GLenum, GLdouble, GLdouble, GLdouble, GLdouble);
void glMultiTexCoord4dv (GLenum, GLdouble *);
void glMultiTexCoord4f (GLenum, GLfloat, GLfloat, GLfloat, GLfloat);
void glMultiTexCoord4fv (GLenum, GLfloat *);
void glMultiTexCoord4i (GLenum, GLint, GLint, GLint, GLint);
void glMultiTexCoord4iv (GLenum, GLint *);
void glMultiTexCoord4s (GLenum, GLshort, GLshort, GLshort, GLshort);
void glMultiTexCoord4sv (GLenum, GLshort *);
void glLoadTransposeMatrixf (GLfloat *);
void glLoadTransposeMatrixd (GLdouble *);
void glMultTransposeMatrixf (GLfloat *);
void glMultTransposeMatrixd (GLdouble *);
void glSampleCoverage (GLclampf, GLboolean);
void glCompressedTexImage3D (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, GLvoid *);
void glCompressedTexImage2D (GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, GLvoid *);
void glCompressedTexImage1D (GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, GLvoid *);
void glCompressedTexSubImage3D (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *);
void glCompressedTexSubImage2D (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *);
void glCompressedTexSubImage1D (GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, GLvoid *);
void glGetCompressedTexImage (GLenum, GLint, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLACTIVETEXTUREPROC) (GLenum texture);
alias void (*PFNGLCLIENTACTIVETEXTUREPROC) (GLenum texture);
alias void (*PFNGLMULTITEXCOORD1DPROC) (GLenum target, GLdouble s);
alias void (*PFNGLMULTITEXCOORD1DVPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD1FPROC) (GLenum target, GLfloat s);
alias void (*PFNGLMULTITEXCOORD1FVPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD1IPROC) (GLenum target, GLint s);
alias void (*PFNGLMULTITEXCOORD1IVPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD1SPROC) (GLenum target, GLshort s);
alias void (*PFNGLMULTITEXCOORD1SVPROC) (GLenum target, GLshort *v);
alias void (*PFNGLMULTITEXCOORD2DPROC) (GLenum target, GLdouble s, GLdouble t);
alias void (*PFNGLMULTITEXCOORD2DVPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD2FPROC) (GLenum target, GLfloat s, GLfloat t);
alias void (*PFNGLMULTITEXCOORD2FVPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD2IPROC) (GLenum target, GLint s, GLint t);
alias void (*PFNGLMULTITEXCOORD2IVPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD2SPROC) (GLenum target, GLshort s, GLshort t);
alias void (*PFNGLMULTITEXCOORD2SVPROC) (GLenum target, GLshort *v);
alias void (*PFNGLMULTITEXCOORD3DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias void (*PFNGLMULTITEXCOORD3DVPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD3FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias void (*PFNGLMULTITEXCOORD3FVPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD3IPROC) (GLenum target, GLint s, GLint t, GLint r);
alias void (*PFNGLMULTITEXCOORD3IVPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD3SPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
alias void (*PFNGLMULTITEXCOORD3SVPROC) (GLenum target, GLshort *v);
alias void (*PFNGLMULTITEXCOORD4DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias void (*PFNGLMULTITEXCOORD4DVPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD4FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias void (*PFNGLMULTITEXCOORD4FVPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD4IPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias void (*PFNGLMULTITEXCOORD4IVPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD4SPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias void (*PFNGLMULTITEXCOORD4SVPROC) (GLenum target, GLshort *v);
alias void (*PFNGLLOADTRANSPOSEMATRIXFPROC) (GLfloat *m);
alias void (*PFNGLLOADTRANSPOSEMATRIXDPROC) (GLdouble *m);
alias void (*PFNGLMULTTRANSPOSEMATRIXFPROC) (GLfloat *m);
alias void (*PFNGLMULTTRANSPOSEMATRIXDPROC) (GLdouble *m);
alias void (*PFNGLSAMPLECOVERAGEPROC) (GLclampf value, GLboolean invert);
alias void (*PFNGLCOMPRESSEDTEXIMAGE3DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXIMAGE1DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLGETCOMPRESSEDTEXIMAGEPROC) (GLenum target, GLint level, GLvoid *img);
}

version (GL_VERSION_1_4) { } else {
version = GL_VERSION_1_4;
version (GL_GLEXT_PROTOTYPES) {
void glBlendFuncSeparate (GLenum, GLenum, GLenum, GLenum);
void glFogCoordf (GLfloat);
void glFogCoordfv (GLfloat *);
void glFogCoordd (GLdouble);
void glFogCoorddv (GLdouble *);
void glFogCoordPointer (GLenum, GLsizei, GLvoid *);
void glMultiDrawArrays (GLenum, GLint *, GLsizei *, GLsizei);
void glMultiDrawElements (GLenum, GLsizei *, GLenum, GLvoid* *, GLsizei);
void glPointParameterf (GLenum, GLfloat);
void glPointParameterfv (GLenum, GLfloat *);
void glPointParameteri (GLenum, GLint);
void glPointParameteriv (GLenum, GLint *);
void glSecondaryColor3b (GLbyte, GLbyte, GLbyte);
void glSecondaryColor3bv (GLbyte *);
void glSecondaryColor3d (GLdouble, GLdouble, GLdouble);
void glSecondaryColor3dv (GLdouble *);
void glSecondaryColor3f (GLfloat, GLfloat, GLfloat);
void glSecondaryColor3fv (GLfloat *);
void glSecondaryColor3i (GLint, GLint, GLint);
void glSecondaryColor3iv (GLint *);
void glSecondaryColor3s (GLshort, GLshort, GLshort);
void glSecondaryColor3sv (GLshort *);
void glSecondaryColor3ub (GLubyte, GLubyte, GLubyte);
void glSecondaryColor3ubv (GLubyte *);
void glSecondaryColor3ui (GLuint, GLuint, GLuint);
void glSecondaryColor3uiv (GLuint *);
void glSecondaryColor3us (GLushort, GLushort, GLushort);
void glSecondaryColor3usv (GLushort *);
void glSecondaryColorPointer (GLint, GLenum, GLsizei, GLvoid *);
void glWindowPos2d (GLdouble, GLdouble);
void glWindowPos2dv (GLdouble *);
void glWindowPos2f (GLfloat, GLfloat);
void glWindowPos2fv (GLfloat *);
void glWindowPos2i (GLint, GLint);
void glWindowPos2iv (GLint *);
void glWindowPos2s (GLshort, GLshort);
void glWindowPos2sv (GLshort *);
void glWindowPos3d (GLdouble, GLdouble, GLdouble);
void glWindowPos3dv (GLdouble *);
void glWindowPos3f (GLfloat, GLfloat, GLfloat);
void glWindowPos3fv (GLfloat *);
void glWindowPos3i (GLint, GLint, GLint);
void glWindowPos3iv (GLint *);
void glWindowPos3s (GLshort, GLshort, GLshort);
void glWindowPos3sv (GLshort *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBLENDFUNCSEPARATEPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
alias void (*PFNGLFOGCOORDFPROC) (GLfloat coord);
alias void (*PFNGLFOGCOORDFVPROC) (GLfloat *coord);
alias void (*PFNGLFOGCOORDDPROC) (GLdouble coord);
alias void (*PFNGLFOGCOORDDVPROC) (GLdouble *coord);
alias void (*PFNGLFOGCOORDPOINTERPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFNGLMULTIDRAWARRAYSPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
alias void (*PFNGLMULTIDRAWELEMENTSPROC) (GLenum mode, GLsizei *count, GLenum type, GLvoid* *indices, GLsizei primcount);
alias void (*PFNGLPOINTPARAMETERFPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLPOINTPARAMETERFVPROC) (GLenum pname, GLfloat *params);
alias void (*PFNGLPOINTPARAMETERIPROC) (GLenum pname, GLint param);
alias void (*PFNGLPOINTPARAMETERIVPROC) (GLenum pname, GLint *params);
alias void (*PFNGLSECONDARYCOLOR3BPROC) (GLbyte red, GLbyte green, GLbyte blue);
alias void (*PFNGLSECONDARYCOLOR3BVPROC) (GLbyte *v);
alias void (*PFNGLSECONDARYCOLOR3DPROC) (GLdouble red, GLdouble green, GLdouble blue);
alias void (*PFNGLSECONDARYCOLOR3DVPROC) (GLdouble *v);
alias void (*PFNGLSECONDARYCOLOR3FPROC) (GLfloat red, GLfloat green, GLfloat blue);
alias void (*PFNGLSECONDARYCOLOR3FVPROC) (GLfloat *v);
alias void (*PFNGLSECONDARYCOLOR3IPROC) (GLint red, GLint green, GLint blue);
alias void (*PFNGLSECONDARYCOLOR3IVPROC) (GLint *v);
alias void (*PFNGLSECONDARYCOLOR3SPROC) (GLshort red, GLshort green, GLshort blue);
alias void (*PFNGLSECONDARYCOLOR3SVPROC) (GLshort *v);
alias void (*PFNGLSECONDARYCOLOR3UBPROC) (GLubyte red, GLubyte green, GLubyte blue);
alias void (*PFNGLSECONDARYCOLOR3UBVPROC) (GLubyte *v);
alias void (*PFNGLSECONDARYCOLOR3UIPROC) (GLuint red, GLuint green, GLuint blue);
alias void (*PFNGLSECONDARYCOLOR3UIVPROC) (GLuint *v);
alias void (*PFNGLSECONDARYCOLOR3USPROC) (GLushort red, GLushort green, GLushort blue);
alias void (*PFNGLSECONDARYCOLOR3USVPROC) (GLushort *v);
alias void (*PFNGLSECONDARYCOLORPOINTERPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFNGLWINDOWPOS2DPROC) (GLdouble x, GLdouble y);
alias void (*PFNGLWINDOWPOS2DVPROC) (GLdouble *v);
alias void (*PFNGLWINDOWPOS2FPROC) (GLfloat x, GLfloat y);
alias void (*PFNGLWINDOWPOS2FVPROC) (GLfloat *v);
alias void (*PFNGLWINDOWPOS2IPROC) (GLint x, GLint y);
alias void (*PFNGLWINDOWPOS2IVPROC) (GLint *v);
alias void (*PFNGLWINDOWPOS2SPROC) (GLshort x, GLshort y);
alias void (*PFNGLWINDOWPOS2SVPROC) (GLshort *v);
alias void (*PFNGLWINDOWPOS3DPROC) (GLdouble x, GLdouble y, GLdouble z);
alias void (*PFNGLWINDOWPOS3DVPROC) (GLdouble *v);
alias void (*PFNGLWINDOWPOS3FPROC) (GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLWINDOWPOS3FVPROC) (GLfloat *v);
alias void (*PFNGLWINDOWPOS3IPROC) (GLint x, GLint y, GLint z);
alias void (*PFNGLWINDOWPOS3IVPROC) (GLint *v);
alias void (*PFNGLWINDOWPOS3SPROC) (GLshort x, GLshort y, GLshort z);
alias void (*PFNGLWINDOWPOS3SVPROC) (GLshort *v);
}

version (GL_VERSION_1_5) { } else {
version = GL_VERSION_1_5;
version (GL_GLEXT_PROTOTYPES) {
void glGenQueries (GLsizei, GLuint *);
void glDeleteQueries (GLsizei, GLuint *);
GLboolean glIsQuery (GLuint);
void glBeginQuery (GLenum, GLuint);
void glEndQuery (GLenum);
void glGetQueryiv (GLenum, GLenum, GLint *);
void glGetQueryObjectiv (GLuint, GLenum, GLint *);
void glGetQueryObjectuiv (GLuint, GLenum, GLuint *);
void glBindBuffer (GLenum, GLuint);
void glDeleteBuffers (GLsizei, GLuint *);
void glGenBuffers (GLsizei, GLuint *);
GLboolean glIsBuffer (GLuint);
void glBufferData (GLenum, GLsizeiptr, GLvoid *, GLenum);
void glBufferSubData (GLenum, GLintptr, GLsizeiptr, GLvoid *);
void glGetBufferSubData (GLenum, GLintptr, GLsizeiptr, GLvoid *);
GLvoid* glMapBuffer (GLenum, GLenum);
GLboolean glUnmapBuffer (GLenum);
void glGetBufferParameteriv (GLenum, GLenum, GLint *);
void glGetBufferPointerv (GLenum, GLenum, GLvoid* *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGENQUERIESPROC) (GLsizei n, GLuint *ids);
alias void (*PFNGLDELETEQUERIESPROC) (GLsizei n, GLuint *ids);
alias GLboolean (*PFNGLISQUERYPROC) (GLuint id);
alias void (*PFNGLBEGINQUERYPROC) (GLenum target, GLuint id);
alias void (*PFNGLENDQUERYPROC) (GLenum target);
alias void (*PFNGLGETQUERYIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETQUERYOBJECTIVPROC) (GLuint id, GLenum pname, GLint *params);
alias void (*PFNGLGETQUERYOBJECTUIVPROC) (GLuint id, GLenum pname, GLuint *params);
alias void (*PFNGLBINDBUFFERPROC) (GLenum target, GLuint buffer);
alias void (*PFNGLDELETEBUFFERSPROC) (GLsizei n, GLuint *buffers);
alias void (*PFNGLGENBUFFERSPROC) (GLsizei n, GLuint *buffers);
alias GLboolean (*PFNGLISBUFFERPROC) (GLuint buffer);
alias void (*PFNGLBUFFERDATAPROC) (GLenum target, GLsizeiptr size, GLvoid *data, GLenum usage);
alias void (*PFNGLBUFFERSUBDATAPROC) (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid *data);
alias void (*PFNGLGETBUFFERSUBDATAPROC) (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid *data);
alias GLvoid* (*PFNGLMAPBUFFERPROC) (GLenum target, GLenum access);
alias GLboolean (*PFNGLUNMAPBUFFERPROC) (GLenum target);
alias void (*PFNGLGETBUFFERPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETBUFFERPOINTERVPROC) (GLenum target, GLenum pname, GLvoid* *params);
}

version (GL_ARB_multitexture) { } else {
version = GL_ARB_multitexture;
version (GL_GLEXT_PROTOTYPES) {
void glActiveTextureARB (GLenum);
void glClientActiveTextureARB (GLenum);
void glMultiTexCoord1dARB (GLenum, GLdouble);
void glMultiTexCoord1dvARB (GLenum, GLdouble *);
void glMultiTexCoord1fARB (GLenum, GLfloat);
void glMultiTexCoord1fvARB (GLenum, GLfloat *);
void glMultiTexCoord1iARB (GLenum, GLint);
void glMultiTexCoord1ivARB (GLenum, GLint *);
void glMultiTexCoord1sARB (GLenum, GLshort);
void glMultiTexCoord1svARB (GLenum, GLshort *);
void glMultiTexCoord2dARB (GLenum, GLdouble, GLdouble);
void glMultiTexCoord2dvARB (GLenum, GLdouble *);
void glMultiTexCoord2fARB (GLenum, GLfloat, GLfloat);
void glMultiTexCoord2fvARB (GLenum, GLfloat *);
void glMultiTexCoord2iARB (GLenum, GLint, GLint);
void glMultiTexCoord2ivARB (GLenum, GLint *);
void glMultiTexCoord2sARB (GLenum, GLshort, GLshort);
void glMultiTexCoord2svARB (GLenum, GLshort *);
void glMultiTexCoord3dARB (GLenum, GLdouble, GLdouble, GLdouble);
void glMultiTexCoord3dvARB (GLenum, GLdouble *);
void glMultiTexCoord3fARB (GLenum, GLfloat, GLfloat, GLfloat);
void glMultiTexCoord3fvARB (GLenum, GLfloat *);
void glMultiTexCoord3iARB (GLenum, GLint, GLint, GLint);
void glMultiTexCoord3ivARB (GLenum, GLint *);
void glMultiTexCoord3sARB (GLenum, GLshort, GLshort, GLshort);
void glMultiTexCoord3svARB (GLenum, GLshort *);
void glMultiTexCoord4dARB (GLenum, GLdouble, GLdouble, GLdouble, GLdouble);
void glMultiTexCoord4dvARB (GLenum, GLdouble *);
void glMultiTexCoord4fARB (GLenum, GLfloat, GLfloat, GLfloat, GLfloat);
void glMultiTexCoord4fvARB (GLenum, GLfloat *);
void glMultiTexCoord4iARB (GLenum, GLint, GLint, GLint, GLint);
void glMultiTexCoord4ivARB (GLenum, GLint *);
void glMultiTexCoord4sARB (GLenum, GLshort, GLshort, GLshort, GLshort);
void glMultiTexCoord4svARB (GLenum, GLshort *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLACTIVETEXTUREARBPROC) (GLenum texture);
alias void (*PFNGLCLIENTACTIVETEXTUREARBPROC) (GLenum texture);
alias void (*PFNGLMULTITEXCOORD1DARBPROC) (GLenum target, GLdouble s);
alias void (*PFNGLMULTITEXCOORD1DVARBPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD1FARBPROC) (GLenum target, GLfloat s);
alias void (*PFNGLMULTITEXCOORD1FVARBPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD1IARBPROC) (GLenum target, GLint s);
alias void (*PFNGLMULTITEXCOORD1IVARBPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD1SARBPROC) (GLenum target, GLshort s);
alias void (*PFNGLMULTITEXCOORD1SVARBPROC) (GLenum target, GLshort *v);
alias void (*PFNGLMULTITEXCOORD2DARBPROC) (GLenum target, GLdouble s, GLdouble t);
alias void (*PFNGLMULTITEXCOORD2DVARBPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD2FARBPROC) (GLenum target, GLfloat s, GLfloat t);
alias void (*PFNGLMULTITEXCOORD2FVARBPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD2IARBPROC) (GLenum target, GLint s, GLint t);
alias void (*PFNGLMULTITEXCOORD2IVARBPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD2SARBPROC) (GLenum target, GLshort s, GLshort t);
alias void (*PFNGLMULTITEXCOORD2SVARBPROC) (GLenum target, GLshort *v);
alias void (*PFNGLMULTITEXCOORD3DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
alias void (*PFNGLMULTITEXCOORD3DVARBPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD3FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
alias void (*PFNGLMULTITEXCOORD3FVARBPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD3IARBPROC) (GLenum target, GLint s, GLint t, GLint r);
alias void (*PFNGLMULTITEXCOORD3IVARBPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD3SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
alias void (*PFNGLMULTITEXCOORD3SVARBPROC) (GLenum target, GLshort *v);
alias void (*PFNGLMULTITEXCOORD4DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
alias void (*PFNGLMULTITEXCOORD4DVARBPROC) (GLenum target, GLdouble *v);
alias void (*PFNGLMULTITEXCOORD4FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
alias void (*PFNGLMULTITEXCOORD4FVARBPROC) (GLenum target, GLfloat *v);
alias void (*PFNGLMULTITEXCOORD4IARBPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
alias void (*PFNGLMULTITEXCOORD4IVARBPROC) (GLenum target, GLint *v);
alias void (*PFNGLMULTITEXCOORD4SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
alias void (*PFNGLMULTITEXCOORD4SVARBPROC) (GLenum target, GLshort *v);
}

version (GL_ARB_transpose_matrix) { } else {
version = GL_ARB_transpose_matrix;
version (GL_GLEXT_PROTOTYPES) {
void glLoadTransposeMatrixfARB (GLfloat *);
void glLoadTransposeMatrixdARB (GLdouble *);
void glMultTransposeMatrixfARB (GLfloat *);
void glMultTransposeMatrixdARB (GLdouble *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLLOADTRANSPOSEMATRIXFARBPROC) (GLfloat *m);
alias void (*PFNGLLOADTRANSPOSEMATRIXDARBPROC) (GLdouble *m);
alias void (*PFNGLMULTTRANSPOSEMATRIXFARBPROC) (GLfloat *m);
alias void (*PFNGLMULTTRANSPOSEMATRIXDARBPROC) (GLdouble *m);
}

version (GL_ARB_multisample) { } else {
version = GL_ARB_multisample;
version (GL_GLEXT_PROTOTYPES) {
void glSampleCoverageARB (GLclampf, GLboolean);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLSAMPLECOVERAGEARBPROC) (GLclampf value, GLboolean invert);
}

version (GL_ARB_texture_env_add) { } else {
version = GL_ARB_texture_env_add;
}

version (GL_ARB_texture_cube_map) { } else {
version = GL_ARB_texture_cube_map;
}

version (GL_ARB_texture_compression) { } else {
version = GL_ARB_texture_compression;
version (GL_GLEXT_PROTOTYPES) {
void glCompressedTexImage3DARB (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, GLvoid *);
void glCompressedTexImage2DARB (GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, GLvoid *);
void glCompressedTexImage1DARB (GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, GLvoid *);
void glCompressedTexSubImage3DARB (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *);
void glCompressedTexSubImage2DARB (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, GLvoid *);
void glCompressedTexSubImage1DARB (GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, GLvoid *);
void glGetCompressedTexImageARB (GLenum, GLint, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOMPRESSEDTEXIMAGE3DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXIMAGE2DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXIMAGE1DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid *data);
alias void (*PFNGLGETCOMPRESSEDTEXIMAGEARBPROC) (GLenum target, GLint level, GLvoid *img);
}

version (GL_ARB_texture_border_clamp) { } else {
version = GL_ARB_texture_border_clamp;
}

version (GL_ARB_point_parameters) { } else {
version = GL_ARB_point_parameters;
version (GL_GLEXT_PROTOTYPES) {
void glPointParameterfARB (GLenum, GLfloat);
void glPointParameterfvARB (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPOINTPARAMETERFARBPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLPOINTPARAMETERFVARBPROC) (GLenum pname, GLfloat *params);
}

version (GL_ARB_vertex_blend) { } else {
version = GL_ARB_vertex_blend;
version (GL_GLEXT_PROTOTYPES) {
void glWeightbvARB (GLint, GLbyte *);
void glWeightsvARB (GLint, GLshort *);
void glWeightivARB (GLint, GLint *);
void glWeightfvARB (GLint, GLfloat *);
void glWeightdvARB (GLint, GLdouble *);
void glWeightubvARB (GLint, GLubyte *);
void glWeightusvARB (GLint, GLushort *);
void glWeightuivARB (GLint, GLuint *);
void glWeightPointerARB (GLint, GLenum, GLsizei, GLvoid *);
void glVertexBlendARB (GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLWEIGHTBVARBPROC) (GLint size, GLbyte *weights);
alias void (*PFNGLWEIGHTSVARBPROC) (GLint size, GLshort *weights);
alias void (*PFNGLWEIGHTIVARBPROC) (GLint size, GLint *weights);
alias void (*PFNGLWEIGHTFVARBPROC) (GLint size, GLfloat *weights);
alias void (*PFNGLWEIGHTDVARBPROC) (GLint size, GLdouble *weights);
alias void (*PFNGLWEIGHTUBVARBPROC) (GLint size, GLubyte *weights);
alias void (*PFNGLWEIGHTUSVARBPROC) (GLint size, GLushort *weights);
alias void (*PFNGLWEIGHTUIVARBPROC) (GLint size, GLuint *weights);
alias void (*PFNGLWEIGHTPOINTERARBPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFNGLVERTEXBLENDARBPROC) (GLint count);
}

version (GL_ARB_matrix_palette) { } else {
version = GL_ARB_matrix_palette;
version (GL_GLEXT_PROTOTYPES) {
void glCurrentPaletteMatrixARB (GLint);
void glMatrixIndexubvARB (GLint, GLubyte *);
void glMatrixIndexusvARB (GLint, GLushort *);
void glMatrixIndexuivARB (GLint, GLuint *);
void glMatrixIndexPointerARB (GLint, GLenum, GLsizei, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCURRENTPALETTEMATRIXARBPROC) (GLint index);
alias void (*PFNGLMATRIXINDEXUBVARBPROC) (GLint size, GLubyte *indices);
alias void (*PFNGLMATRIXINDEXUSVARBPROC) (GLint size, GLushort *indices);
alias void (*PFNGLMATRIXINDEXUIVARBPROC) (GLint size, GLuint *indices);
alias void (*PFNGLMATRIXINDEXPOINTERARBPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
}

version (GL_ARB_texture_env_combine) { } else {
version = GL_ARB_texture_env_combine;
}

version (GL_ARB_texture_env_crossbar) { } else {
version = GL_ARB_texture_env_crossbar;
}

version (GL_ARB_texture_env_dot3) { } else {
version = GL_ARB_texture_env_dot3;
}

version (GL_ARB_texture_mirrored_repeat) { } else {
version = GL_ARB_texture_mirrored_repeat;
}

version (GL_ARB_depth_texture) { } else {
version = GL_ARB_depth_texture;
}

version (GL_ARB_shadow) { } else {
version = GL_ARB_shadow;
}

version (GL_ARB_shadow_ambient) { } else {
version = GL_ARB_shadow_ambient;
}

version (GL_ARB_window_pos) { } else {
version = GL_ARB_window_pos;
version (GL_GLEXT_PROTOTYPES) {
void glWindowPos2dARB (GLdouble, GLdouble);
void glWindowPos2dvARB (GLdouble *);
void glWindowPos2fARB (GLfloat, GLfloat);
void glWindowPos2fvARB (GLfloat *);
void glWindowPos2iARB (GLint, GLint);
void glWindowPos2ivARB (GLint *);
void glWindowPos2sARB (GLshort, GLshort);
void glWindowPos2svARB (GLshort *);
void glWindowPos3dARB (GLdouble, GLdouble, GLdouble);
void glWindowPos3dvARB (GLdouble *);
void glWindowPos3fARB (GLfloat, GLfloat, GLfloat);
void glWindowPos3fvARB (GLfloat *);
void glWindowPos3iARB (GLint, GLint, GLint);
void glWindowPos3ivARB (GLint *);
void glWindowPos3sARB (GLshort, GLshort, GLshort);
void glWindowPos3svARB (GLshort *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLWINDOWPOS2DARBPROC) (GLdouble x, GLdouble y);
alias void (*PFNGLWINDOWPOS2DVARBPROC) (GLdouble *v);
alias void (*PFNGLWINDOWPOS2FARBPROC) (GLfloat x, GLfloat y);
alias void (*PFNGLWINDOWPOS2FVARBPROC) (GLfloat *v);
alias void (*PFNGLWINDOWPOS2IARBPROC) (GLint x, GLint y);
alias void (*PFNGLWINDOWPOS2IVARBPROC) (GLint *v);
alias void (*PFNGLWINDOWPOS2SARBPROC) (GLshort x, GLshort y);
alias void (*PFNGLWINDOWPOS2SVARBPROC) (GLshort *v);
alias void (*PFNGLWINDOWPOS3DARBPROC) (GLdouble x, GLdouble y, GLdouble z);
alias void (*PFNGLWINDOWPOS3DVARBPROC) (GLdouble *v);
alias void (*PFNGLWINDOWPOS3FARBPROC) (GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLWINDOWPOS3FVARBPROC) (GLfloat *v);
alias void (*PFNGLWINDOWPOS3IARBPROC) (GLint x, GLint y, GLint z);
alias void (*PFNGLWINDOWPOS3IVARBPROC) (GLint *v);
alias void (*PFNGLWINDOWPOS3SARBPROC) (GLshort x, GLshort y, GLshort z);
alias void (*PFNGLWINDOWPOS3SVARBPROC) (GLshort *v);
}

version (GL_ARB_vertex_program) { } else {
version = GL_ARB_vertex_program;
version (GL_GLEXT_PROTOTYPES) {
void glVertexAttrib1dARB (GLuint, GLdouble);
void glVertexAttrib1dvARB (GLuint, GLdouble *);
void glVertexAttrib1fARB (GLuint, GLfloat);
void glVertexAttrib1fvARB (GLuint, GLfloat *);
void glVertexAttrib1sARB (GLuint, GLshort);
void glVertexAttrib1svARB (GLuint, GLshort *);
void glVertexAttrib2dARB (GLuint, GLdouble, GLdouble);
void glVertexAttrib2dvARB (GLuint, GLdouble *);
void glVertexAttrib2fARB (GLuint, GLfloat, GLfloat);
void glVertexAttrib2fvARB (GLuint, GLfloat *);
void glVertexAttrib2sARB (GLuint, GLshort, GLshort);
void glVertexAttrib2svARB (GLuint, GLshort *);
void glVertexAttrib3dARB (GLuint, GLdouble, GLdouble, GLdouble);
void glVertexAttrib3dvARB (GLuint, GLdouble *);
void glVertexAttrib3fARB (GLuint, GLfloat, GLfloat, GLfloat);
void glVertexAttrib3fvARB (GLuint, GLfloat *);
void glVertexAttrib3sARB (GLuint, GLshort, GLshort, GLshort);
void glVertexAttrib3svARB (GLuint, GLshort *);
void glVertexAttrib4NbvARB (GLuint, GLbyte *);
void glVertexAttrib4NivARB (GLuint, GLint *);
void glVertexAttrib4NsvARB (GLuint, GLshort *);
void glVertexAttrib4NubARB (GLuint, GLubyte, GLubyte, GLubyte, GLubyte);
void glVertexAttrib4NubvARB (GLuint, GLubyte *);
void glVertexAttrib4NuivARB (GLuint, GLuint *);
void glVertexAttrib4NusvARB (GLuint, GLushort *);
void glVertexAttrib4bvARB (GLuint, GLbyte *);
void glVertexAttrib4dARB (GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
void glVertexAttrib4dvARB (GLuint, GLdouble *);
void glVertexAttrib4fARB (GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
void glVertexAttrib4fvARB (GLuint, GLfloat *);
void glVertexAttrib4ivARB (GLuint, GLint *);
void glVertexAttrib4sARB (GLuint, GLshort, GLshort, GLshort, GLshort);
void glVertexAttrib4svARB (GLuint, GLshort *);
void glVertexAttrib4ubvARB (GLuint, GLubyte *);
void glVertexAttrib4uivARB (GLuint, GLuint *);
void glVertexAttrib4usvARB (GLuint, GLushort *);
void glVertexAttribPointerARB (GLuint, GLint, GLenum, GLboolean, GLsizei, GLvoid *);
void glEnableVertexAttribArrayARB (GLuint);
void glDisableVertexAttribArrayARB (GLuint);
void glProgramStringARB (GLenum, GLenum, GLsizei, GLvoid *);
void glBindProgramARB (GLenum, GLuint);
void glDeleteProgramsARB (GLsizei, GLuint *);
void glGenProgramsARB (GLsizei, GLuint *);
void glProgramEnvParameter4dARB (GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
void glProgramEnvParameter4dvARB (GLenum, GLuint, GLdouble *);
void glProgramEnvParameter4fARB (GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
void glProgramEnvParameter4fvARB (GLenum, GLuint, GLfloat *);
void glProgramLocalParameter4dARB (GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
void glProgramLocalParameter4dvARB (GLenum, GLuint, GLdouble *);
void glProgramLocalParameter4fARB (GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
void glProgramLocalParameter4fvARB (GLenum, GLuint, GLfloat *);
void glGetProgramEnvParameterdvARB (GLenum, GLuint, GLdouble *);
void glGetProgramEnvParameterfvARB (GLenum, GLuint, GLfloat *);
void glGetProgramLocalParameterdvARB (GLenum, GLuint, GLdouble *);
void glGetProgramLocalParameterfvARB (GLenum, GLuint, GLfloat *);
void glGetProgramivARB (GLenum, GLenum, GLint *);
void glGetProgramStringARB (GLenum, GLenum, GLvoid *);
void glGetVertexAttribdvARB (GLuint, GLenum, GLdouble *);
void glGetVertexAttribfvARB (GLuint, GLenum, GLfloat *);
void glGetVertexAttribivARB (GLuint, GLenum, GLint *);
void glGetVertexAttribPointervARB (GLuint, GLenum, GLvoid* *);
GLboolean glIsProgramARB (GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLVERTEXATTRIB1DARBPROC) (GLuint index, GLdouble x);
alias void (*PFNGLVERTEXATTRIB1DVARBPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB1FARBPROC) (GLuint index, GLfloat x);
alias void (*PFNGLVERTEXATTRIB1FVARBPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB1SARBPROC) (GLuint index, GLshort x);
alias void (*PFNGLVERTEXATTRIB1SVARBPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB2DARBPROC) (GLuint index, GLdouble x, GLdouble y);
alias void (*PFNGLVERTEXATTRIB2DVARBPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB2FARBPROC) (GLuint index, GLfloat x, GLfloat y);
alias void (*PFNGLVERTEXATTRIB2FVARBPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB2SARBPROC) (GLuint index, GLshort x, GLshort y);
alias void (*PFNGLVERTEXATTRIB2SVARBPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB3DARBPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias void (*PFNGLVERTEXATTRIB3DVARBPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB3FARBPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLVERTEXATTRIB3FVARBPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB3SARBPROC) (GLuint index, GLshort x, GLshort y, GLshort z);
alias void (*PFNGLVERTEXATTRIB3SVARBPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB4NBVARBPROC) (GLuint index, GLbyte *v);
alias void (*PFNGLVERTEXATTRIB4NIVARBPROC) (GLuint index, GLint *v);
alias void (*PFNGLVERTEXATTRIB4NSVARBPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB4NUBARBPROC) (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
alias void (*PFNGLVERTEXATTRIB4NUBVARBPROC) (GLuint index, GLubyte *v);
alias void (*PFNGLVERTEXATTRIB4NUIVARBPROC) (GLuint index, GLuint *v);
alias void (*PFNGLVERTEXATTRIB4NUSVARBPROC) (GLuint index, GLushort *v);
alias void (*PFNGLVERTEXATTRIB4BVARBPROC) (GLuint index, GLbyte *v);
alias void (*PFNGLVERTEXATTRIB4DARBPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLVERTEXATTRIB4DVARBPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB4FARBPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLVERTEXATTRIB4FVARBPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB4IVARBPROC) (GLuint index, GLint *v);
alias void (*PFNGLVERTEXATTRIB4SARBPROC) (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
alias void (*PFNGLVERTEXATTRIB4SVARBPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB4UBVARBPROC) (GLuint index, GLubyte *v);
alias void (*PFNGLVERTEXATTRIB4UIVARBPROC) (GLuint index, GLuint *v);
alias void (*PFNGLVERTEXATTRIB4USVARBPROC) (GLuint index, GLushort *v);
alias void (*PFNGLVERTEXATTRIBPOINTERARBPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLvoid *pointer);
alias void (*PFNGLENABLEVERTEXATTRIBARRAYARBPROC) (GLuint index);
alias void (*PFNGLDISABLEVERTEXATTRIBARRAYARBPROC) (GLuint index);
alias void (*PFNGLPROGRAMSTRINGARBPROC) (GLenum target, GLenum format, GLsizei len, GLvoid *string);
alias void (*PFNGLBINDPROGRAMARBPROC) (GLenum target, GLuint program);
alias void (*PFNGLDELETEPROGRAMSARBPROC) (GLsizei n, GLuint *programs);
alias void (*PFNGLGENPROGRAMSARBPROC) (GLsizei n, GLuint *programs);
alias void (*PFNGLPROGRAMENVPARAMETER4DARBPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLPROGRAMENVPARAMETER4DVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias void (*PFNGLPROGRAMENVPARAMETER4FARBPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLPROGRAMENVPARAMETER4FVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias void (*PFNGLPROGRAMLOCALPARAMETER4DARBPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLPROGRAMLOCALPARAMETER4DVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias void (*PFNGLPROGRAMLOCALPARAMETER4FARBPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLPROGRAMLOCALPARAMETER4FVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias void (*PFNGLGETPROGRAMENVPARAMETERDVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias void (*PFNGLGETPROGRAMENVPARAMETERFVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias void (*PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC) (GLenum target, GLuint index, GLdouble *params);
alias void (*PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC) (GLenum target, GLuint index, GLfloat *params);
alias void (*PFNGLGETPROGRAMIVARBPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETPROGRAMSTRINGARBPROC) (GLenum target, GLenum pname, GLvoid *string);
alias void (*PFNGLGETVERTEXATTRIBDVARBPROC) (GLuint index, GLenum pname, GLdouble *params);
alias void (*PFNGLGETVERTEXATTRIBFVARBPROC) (GLuint index, GLenum pname, GLfloat *params);
alias void (*PFNGLGETVERTEXATTRIBIVARBPROC) (GLuint index, GLenum pname, GLint *params);
alias void (*PFNGLGETVERTEXATTRIBPOINTERVARBPROC) (GLuint index, GLenum pname, GLvoid* *pointer);
alias GLboolean (*PFNGLISPROGRAMARBPROC) (GLuint program);
}

version (GL_ARB_fragment_program) { } else {
version = GL_ARB_fragment_program;
/* All ARB_fragment_program entry points are shared with ARB_vertex_program. */
}

version (GL_ARB_vertex_buffer_object) { } else {
version = GL_ARB_vertex_buffer_object;
version (GL_GLEXT_PROTOTYPES) {
void glBindBufferARB (GLenum, GLuint);
void glDeleteBuffersARB (GLsizei, GLuint *);
void glGenBuffersARB (GLsizei, GLuint *);
GLboolean glIsBufferARB (GLuint);
void glBufferDataARB (GLenum, GLsizeiptrARB, GLvoid *, GLenum);
void glBufferSubDataARB (GLenum, GLintptrARB, GLsizeiptrARB, GLvoid *);
void glGetBufferSubDataARB (GLenum, GLintptrARB, GLsizeiptrARB, GLvoid *);
GLvoid* glMapBufferARB (GLenum, GLenum);
GLboolean glUnmapBufferARB (GLenum);
void glGetBufferParameterivARB (GLenum, GLenum, GLint *);
void glGetBufferPointervARB (GLenum, GLenum, GLvoid* *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBINDBUFFERARBPROC) (GLenum target, GLuint buffer);
alias void (*PFNGLDELETEBUFFERSARBPROC) (GLsizei n, GLuint *buffers);
alias void (*PFNGLGENBUFFERSARBPROC) (GLsizei n, GLuint *buffers);
alias GLboolean (*PFNGLISBUFFERARBPROC) (GLuint buffer);
alias void (*PFNGLBUFFERDATAARBPROC) (GLenum target, GLsizeiptrARB size, GLvoid *data, GLenum usage);
alias void (*PFNGLBUFFERSUBDATAARBPROC) (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid *data);
alias void (*PFNGLGETBUFFERSUBDATAARBPROC) (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid *data);
alias GLvoid* (*PFNGLMAPBUFFERARBPROC) (GLenum target, GLenum access);
alias GLboolean (*PFNGLUNMAPBUFFERARBPROC) (GLenum target);
alias void (*PFNGLGETBUFFERPARAMETERIVARBPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETBUFFERPOINTERVARBPROC) (GLenum target, GLenum pname, GLvoid* *params);
}

version (GL_ARB_occlusion_query) { } else {
version = GL_ARB_occlusion_query;
version (GL_GLEXT_PROTOTYPES) {
void glGenQueriesARB (GLsizei, GLuint *);
void glDeleteQueriesARB (GLsizei, GLuint *);
GLboolean glIsQueryARB (GLuint);
void glBeginQueryARB (GLenum, GLuint);
void glEndQueryARB (GLenum);
void glGetQueryivARB (GLenum, GLenum, GLint *);
void glGetQueryObjectivARB (GLuint, GLenum, GLint *);
void glGetQueryObjectuivARB (GLuint, GLenum, GLuint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGENQUERIESARBPROC) (GLsizei n, GLuint *ids);
alias void (*PFNGLDELETEQUERIESARBPROC) (GLsizei n, GLuint *ids);
alias GLboolean (*PFNGLISQUERYARBPROC) (GLuint id);
alias void (*PFNGLBEGINQUERYARBPROC) (GLenum target, GLuint id);
alias void (*PFNGLENDQUERYARBPROC) (GLenum target);
alias void (*PFNGLGETQUERYIVARBPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETQUERYOBJECTIVARBPROC) (GLuint id, GLenum pname, GLint *params);
alias void (*PFNGLGETQUERYOBJECTUIVARBPROC) (GLuint id, GLenum pname, GLuint *params);
}

version (GL_ARB_shader_objects) { } else {
version = GL_ARB_shader_objects;
version (GL_GLEXT_PROTOTYPES) {
void glDeleteObjectARB (GLhandleARB);
GLhandleARB glGetHandleARB (GLenum);
void glDetachObjectARB (GLhandleARB, GLhandleARB);
GLhandleARB glCreateShaderObjectARB (GLenum);
void glShaderSourceARB (GLhandleARB, GLsizei, GLcharARB* *, GLint *);
void glCompileShaderARB (GLhandleARB);
GLhandleARB glCreateProgramObjectARB ();
void glAttachObjectARB (GLhandleARB, GLhandleARB);
void glLinkProgramARB (GLhandleARB);
void glUseProgramObjectARB (GLhandleARB);
void glValidateProgramARB (GLhandleARB);
void glUniform1fARB (GLint, GLfloat);
void glUniform2fARB (GLint, GLfloat, GLfloat);
void glUniform3fARB (GLint, GLfloat, GLfloat, GLfloat);
void glUniform4fARB (GLint, GLfloat, GLfloat, GLfloat, GLfloat);
void glUniform1iARB (GLint, GLint);
void glUniform2iARB (GLint, GLint, GLint);
void glUniform3iARB (GLint, GLint, GLint, GLint);
void glUniform4iARB (GLint, GLint, GLint, GLint, GLint);
void glUniform1fvARB (GLint, GLsizei, GLfloat *);
void glUniform2fvARB (GLint, GLsizei, GLfloat *);
void glUniform3fvARB (GLint, GLsizei, GLfloat *);
void glUniform4fvARB (GLint, GLsizei, GLfloat *);
void glUniform1ivARB (GLint, GLsizei, GLint *);
void glUniform2ivARB (GLint, GLsizei, GLint *);
void glUniform3ivARB (GLint, GLsizei, GLint *);
void glUniform4ivARB (GLint, GLsizei, GLint *);
void glUniformMatrix2fvARB (GLint, GLsizei, GLboolean, GLfloat *);
void glUniformMatrix3fvARB (GLint, GLsizei, GLboolean, GLfloat *);
void glUniformMatrix4fvARB (GLint, GLsizei, GLboolean, GLfloat *);
void glGetObjectParameterfvARB (GLhandleARB, GLenum, GLfloat *);
void glGetObjectParameterivARB (GLhandleARB, GLenum, GLint *);
void glGetInfoLogARB (GLhandleARB, GLsizei, GLsizei *, GLcharARB *);
void glGetAttachedObjectsARB (GLhandleARB, GLsizei, GLsizei *, GLhandleARB *);
GLint glGetUniformLocationARB (GLhandleARB, GLcharARB *);
void glGetActiveUniformARB (GLhandleARB, GLuint, GLsizei, GLsizei *, GLint *, GLenum *, GLcharARB *);
void glGetUniformfvARB (GLhandleARB, GLint, GLfloat *);
void glGetUniformivARB (GLhandleARB, GLint, GLint *);
void glGetShaderSourceARB (GLhandleARB, GLsizei, GLsizei *, GLcharARB *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDELETEOBJECTARBPROC) (GLhandleARB obj);
alias GLhandleARB (*PFNGLGETHANDLEARBPROC) (GLenum pname);
alias void (*PFNGLDETACHOBJECTARBPROC) (GLhandleARB containerObj, GLhandleARB attachedObj);
alias GLhandleARB (*PFNGLCREATESHADEROBJECTARBPROC) (GLenum shaderType);
alias void (*PFNGLSHADERSOURCEARBPROC) (GLhandleARB shaderObj, GLsizei count, GLcharARB* *string, GLint *length);
alias void (*PFNGLCOMPILESHADERARBPROC) (GLhandleARB shaderObj);
alias GLhandleARB (*PFNGLCREATEPROGRAMOBJECTARBPROC) ();
alias void (*PFNGLATTACHOBJECTARBPROC) (GLhandleARB containerObj, GLhandleARB obj);
alias void (*PFNGLLINKPROGRAMARBPROC) (GLhandleARB programObj);
alias void (*PFNGLUSEPROGRAMOBJECTARBPROC) (GLhandleARB programObj);
alias void (*PFNGLVALIDATEPROGRAMARBPROC) (GLhandleARB programObj);
alias void (*PFNGLUNIFORM1FARBPROC) (GLint location, GLfloat v0);
alias void (*PFNGLUNIFORM2FARBPROC) (GLint location, GLfloat v0, GLfloat v1);
alias void (*PFNGLUNIFORM3FARBPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
alias void (*PFNGLUNIFORM4FARBPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
alias void (*PFNGLUNIFORM1IARBPROC) (GLint location, GLint v0);
alias void (*PFNGLUNIFORM2IARBPROC) (GLint location, GLint v0, GLint v1);
alias void (*PFNGLUNIFORM3IARBPROC) (GLint location, GLint v0, GLint v1, GLint v2);
alias void (*PFNGLUNIFORM4IARBPROC) (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
alias void (*PFNGLUNIFORM1FVARBPROC) (GLint location, GLsizei count, GLfloat *value);
alias void (*PFNGLUNIFORM2FVARBPROC) (GLint location, GLsizei count, GLfloat *value);
alias void (*PFNGLUNIFORM3FVARBPROC) (GLint location, GLsizei count, GLfloat *value);
alias void (*PFNGLUNIFORM4FVARBPROC) (GLint location, GLsizei count, GLfloat *value);
alias void (*PFNGLUNIFORM1IVARBPROC) (GLint location, GLsizei count, GLint *value);
alias void (*PFNGLUNIFORM2IVARBPROC) (GLint location, GLsizei count, GLint *value);
alias void (*PFNGLUNIFORM3IVARBPROC) (GLint location, GLsizei count, GLint *value);
alias void (*PFNGLUNIFORM4IVARBPROC) (GLint location, GLsizei count, GLint *value);
alias void (*PFNGLUNIFORMMATRIX2FVARBPROC) (GLint location, GLsizei count, GLboolean transpose, GLfloat *value);
alias void (*PFNGLUNIFORMMATRIX3FVARBPROC) (GLint location, GLsizei count, GLboolean transpose, GLfloat *value);
alias void (*PFNGLUNIFORMMATRIX4FVARBPROC) (GLint location, GLsizei count, GLboolean transpose, GLfloat *value);
alias void (*PFNGLGETOBJECTPARAMETERFVARBPROC) (GLhandleARB obj, GLenum pname, GLfloat *params);
alias void (*PFNGLGETOBJECTPARAMETERIVARBPROC) (GLhandleARB obj, GLenum pname, GLint *params);
alias void (*PFNGLGETINFOLOGARBPROC) (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *infoLog);
alias void (*PFNGLGETATTACHEDOBJECTSARBPROC) (GLhandleARB containerObj, GLsizei maxCount, GLsizei *count, GLhandleARB *obj);
alias GLint (*PFNGLGETUNIFORMLOCATIONARBPROC) (GLhandleARB programObj, GLcharARB *name);
alias void (*PFNGLGETACTIVEUNIFORMARBPROC) (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
alias void (*PFNGLGETUNIFORMFVARBPROC) (GLhandleARB programObj, GLint location, GLfloat *params);
alias void (*PFNGLGETUNIFORMIVARBPROC) (GLhandleARB programObj, GLint location, GLint *params);
alias void (*PFNGLGETSHADERSOURCEARBPROC) (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *source);
}

version (GL_ARB_vertex_shader) { } else {
version = GL_ARB_vertex_shader;
version (GL_GLEXT_PROTOTYPES) {
void glBindAttribLocationARB (GLhandleARB, GLuint, GLcharARB *);
void glGetActiveAttribARB (GLhandleARB, GLuint, GLsizei, GLsizei *, GLint *, GLenum *, GLcharARB *);
GLint glGetAttribLocationARB (GLhandleARB, GLcharARB *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBINDATTRIBLOCATIONARBPROC) (GLhandleARB programObj, GLuint index, GLcharARB *name);
alias void (*PFNGLGETACTIVEATTRIBARBPROC) (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
alias GLint (*PFNGLGETATTRIBLOCATIONARBPROC) (GLhandleARB programObj, GLcharARB *name);
}

version (GL_ARB_fragment_shader) { } else {
version = GL_ARB_fragment_shader;
}

version (GL_ARB_shading_language_100) { } else {
version = GL_ARB_shading_language_100;
}

version (GL_ARB_texture_non_power_of_two) { } else {
version = GL_ARB_texture_non_power_of_two;
}

version (GL_ARB_point_sprite) { } else {
version = GL_ARB_point_sprite;
}

version (GL_ARB_fragment_program_shadow) { } else {
version = GL_ARB_fragment_program_shadow;
}

version (GL_EXT_abgr) { } else {
version = GL_EXT_abgr;
}

version (GL_EXT_blend_color) { } else {
version = GL_EXT_blend_color;
version (GL_GLEXT_PROTOTYPES) {
void glBlendColorEXT (GLclampf, GLclampf, GLclampf, GLclampf);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBLENDCOLOREXTPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
}

version (GL_EXT_polygon_offset) { } else {
version = GL_EXT_polygon_offset;
version (GL_GLEXT_PROTOTYPES) {
void glPolygonOffsetEXT (GLfloat, GLfloat);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPOLYGONOFFSETEXTPROC) (GLfloat factor, GLfloat bias);
}

version (GL_EXT_texture) { } else {
version = GL_EXT_texture;
}

version (GL_EXT_texture3D) { } else {
version = GL_EXT_texture3D;
version (GL_GLEXT_PROTOTYPES) {
void glTexImage3DEXT (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, GLvoid *);
void glTexSubImage3DEXT (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTEXIMAGE3DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFNGLTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid *pixels);
}

version (GL_SGIS_texture_filter4) { } else {
version = GL_SGIS_texture_filter4;
version (GL_GLEXT_PROTOTYPES) {
void glGetTexFilterFuncSGIS (GLenum, GLenum, GLfloat *);
void glTexFilterFuncSGIS (GLenum, GLenum, GLsizei, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGETTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLfloat *weights);
alias void (*PFNGLTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLsizei n, GLfloat *weights);
}

version (GL_EXT_subtexture) { } else {
version = GL_EXT_subtexture;
version (GL_GLEXT_PROTOTYPES) {
void glTexSubImage1DEXT (GLenum, GLint, GLint, GLsizei, GLenum, GLenum, GLvoid *);
void glTexSubImage2DEXT (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFNGLTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
}

version (GL_EXT_copy_texture) { } else {
version = GL_EXT_copy_texture;
version (GL_GLEXT_PROTOTYPES) {
void glCopyTexImage1DEXT (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLint);
void glCopyTexImage2DEXT (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLsizei, GLint);
void glCopyTexSubImage1DEXT (GLenum, GLint, GLint, GLint, GLint, GLsizei);
void glCopyTexSubImage2DEXT (GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei);
void glCopyTexSubImage3DEXT (GLenum, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOPYTEXIMAGE1DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
alias void (*PFNGLCOPYTEXIMAGE2DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
alias void (*PFNGLCOPYTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
alias void (*PFNGLCOPYTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
alias void (*PFNGLCOPYTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
}

version (GL_EXT_histogram) { } else {
version = GL_EXT_histogram;
version (GL_GLEXT_PROTOTYPES) {
void glGetHistogramEXT (GLenum, GLboolean, GLenum, GLenum, GLvoid *);
void glGetHistogramParameterfvEXT (GLenum, GLenum, GLfloat *);
void glGetHistogramParameterivEXT (GLenum, GLenum, GLint *);
void glGetMinmaxEXT (GLenum, GLboolean, GLenum, GLenum, GLvoid *);
void glGetMinmaxParameterfvEXT (GLenum, GLenum, GLfloat *);
void glGetMinmaxParameterivEXT (GLenum, GLenum, GLint *);
void glHistogramEXT (GLenum, GLsizei, GLenum, GLboolean);
void glMinmaxEXT (GLenum, GLenum, GLboolean);
void glResetHistogramEXT (GLenum);
void glResetMinmaxEXT (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGETHISTOGRAMEXTPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias void (*PFNGLGETHISTOGRAMPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETHISTOGRAMPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETMINMAXEXTPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
alias void (*PFNGLGETMINMAXPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETMINMAXPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLHISTOGRAMEXTPROC) (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
alias void (*PFNGLMINMAXEXTPROC) (GLenum target, GLenum internalformat, GLboolean sink);
alias void (*PFNGLRESETHISTOGRAMEXTPROC) (GLenum target);
alias void (*PFNGLRESETMINMAXEXTPROC) (GLenum target);
}

version (GL_EXT_convolution) { } else {
version = GL_EXT_convolution;
version (GL_GLEXT_PROTOTYPES) {
void glConvolutionFilter1DEXT (GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *);
void glConvolutionFilter2DEXT (GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
void glConvolutionParameterfEXT (GLenum, GLenum, GLfloat);
void glConvolutionParameterfvEXT (GLenum, GLenum, GLfloat *);
void glConvolutionParameteriEXT (GLenum, GLenum, GLint);
void glConvolutionParameterivEXT (GLenum, GLenum, GLint *);
void glCopyConvolutionFilter1DEXT (GLenum, GLenum, GLint, GLint, GLsizei);
void glCopyConvolutionFilter2DEXT (GLenum, GLenum, GLint, GLint, GLsizei, GLsizei);
void glGetConvolutionFilterEXT (GLenum, GLenum, GLenum, GLvoid *);
void glGetConvolutionParameterfvEXT (GLenum, GLenum, GLfloat *);
void glGetConvolutionParameterivEXT (GLenum, GLenum, GLint *);
void glGetSeparableFilterEXT (GLenum, GLenum, GLenum, GLvoid *, GLvoid *, GLvoid *);
void glSeparableFilter2DEXT (GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCONVOLUTIONFILTER1DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *image);
alias void (*PFNGLCONVOLUTIONFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *image);
alias void (*PFNGLCONVOLUTIONPARAMETERFEXTPROC) (GLenum target, GLenum pname, GLfloat params);
alias void (*PFNGLCONVOLUTIONPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLCONVOLUTIONPARAMETERIEXTPROC) (GLenum target, GLenum pname, GLint params);
alias void (*PFNGLCONVOLUTIONPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias void (*PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
alias void (*PFNGLGETCONVOLUTIONFILTEREXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *image);
alias void (*PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETSEPARABLEFILTEREXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
alias void (*PFNGLSEPARABLEFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *row, GLvoid *column);
}

version (GL_EXT_color_matrix) { } else {
version = GL_EXT_color_matrix;
}

version (GL_SGI_color_table) { } else {
version = GL_SGI_color_table;
version (GL_GLEXT_PROTOTYPES) {
void glColorTableSGI (GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *);
void glColorTableParameterfvSGI (GLenum, GLenum, GLfloat *);
void glColorTableParameterivSGI (GLenum, GLenum, GLint *);
void glCopyColorTableSGI (GLenum, GLenum, GLint, GLint, GLsizei);
void glGetColorTableSGI (GLenum, GLenum, GLenum, GLvoid *);
void glGetColorTableParameterfvSGI (GLenum, GLenum, GLfloat *);
void glGetColorTableParameterivSGI (GLenum, GLenum, GLint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid *table);
alias void (*PFNGLCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLCOPYCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
alias void (*PFNGLGETCOLORTABLESGIPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
alias void (*PFNGLGETCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, GLint *params);
}

version (GL_SGIX_pixel_texture) { } else {
version = GL_SGIX_pixel_texture;
version (GL_GLEXT_PROTOTYPES) {
void glPixelTexGenSGIX (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPIXELTEXGENSGIXPROC) (GLenum mode);
}

version (GL_SGIS_pixel_texture) { } else {
version = GL_SGIS_pixel_texture;
version (GL_GLEXT_PROTOTYPES) {
void glPixelTexGenParameteriSGIS (GLenum, GLint);
void glPixelTexGenParameterivSGIS (GLenum, GLint *);
void glPixelTexGenParameterfSGIS (GLenum, GLfloat);
void glPixelTexGenParameterfvSGIS (GLenum, GLfloat *);
void glGetPixelTexGenParameterivSGIS (GLenum, GLint *);
void glGetPixelTexGenParameterfvSGIS (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPIXELTEXGENPARAMETERISGISPROC) (GLenum pname, GLint param);
alias void (*PFNGLPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, GLint *params);
alias void (*PFNGLPIXELTEXGENPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);
alias void (*PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, GLint *params);
alias void (*PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);
}

version (GL_SGIS_texture4D) { } else {
version = GL_SGIS_texture4D;
version (GL_GLEXT_PROTOTYPES) {
void glTexImage4DSGIS (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, GLvoid *);
void glTexSubImage4DSGIS (GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTEXIMAGE4DSGISPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, GLvoid *pixels);
alias void (*PFNGLTEXSUBIMAGE4DSGISPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, GLvoid *pixels);
}

version (GL_SGI_texture_color_table) { } else {
version = GL_SGI_texture_color_table;
}

version (GL_EXT_cmyka) { } else {
version = GL_EXT_cmyka;
}

version (GL_EXT_texture_object) { } else {
version = GL_EXT_texture_object;
version (GL_GLEXT_PROTOTYPES) {
GLboolean glAreTexturesResidentEXT (GLsizei, GLuint *, GLboolean *);
void glBindTextureEXT (GLenum, GLuint);
void glDeleteTexturesEXT (GLsizei, GLuint *);
void glGenTexturesEXT (GLsizei, GLuint *);
GLboolean glIsTextureEXT (GLuint);
void glPrioritizeTexturesEXT (GLsizei, GLuint *, GLclampf *);
} /* GL_GLEXT_PROTOTYPES */
alias GLboolean (*PFNGLARETEXTURESRESIDENTEXTPROC) (GLsizei n, GLuint *textures, GLboolean *residences);
alias void (*PFNGLBINDTEXTUREEXTPROC) (GLenum target, GLuint texture);
alias void (*PFNGLDELETETEXTURESEXTPROC) (GLsizei n, GLuint *textures);
alias void (*PFNGLGENTEXTURESEXTPROC) (GLsizei n, GLuint *textures);
alias GLboolean (*PFNGLISTEXTUREEXTPROC) (GLuint texture);
alias void (*PFNGLPRIORITIZETEXTURESEXTPROC) (GLsizei n, GLuint *textures, GLclampf *priorities);
}

version (GL_SGIS_detail_texture) { } else {
version = GL_SGIS_detail_texture;
version (GL_GLEXT_PROTOTYPES) {
void glDetailTexFuncSGIS (GLenum, GLsizei, GLfloat *);
void glGetDetailTexFuncSGIS (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDETAILTEXFUNCSGISPROC) (GLenum target, GLsizei n, GLfloat *points);
alias void (*PFNGLGETDETAILTEXFUNCSGISPROC) (GLenum target, GLfloat *points);
}

version (GL_SGIS_sharpen_texture) { } else {
version = GL_SGIS_sharpen_texture;
version (GL_GLEXT_PROTOTYPES) {
void glSharpenTexFuncSGIS (GLenum, GLsizei, GLfloat *);
void glGetSharpenTexFuncSGIS (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLSHARPENTEXFUNCSGISPROC) (GLenum target, GLsizei n, GLfloat *points);
alias void (*PFNGLGETSHARPENTEXFUNCSGISPROC) (GLenum target, GLfloat *points);
}

version (GL_EXT_packed_pixels) { } else {
version = GL_EXT_packed_pixels;
}

version (GL_SGIS_texture_lod) { } else {
version = GL_SGIS_texture_lod;
}

version (GL_SGIS_multisample) { } else {
version = GL_SGIS_multisample;
version (GL_GLEXT_PROTOTYPES) {
void glSampleMaskSGIS (GLclampf, GLboolean);
void glSamplePatternSGIS (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLSAMPLEMASKSGISPROC) (GLclampf value, GLboolean invert);
alias void (*PFNGLSAMPLEPATTERNSGISPROC) (GLenum pattern);
}

version (GL_EXT_rescale_normal) { } else {
version = GL_EXT_rescale_normal;
}

version (GL_EXT_vertex_array) { } else {
version = GL_EXT_vertex_array;
version (GL_GLEXT_PROTOTYPES) {
void glArrayElementEXT (GLint);
void glColorPointerEXT (GLint, GLenum, GLsizei, GLsizei, GLvoid *);
void glDrawArraysEXT (GLenum, GLint, GLsizei);
void glEdgeFlagPointerEXT (GLsizei, GLsizei, GLboolean *);
void glGetPointervEXT (GLenum, GLvoid* *);
void glIndexPointerEXT (GLenum, GLsizei, GLsizei, GLvoid *);
void glNormalPointerEXT (GLenum, GLsizei, GLsizei, GLvoid *);
void glTexCoordPointerEXT (GLint, GLenum, GLsizei, GLsizei, GLvoid *);
void glVertexPointerEXT (GLint, GLenum, GLsizei, GLsizei, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLARRAYELEMENTEXTPROC) (GLint i);
alias void (*PFNGLCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLDRAWARRAYSEXTPROC) (GLenum mode, GLint first, GLsizei count);
alias void (*PFNGLEDGEFLAGPOINTEREXTPROC) (GLsizei stride, GLsizei count, GLboolean *pointer);
alias void (*PFNGLGETPOINTERVEXTPROC) (GLenum pname, GLvoid* *params);
alias void (*PFNGLINDEXPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLNORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLTEXCOORDPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
alias void (*PFNGLVERTEXPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, GLvoid *pointer);
}

version (GL_EXT_misc_attribute) { } else {
version = GL_EXT_misc_attribute;
}

version (GL_SGIS_generate_mipmap) { } else {
version = GL_SGIS_generate_mipmap;
}

version (GL_SGIX_clipmap) { } else {
version = GL_SGIX_clipmap;
}

version (GL_SGIX_shadow) { } else {
version = GL_SGIX_shadow;
}

version (GL_SGIS_texture_edge_clamp) { } else {
version = GL_SGIS_texture_edge_clamp;
}

version (GL_SGIS_texture_border_clamp) { } else {
version = GL_SGIS_texture_border_clamp;
}

version (GL_EXT_blend_minmax) { } else {
version = GL_EXT_blend_minmax;
version (GL_GLEXT_PROTOTYPES) {
void glBlendEquationEXT (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBLENDEQUATIONEXTPROC) (GLenum mode);
}

version (GL_EXT_blend_subtract) { } else {
version = GL_EXT_blend_subtract;
}

version (GL_EXT_blend_logic_op) { } else {
version = GL_EXT_blend_logic_op;
}

version (GL_SGIX_interlace) { } else {
version = GL_SGIX_interlace;
}

version (GL_SGIX_pixel_tiles) { } else {
version = GL_SGIX_pixel_tiles;
}

version (GL_SGIX_texture_select) { } else {
version = GL_SGIX_texture_select;
}

version (GL_SGIX_sprite) { } else {
version = GL_SGIX_sprite;
version (GL_GLEXT_PROTOTYPES) {
void glSpriteParameterfSGIX (GLenum, GLfloat);
void glSpriteParameterfvSGIX (GLenum, GLfloat *);
void glSpriteParameteriSGIX (GLenum, GLint);
void glSpriteParameterivSGIX (GLenum, GLint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLSPRITEPARAMETERFSGIXPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLSPRITEPARAMETERFVSGIXPROC) (GLenum pname, GLfloat *params);
alias void (*PFNGLSPRITEPARAMETERISGIXPROC) (GLenum pname, GLint param);
alias void (*PFNGLSPRITEPARAMETERIVSGIXPROC) (GLenum pname, GLint *params);
}

version (GL_SGIX_texture_multi_buffer) { } else {
version = GL_SGIX_texture_multi_buffer;
}

version (GL_EXT_point_parameters) { } else {
version = GL_EXT_point_parameters;
version (GL_GLEXT_PROTOTYPES) {
void glPointParameterfEXT (GLenum, GLfloat);
void glPointParameterfvEXT (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPOINTPARAMETERFEXTPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLPOINTPARAMETERFVEXTPROC) (GLenum pname, GLfloat *params);
}

version (GL_SGIS_point_parameters) { } else {
version = GL_SGIS_point_parameters;
version (GL_GLEXT_PROTOTYPES) {
void glPointParameterfSGIS (GLenum, GLfloat);
void glPointParameterfvSGIS (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPOINTPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLPOINTPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);
}

version (GL_SGIX_instruments) { } else {
version = GL_SGIX_instruments;
version (GL_GLEXT_PROTOTYPES) {
GLint glGetInstrumentsSGIX ();
void glInstrumentsBufferSGIX (GLsizei, GLint *);
GLint glPollInstrumentsSGIX (GLint *);
void glReadInstrumentsSGIX (GLint);
void glStartInstrumentsSGIX ();
void glStopInstrumentsSGIX (GLint);
} /* GL_GLEXT_PROTOTYPES */
alias GLint (*PFNGLGETINSTRUMENTSSGIXPROC) ();
alias void (*PFNGLINSTRUMENTSBUFFERSGIXPROC) (GLsizei size, GLint *buffer);
alias GLint (*PFNGLPOLLINSTRUMENTSSGIXPROC) (GLint *marker_p);
alias void (*PFNGLREADINSTRUMENTSSGIXPROC) (GLint marker);
alias void (*PFNGLSTARTINSTRUMENTSSGIXPROC) ();
alias void (*PFNGLSTOPINSTRUMENTSSGIXPROC) (GLint marker);
}

version (GL_SGIX_texture_scale_bias) { } else {
version = GL_SGIX_texture_scale_bias;
}

version (GL_SGIX_framezoom) { } else {
version = GL_SGIX_framezoom;
version (GL_GLEXT_PROTOTYPES) {
void glFrameZoomSGIX (GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLFRAMEZOOMSGIXPROC) (GLint factor);
}

version (GL_SGIX_tag_sample_buffer) { } else {
version = GL_SGIX_tag_sample_buffer;
version (GL_GLEXT_PROTOTYPES) {
void glTagSampleBufferSGIX ();
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTAGSAMPLEBUFFERSGIXPROC) ();
}

version (GL_SGIX_polynomial_ffd) { } else {
version = GL_SGIX_polynomial_ffd;
version (GL_GLEXT_PROTOTYPES) {
void glDeformationMap3dSGIX (GLenum, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, GLdouble *);
void glDeformationMap3fSGIX (GLenum, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, GLfloat *);
void glDeformSGIX (GLbitfield);
void glLoadIdentityDeformationMapSGIX (GLbitfield);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDEFORMATIONMAP3DSGIXPROC) (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, GLdouble *points);
alias void (*PFNGLDEFORMATIONMAP3FSGIXPROC) (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, GLfloat *points);
alias void (*PFNGLDEFORMSGIXPROC) (GLbitfield mask);
alias void (*PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC) (GLbitfield mask);
}

version (GL_SGIX_reference_plane) { } else {
version = GL_SGIX_reference_plane;
version (GL_GLEXT_PROTOTYPES) {
void glReferencePlaneSGIX (GLdouble *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLREFERENCEPLANESGIXPROC) (GLdouble *equation);
}

version (GL_SGIX_flush_raster) { } else {
version = GL_SGIX_flush_raster;
version (GL_GLEXT_PROTOTYPES) {
void glFlushRasterSGIX ();
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLFLUSHRASTERSGIXPROC) ();
}

version (GL_SGIX_depth_texture) { } else {
version = GL_SGIX_depth_texture;
}

version (GL_SGIS_fog_function) { } else {
version = GL_SGIS_fog_function;
version (GL_GLEXT_PROTOTYPES) {
void glFogFuncSGIS (GLsizei, GLfloat *);
void glGetFogFuncSGIS (GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLFOGFUNCSGISPROC) (GLsizei n, GLfloat *points);
alias void (*PFNGLGETFOGFUNCSGISPROC) (GLfloat *points);
}

version (GL_SGIX_fog_offset) { } else {
version = GL_SGIX_fog_offset;
}

version (GL_HP_image_transform) { } else {
version = GL_HP_image_transform;
version (GL_GLEXT_PROTOTYPES) {
void glImageTransformParameteriHP (GLenum, GLenum, GLint);
void glImageTransformParameterfHP (GLenum, GLenum, GLfloat);
void glImageTransformParameterivHP (GLenum, GLenum, GLint *);
void glImageTransformParameterfvHP (GLenum, GLenum, GLfloat *);
void glGetImageTransformParameterivHP (GLenum, GLenum, GLint *);
void glGetImageTransformParameterfvHP (GLenum, GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLIMAGETRANSFORMPARAMETERIHPPROC) (GLenum target, GLenum pname, GLint param);
alias void (*PFNGLIMAGETRANSFORMPARAMETERFHPPROC) (GLenum target, GLenum pname, GLfloat param);
alias void (*PFNGLIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, GLfloat *params);
}

version (GL_HP_convolution_border_modes) { } else {
version = GL_HP_convolution_border_modes;
}

version (GL_SGIX_texture_add_env) { } else {
version = GL_SGIX_texture_add_env;
}

version (GL_EXT_color_subtable) { } else {
version = GL_EXT_color_subtable;
version (GL_GLEXT_PROTOTYPES) {
void glColorSubTableEXT (GLenum, GLsizei, GLsizei, GLenum, GLenum, GLvoid *);
void glCopyColorSubTableEXT (GLenum, GLsizei, GLint, GLint, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid *data);
alias void (*PFNGLCOPYCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
}

version (GL_PGI_vertex_hints) { } else {
version = GL_PGI_vertex_hints;
}

version (GL_PGI_misc_hints) { } else {
version = GL_PGI_misc_hints;
version (GL_GLEXT_PROTOTYPES) {
void glHintPGI (GLenum, GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLHINTPGIPROC) (GLenum target, GLint mode);
}

version (GL_EXT_paletted_texture) { } else {
version = GL_EXT_paletted_texture;
version (GL_GLEXT_PROTOTYPES) {
void glColorTableEXT (GLenum, GLenum, GLsizei, GLenum, GLenum, GLvoid *);
void glGetColorTableEXT (GLenum, GLenum, GLenum, GLvoid *);
void glGetColorTableParameterivEXT (GLenum, GLenum, GLint *);
void glGetColorTableParameterfvEXT (GLenum, GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOLORTABLEEXTPROC) (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, GLvoid *table);
alias void (*PFNGLGETCOLORTABLEEXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *data);
alias void (*PFNGLGETCOLORTABLEPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETCOLORTABLEPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
}

version (GL_EXT_clip_volume_hint) { } else {
version = GL_EXT_clip_volume_hint;
}

version (GL_SGIX_list_priority) { } else {
version = GL_SGIX_list_priority;
version (GL_GLEXT_PROTOTYPES) {
void glGetListParameterfvSGIX (GLuint, GLenum, GLfloat *);
void glGetListParameterivSGIX (GLuint, GLenum, GLint *);
void glListParameterfSGIX (GLuint, GLenum, GLfloat);
void glListParameterfvSGIX (GLuint, GLenum, GLfloat *);
void glListParameteriSGIX (GLuint, GLenum, GLint);
void glListParameterivSGIX (GLuint, GLenum, GLint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGETLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, GLfloat *params);
alias void (*PFNGLGETLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, GLint *params);
alias void (*PFNGLLISTPARAMETERFSGIXPROC) (GLuint list, GLenum pname, GLfloat param);
alias void (*PFNGLLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, GLfloat *params);
alias void (*PFNGLLISTPARAMETERISGIXPROC) (GLuint list, GLenum pname, GLint param);
alias void (*PFNGLLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, GLint *params);
}

version (GL_SGIX_ir_instrument1) { } else {
version = GL_SGIX_ir_instrument1;
}

version (GL_SGIX_calligraphic_fragment) { } else {
version = GL_SGIX_calligraphic_fragment;
}

version (GL_SGIX_texture_lod_bias) { } else {
version = GL_SGIX_texture_lod_bias;
}

version (GL_SGIX_shadow_ambient) { } else {
version = GL_SGIX_shadow_ambient;
}

version (GL_EXT_index_texture) { } else {
version = GL_EXT_index_texture;
}

version (GL_EXT_index_material) { } else {
version = GL_EXT_index_material;
version (GL_GLEXT_PROTOTYPES) {
void glIndexMaterialEXT (GLenum, GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLINDEXMATERIALEXTPROC) (GLenum face, GLenum mode);
}

version (GL_EXT_index_func) { } else {
version = GL_EXT_index_func;
version (GL_GLEXT_PROTOTYPES) {
void glIndexFuncEXT (GLenum, GLclampf);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLINDEXFUNCEXTPROC) (GLenum func, GLclampf ref);
}

version (GL_EXT_index_array_formats) { } else {
version = GL_EXT_index_array_formats;
}

version (GL_EXT_compiled_vertex_array) { } else {
version = GL_EXT_compiled_vertex_array;
version (GL_GLEXT_PROTOTYPES) {
void glLockArraysEXT (GLint, GLsizei);
void glUnlockArraysEXT ();
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLLOCKARRAYSEXTPROC) (GLint first, GLsizei count);
alias void (*PFNGLUNLOCKARRAYSEXTPROC) ();
}

version (GL_EXT_cull_vertex) { } else {
version = GL_EXT_cull_vertex;
version (GL_GLEXT_PROTOTYPES) {
void glCullParameterdvEXT (GLenum, GLdouble *);
void glCullParameterfvEXT (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCULLPARAMETERDVEXTPROC) (GLenum pname, GLdouble *params);
alias void (*PFNGLCULLPARAMETERFVEXTPROC) (GLenum pname, GLfloat *params);
}

version (GL_SGIX_ycrcb) { } else {
version = GL_SGIX_ycrcb;
}

version (GL_SGIX_fragment_lighting) { } else {
version = GL_SGIX_fragment_lighting;
version (GL_GLEXT_PROTOTYPES) {
void glFragmentColorMaterialSGIX (GLenum, GLenum);
void glFragmentLightfSGIX (GLenum, GLenum, GLfloat);
void glFragmentLightfvSGIX (GLenum, GLenum, GLfloat *);
void glFragmentLightiSGIX (GLenum, GLenum, GLint);
void glFragmentLightivSGIX (GLenum, GLenum, GLint *);
void glFragmentLightModelfSGIX (GLenum, GLfloat);
void glFragmentLightModelfvSGIX (GLenum, GLfloat *);
void glFragmentLightModeliSGIX (GLenum, GLint);
void glFragmentLightModelivSGIX (GLenum, GLint *);
void glFragmentMaterialfSGIX (GLenum, GLenum, GLfloat);
void glFragmentMaterialfvSGIX (GLenum, GLenum, GLfloat *);
void glFragmentMaterialiSGIX (GLenum, GLenum, GLint);
void glFragmentMaterialivSGIX (GLenum, GLenum, GLint *);
void glGetFragmentLightfvSGIX (GLenum, GLenum, GLfloat *);
void glGetFragmentLightivSGIX (GLenum, GLenum, GLint *);
void glGetFragmentMaterialfvSGIX (GLenum, GLenum, GLfloat *);
void glGetFragmentMaterialivSGIX (GLenum, GLenum, GLint *);
void glLightEnviSGIX (GLenum, GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLFRAGMENTCOLORMATERIALSGIXPROC) (GLenum face, GLenum mode);
alias void (*PFNGLFRAGMENTLIGHTFSGIXPROC) (GLenum light, GLenum pname, GLfloat param);
alias void (*PFNGLFRAGMENTLIGHTFVSGIXPROC) (GLenum light, GLenum pname, GLfloat *params);
alias void (*PFNGLFRAGMENTLIGHTISGIXPROC) (GLenum light, GLenum pname, GLint param);
alias void (*PFNGLFRAGMENTLIGHTIVSGIXPROC) (GLenum light, GLenum pname, GLint *params);
alias void (*PFNGLFRAGMENTLIGHTMODELFSGIXPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLFRAGMENTLIGHTMODELFVSGIXPROC) (GLenum pname, GLfloat *params);
alias void (*PFNGLFRAGMENTLIGHTMODELISGIXPROC) (GLenum pname, GLint param);
alias void (*PFNGLFRAGMENTLIGHTMODELIVSGIXPROC) (GLenum pname, GLint *params);
alias void (*PFNGLFRAGMENTMATERIALFSGIXPROC) (GLenum face, GLenum pname, GLfloat param);
alias void (*PFNGLFRAGMENTMATERIALFVSGIXPROC) (GLenum face, GLenum pname, GLfloat *params);
alias void (*PFNGLFRAGMENTMATERIALISGIXPROC) (GLenum face, GLenum pname, GLint param);
alias void (*PFNGLFRAGMENTMATERIALIVSGIXPROC) (GLenum face, GLenum pname, GLint *params);
alias void (*PFNGLGETFRAGMENTLIGHTFVSGIXPROC) (GLenum light, GLenum pname, GLfloat *params);
alias void (*PFNGLGETFRAGMENTLIGHTIVSGIXPROC) (GLenum light, GLenum pname, GLint *params);
alias void (*PFNGLGETFRAGMENTMATERIALFVSGIXPROC) (GLenum face, GLenum pname, GLfloat *params);
alias void (*PFNGLGETFRAGMENTMATERIALIVSGIXPROC) (GLenum face, GLenum pname, GLint *params);
alias void (*PFNGLLIGHTENVISGIXPROC) (GLenum pname, GLint param);
}

version (GL_IBM_rasterpos_clip) { } else {
version = GL_IBM_rasterpos_clip;
}

version (GL_HP_texture_lighting) { } else {
version = GL_HP_texture_lighting;
}

version (GL_EXT_draw_range_elements) { } else {
version = GL_EXT_draw_range_elements;
version (GL_GLEXT_PROTOTYPES) {
void glDrawRangeElementsEXT (GLenum, GLuint, GLuint, GLsizei, GLenum, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDRAWRANGEELEMENTSEXTPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid *indices);
}

version (GL_WIN_phong_shading) { } else {
version = GL_WIN_phong_shading;
}

version (GL_WIN_specular_fog) { } else {
version = GL_WIN_specular_fog;
}

version (GL_EXT_light_texture) { } else {
version = GL_EXT_light_texture;
version (GL_GLEXT_PROTOTYPES) {
void glApplyTextureEXT (GLenum);
void glTextureLightEXT (GLenum);
void glTextureMaterialEXT (GLenum, GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLAPPLYTEXTUREEXTPROC) (GLenum mode);
alias void (*PFNGLTEXTURELIGHTEXTPROC) (GLenum pname);
alias void (*PFNGLTEXTUREMATERIALEXTPROC) (GLenum face, GLenum mode);
}

version (GL_SGIX_blend_alpha_minmax) { } else {
version = GL_SGIX_blend_alpha_minmax;
}

version (GL_EXT_bgra) { } else {
version = GL_EXT_bgra;
}

version (GL_SGIX_async) { } else {
version = GL_SGIX_async;
version (GL_GLEXT_PROTOTYPES) {
void glAsyncMarkerSGIX (GLuint);
GLint glFinishAsyncSGIX (GLuint *);
GLint glPollAsyncSGIX (GLuint *);
GLuint glGenAsyncMarkersSGIX (GLsizei);
void glDeleteAsyncMarkersSGIX (GLuint, GLsizei);
GLboolean glIsAsyncMarkerSGIX (GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLASYNCMARKERSGIXPROC) (GLuint marker);
alias GLint (*PFNGLFINISHASYNCSGIXPROC) (GLuint *markerp);
alias GLint (*PFNGLPOLLASYNCSGIXPROC) (GLuint *markerp);
alias GLuint (*PFNGLGENASYNCMARKERSSGIXPROC) (GLsizei range);
alias void (*PFNGLDELETEASYNCMARKERSSGIXPROC) (GLuint marker, GLsizei range);
alias GLboolean (*PFNGLISASYNCMARKERSGIXPROC) (GLuint marker);
}

version (GL_SGIX_async_pixel) { } else {
version = GL_SGIX_async_pixel;
}

version (GL_SGIX_async_histogram) { } else {
version = GL_SGIX_async_histogram;
}

version (GL_INTEL_parallel_arrays) { } else {
version = GL_INTEL_parallel_arrays;
version (GL_GLEXT_PROTOTYPES) {
void glVertexPointervINTEL (GLint, GLenum, GLvoid* *);
void glNormalPointervINTEL (GLenum, GLvoid* *);
void glColorPointervINTEL (GLint, GLenum, GLvoid* *);
void glTexCoordPointervINTEL (GLint, GLenum, GLvoid* *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLVERTEXPOINTERVINTELPROC) (GLint size, GLenum type, GLvoid* *pointer);
alias void (*PFNGLNORMALPOINTERVINTELPROC) (GLenum type, GLvoid* *pointer);
alias void (*PFNGLCOLORPOINTERVINTELPROC) (GLint size, GLenum type, GLvoid* *pointer);
alias void (*PFNGLTEXCOORDPOINTERVINTELPROC) (GLint size, GLenum type, GLvoid* *pointer);
}

version (GL_HP_occlusion_test) { } else {
version = GL_HP_occlusion_test;
}

version (GL_EXT_pixel_transform) { } else {
version = GL_EXT_pixel_transform;
version (GL_GLEXT_PROTOTYPES) {
void glPixelTransformParameteriEXT (GLenum, GLenum, GLint);
void glPixelTransformParameterfEXT (GLenum, GLenum, GLfloat);
void glPixelTransformParameterivEXT (GLenum, GLenum, GLint *);
void glPixelTransformParameterfvEXT (GLenum, GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPIXELTRANSFORMPARAMETERIEXTPROC) (GLenum target, GLenum pname, GLint param);
alias void (*PFNGLPIXELTRANSFORMPARAMETERFEXTPROC) (GLenum target, GLenum pname, GLfloat param);
alias void (*PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
}

version (GL_EXT_pixel_transform_color_table) { } else {
version = GL_EXT_pixel_transform_color_table;
}

version (GL_EXT_shared_texture_palette) { } else {
version = GL_EXT_shared_texture_palette;
}

version (GL_EXT_separate_specular_color) { } else {
version = GL_EXT_separate_specular_color;
}

version (GL_EXT_secondary_color) { } else {
version = GL_EXT_secondary_color;
version (GL_GLEXT_PROTOTYPES) {
void glSecondaryColor3bEXT (GLbyte, GLbyte, GLbyte);
void glSecondaryColor3bvEXT (GLbyte *);
void glSecondaryColor3dEXT (GLdouble, GLdouble, GLdouble);
void glSecondaryColor3dvEXT (GLdouble *);
void glSecondaryColor3fEXT (GLfloat, GLfloat, GLfloat);
void glSecondaryColor3fvEXT (GLfloat *);
void glSecondaryColor3iEXT (GLint, GLint, GLint);
void glSecondaryColor3ivEXT (GLint *);
void glSecondaryColor3sEXT (GLshort, GLshort, GLshort);
void glSecondaryColor3svEXT (GLshort *);
void glSecondaryColor3ubEXT (GLubyte, GLubyte, GLubyte);
void glSecondaryColor3ubvEXT (GLubyte *);
void glSecondaryColor3uiEXT (GLuint, GLuint, GLuint);
void glSecondaryColor3uivEXT (GLuint *);
void glSecondaryColor3usEXT (GLushort, GLushort, GLushort);
void glSecondaryColor3usvEXT (GLushort *);
void glSecondaryColorPointerEXT (GLint, GLenum, GLsizei, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLSECONDARYCOLOR3BEXTPROC) (GLbyte red, GLbyte green, GLbyte blue);
alias void (*PFNGLSECONDARYCOLOR3BVEXTPROC) (GLbyte *v);
alias void (*PFNGLSECONDARYCOLOR3DEXTPROC) (GLdouble red, GLdouble green, GLdouble blue);
alias void (*PFNGLSECONDARYCOLOR3DVEXTPROC) (GLdouble *v);
alias void (*PFNGLSECONDARYCOLOR3FEXTPROC) (GLfloat red, GLfloat green, GLfloat blue);
alias void (*PFNGLSECONDARYCOLOR3FVEXTPROC) (GLfloat *v);
alias void (*PFNGLSECONDARYCOLOR3IEXTPROC) (GLint red, GLint green, GLint blue);
alias void (*PFNGLSECONDARYCOLOR3IVEXTPROC) (GLint *v);
alias void (*PFNGLSECONDARYCOLOR3SEXTPROC) (GLshort red, GLshort green, GLshort blue);
alias void (*PFNGLSECONDARYCOLOR3SVEXTPROC) (GLshort *v);
alias void (*PFNGLSECONDARYCOLOR3UBEXTPROC) (GLubyte red, GLubyte green, GLubyte blue);
alias void (*PFNGLSECONDARYCOLOR3UBVEXTPROC) (GLubyte *v);
alias void (*PFNGLSECONDARYCOLOR3UIEXTPROC) (GLuint red, GLuint green, GLuint blue);
alias void (*PFNGLSECONDARYCOLOR3UIVEXTPROC) (GLuint *v);
alias void (*PFNGLSECONDARYCOLOR3USEXTPROC) (GLushort red, GLushort green, GLushort blue);
alias void (*PFNGLSECONDARYCOLOR3USVEXTPROC) (GLushort *v);
alias void (*PFNGLSECONDARYCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLvoid *pointer);
}

version (GL_EXT_texture_perturb_normal) { } else {
version = GL_EXT_texture_perturb_normal;
version (GL_GLEXT_PROTOTYPES) {
void glTextureNormalEXT (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTEXTURENORMALEXTPROC) (GLenum mode);
}

version (GL_EXT_multi_draw_arrays) { } else {
version = GL_EXT_multi_draw_arrays;
version (GL_GLEXT_PROTOTYPES) {
void glMultiDrawArraysEXT (GLenum, GLint *, GLsizei *, GLsizei);
void glMultiDrawElementsEXT (GLenum, GLsizei *, GLenum, GLvoid* *, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLMULTIDRAWARRAYSEXTPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
alias void (*PFNGLMULTIDRAWELEMENTSEXTPROC) (GLenum mode, GLsizei *count, GLenum type, GLvoid* *indices, GLsizei primcount);
}

version (GL_EXT_fog_coord) { } else {
version = GL_EXT_fog_coord;
version (GL_GLEXT_PROTOTYPES) {
void glFogCoordfEXT (GLfloat);
void glFogCoordfvEXT (GLfloat *);
void glFogCoorddEXT (GLdouble);
void glFogCoorddvEXT (GLdouble *);
void glFogCoordPointerEXT (GLenum, GLsizei, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLFOGCOORDFEXTPROC) (GLfloat coord);
alias void (*PFNGLFOGCOORDFVEXTPROC) (GLfloat *coord);
alias void (*PFNGLFOGCOORDDEXTPROC) (GLdouble coord);
alias void (*PFNGLFOGCOORDDVEXTPROC) (GLdouble *coord);
alias void (*PFNGLFOGCOORDPOINTEREXTPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
}

version (GL_REND_screen_coordinates) { } else {
version = GL_REND_screen_coordinates;
}

version (GL_EXT_coordinate_frame) { } else {
version = GL_EXT_coordinate_frame;
version (GL_GLEXT_PROTOTYPES) {
void glTangent3bEXT (GLbyte, GLbyte, GLbyte);
void glTangent3bvEXT (GLbyte *);
void glTangent3dEXT (GLdouble, GLdouble, GLdouble);
void glTangent3dvEXT (GLdouble *);
void glTangent3fEXT (GLfloat, GLfloat, GLfloat);
void glTangent3fvEXT (GLfloat *);
void glTangent3iEXT (GLint, GLint, GLint);
void glTangent3ivEXT (GLint *);
void glTangent3sEXT (GLshort, GLshort, GLshort);
void glTangent3svEXT (GLshort *);
void glBinormal3bEXT (GLbyte, GLbyte, GLbyte);
void glBinormal3bvEXT (GLbyte *);
void glBinormal3dEXT (GLdouble, GLdouble, GLdouble);
void glBinormal3dvEXT (GLdouble *);
void glBinormal3fEXT (GLfloat, GLfloat, GLfloat);
void glBinormal3fvEXT (GLfloat *);
void glBinormal3iEXT (GLint, GLint, GLint);
void glBinormal3ivEXT (GLint *);
void glBinormal3sEXT (GLshort, GLshort, GLshort);
void glBinormal3svEXT (GLshort *);
void glTangentPointerEXT (GLenum, GLsizei, GLvoid *);
void glBinormalPointerEXT (GLenum, GLsizei, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTANGENT3BEXTPROC) (GLbyte tx, GLbyte ty, GLbyte tz);
alias void (*PFNGLTANGENT3BVEXTPROC) (GLbyte *v);
alias void (*PFNGLTANGENT3DEXTPROC) (GLdouble tx, GLdouble ty, GLdouble tz);
alias void (*PFNGLTANGENT3DVEXTPROC) (GLdouble *v);
alias void (*PFNGLTANGENT3FEXTPROC) (GLfloat tx, GLfloat ty, GLfloat tz);
alias void (*PFNGLTANGENT3FVEXTPROC) (GLfloat *v);
alias void (*PFNGLTANGENT3IEXTPROC) (GLint tx, GLint ty, GLint tz);
alias void (*PFNGLTANGENT3IVEXTPROC) (GLint *v);
alias void (*PFNGLTANGENT3SEXTPROC) (GLshort tx, GLshort ty, GLshort tz);
alias void (*PFNGLTANGENT3SVEXTPROC) (GLshort *v);
alias void (*PFNGLBINORMAL3BEXTPROC) (GLbyte bx, GLbyte by, GLbyte bz);
alias void (*PFNGLBINORMAL3BVEXTPROC) (GLbyte *v);
alias void (*PFNGLBINORMAL3DEXTPROC) (GLdouble bx, GLdouble by, GLdouble bz);
alias void (*PFNGLBINORMAL3DVEXTPROC) (GLdouble *v);
alias void (*PFNGLBINORMAL3FEXTPROC) (GLfloat bx, GLfloat by, GLfloat bz);
alias void (*PFNGLBINORMAL3FVEXTPROC) (GLfloat *v);
alias void (*PFNGLBINORMAL3IEXTPROC) (GLint bx, GLint by, GLint bz);
alias void (*PFNGLBINORMAL3IVEXTPROC) (GLint *v);
alias void (*PFNGLBINORMAL3SEXTPROC) (GLshort bx, GLshort by, GLshort bz);
alias void (*PFNGLBINORMAL3SVEXTPROC) (GLshort *v);
alias void (*PFNGLTANGENTPOINTEREXTPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFNGLBINORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, GLvoid *pointer);
}

version (GL_EXT_texture_env_combine) { } else {
version = GL_EXT_texture_env_combine;
}

version (GL_APPLE_specular_vector) { } else {
version = GL_APPLE_specular_vector;
}

version (GL_APPLE_transform_hint) { } else {
version = GL_APPLE_transform_hint;
}

version (GL_SGIX_fog_scale) { } else {
version = GL_SGIX_fog_scale;
}

version (GL_SUNX_constant_data) { } else {
version = GL_SUNX_constant_data;
version (GL_GLEXT_PROTOTYPES) {
void glFinishTextureSUNX ();
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLFINISHTEXTURESUNXPROC) ();
}

version (GL_SUN_global_alpha) { } else {
version = GL_SUN_global_alpha;
version (GL_GLEXT_PROTOTYPES) {
void glGlobalAlphaFactorbSUN (GLbyte);
void glGlobalAlphaFactorsSUN (GLshort);
void glGlobalAlphaFactoriSUN (GLint);
void glGlobalAlphaFactorfSUN (GLfloat);
void glGlobalAlphaFactordSUN (GLdouble);
void glGlobalAlphaFactorubSUN (GLubyte);
void glGlobalAlphaFactorusSUN (GLushort);
void glGlobalAlphaFactoruiSUN (GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGLOBALALPHAFACTORBSUNPROC) (GLbyte factor);
alias void (*PFNGLGLOBALALPHAFACTORSSUNPROC) (GLshort factor);
alias void (*PFNGLGLOBALALPHAFACTORISUNPROC) (GLint factor);
alias void (*PFNGLGLOBALALPHAFACTORFSUNPROC) (GLfloat factor);
alias void (*PFNGLGLOBALALPHAFACTORDSUNPROC) (GLdouble factor);
alias void (*PFNGLGLOBALALPHAFACTORUBSUNPROC) (GLubyte factor);
alias void (*PFNGLGLOBALALPHAFACTORUSSUNPROC) (GLushort factor);
alias void (*PFNGLGLOBALALPHAFACTORUISUNPROC) (GLuint factor);
}

version (GL_SUN_triangle_list) { } else {
version = GL_SUN_triangle_list;
version (GL_GLEXT_PROTOTYPES) {
void glReplacementCodeuiSUN (GLuint);
void glReplacementCodeusSUN (GLushort);
void glReplacementCodeubSUN (GLubyte);
void glReplacementCodeuivSUN (GLuint *);
void glReplacementCodeusvSUN (GLushort *);
void glReplacementCodeubvSUN (GLubyte *);
void glReplacementCodePointerSUN (GLenum, GLsizei, GLvoid* *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLREPLACEMENTCODEUISUNPROC) (GLuint code);
alias void (*PFNGLREPLACEMENTCODEUSSUNPROC) (GLushort code);
alias void (*PFNGLREPLACEMENTCODEUBSUNPROC) (GLubyte code);
alias void (*PFNGLREPLACEMENTCODEUIVSUNPROC) (GLuint *code);
alias void (*PFNGLREPLACEMENTCODEUSVSUNPROC) (GLushort *code);
alias void (*PFNGLREPLACEMENTCODEUBVSUNPROC) (GLubyte *code);
alias void (*PFNGLREPLACEMENTCODEPOINTERSUNPROC) (GLenum type, GLsizei stride, GLvoid* *pointer);
}

version (GL_SUN_vertex) { } else {
version = GL_SUN_vertex;
version (GL_GLEXT_PROTOTYPES) {
void glColor4ubVertex2fSUN (GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat);
void glColor4ubVertex2fvSUN (GLubyte *, GLfloat *);
void glColor4ubVertex3fSUN (GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat);
void glColor4ubVertex3fvSUN (GLubyte *, GLfloat *);
void glColor3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glColor3fVertex3fvSUN (GLfloat *, GLfloat *);
void glNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glNormal3fVertex3fvSUN (GLfloat *, GLfloat *);
void glColor4fNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glColor4fNormal3fVertex3fvSUN (GLfloat *, GLfloat *, GLfloat *);
void glTexCoord2fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glTexCoord2fVertex3fvSUN (GLfloat *, GLfloat *);
void glTexCoord4fVertex4fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glTexCoord4fVertex4fvSUN (GLfloat *, GLfloat *);
void glTexCoord2fColor4ubVertex3fSUN (GLfloat, GLfloat, GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat);
void glTexCoord2fColor4ubVertex3fvSUN (GLfloat *, GLubyte *, GLfloat *);
void glTexCoord2fColor3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glTexCoord2fColor3fVertex3fvSUN (GLfloat *, GLfloat *, GLfloat *);
void glTexCoord2fNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glTexCoord2fNormal3fVertex3fvSUN (GLfloat *, GLfloat *, GLfloat *);
void glTexCoord2fColor4fNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glTexCoord2fColor4fNormal3fVertex3fvSUN (GLfloat *, GLfloat *, GLfloat *, GLfloat *);
void glTexCoord4fColor4fNormal3fVertex4fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glTexCoord4fColor4fNormal3fVertex4fvSUN (GLfloat *, GLfloat *, GLfloat *, GLfloat *);
void glReplacementCodeuiVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiVertex3fvSUN (GLuint *, GLfloat *);
void glReplacementCodeuiColor4ubVertex3fSUN (GLuint, GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiColor4ubVertex3fvSUN (GLuint *, GLubyte *, GLfloat *);
void glReplacementCodeuiColor3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiColor3fVertex3fvSUN (GLuint *, GLfloat *, GLfloat *);
void glReplacementCodeuiNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiNormal3fVertex3fvSUN (GLuint *, GLfloat *, GLfloat *);
void glReplacementCodeuiColor4fNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiColor4fNormal3fVertex3fvSUN (GLuint *, GLfloat *, GLfloat *, GLfloat *);
void glReplacementCodeuiTexCoord2fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiTexCoord2fVertex3fvSUN (GLuint *, GLfloat *, GLfloat *);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN (GLuint *, GLfloat *, GLfloat *, GLfloat *);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN (GLuint *, GLfloat *, GLfloat *, GLfloat *, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOLOR4UBVERTEX2FSUNPROC) (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
alias void (*PFNGLCOLOR4UBVERTEX2FVSUNPROC) (GLubyte *c, GLfloat *v);
alias void (*PFNGLCOLOR4UBVERTEX3FSUNPROC) (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLCOLOR4UBVERTEX3FVSUNPROC) (GLubyte *c, GLfloat *v);
alias void (*PFNGLCOLOR3FVERTEX3FSUNPROC) (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLCOLOR3FVERTEX3FVSUNPROC) (GLfloat *c, GLfloat *v);
alias void (*PFNGLNORMAL3FVERTEX3FSUNPROC) (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLNORMAL3FVERTEX3FVSUNPROC) (GLfloat *n, GLfloat *v);
alias void (*PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLfloat *c, GLfloat *n, GLfloat *v);
alias void (*PFNGLTEXCOORD2FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLTEXCOORD2FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *v);
alias void (*PFNGLTEXCOORD4FVERTEX4FSUNPROC) (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLTEXCOORD4FVERTEX4FVSUNPROC) (GLfloat *tc, GLfloat *v);
alias void (*PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC) (GLfloat *tc, GLubyte *c, GLfloat *v);
alias void (*PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *c, GLfloat *v);
alias void (*PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *n, GLfloat *v);
alias void (*PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLfloat *tc, GLfloat *c, GLfloat *n, GLfloat *v);
alias void (*PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC) (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC) (GLfloat *tc, GLfloat *c, GLfloat *n, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC) (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC) (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC) (GLuint *rc, GLubyte *c, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC) (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *c, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *n, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *c, GLfloat *n, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *tc, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *tc, GLfloat *n, GLfloat *v);
alias void (*PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (GLuint *rc, GLfloat *tc, GLfloat *c, GLfloat *n, GLfloat *v);
}

version (GL_EXT_blend_func_separate) { } else {
version = GL_EXT_blend_func_separate;
version (GL_GLEXT_PROTOTYPES) {
void glBlendFuncSeparateEXT (GLenum, GLenum, GLenum, GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBLENDFUNCSEPARATEEXTPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
}

version (GL_INGR_blend_func_separate) { } else {
version = GL_INGR_blend_func_separate;
version (GL_GLEXT_PROTOTYPES) {
void glBlendFuncSeparateINGR (GLenum, GLenum, GLenum, GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBLENDFUNCSEPARATEINGRPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
}

version (GL_INGR_color_clamp) { } else {
version = GL_INGR_color_clamp;
}

version (GL_INGR_interlace_read) { } else {
version = GL_INGR_interlace_read;
}

version (GL_EXT_stencil_wrap) { } else {
version = GL_EXT_stencil_wrap;
}

version (GL_EXT_422_pixels) { } else {
version = GL_EXT_422_pixels;
}

version (GL_NV_texgen_reflection) { } else {
version = GL_NV_texgen_reflection;
}

version (GL_SUN_convolution_border_modes) { } else {
version = GL_SUN_convolution_border_modes;
}

version (GL_EXT_texture_env_add) { } else {
version = GL_EXT_texture_env_add;
}

version (GL_EXT_texture_lod_bias) { } else {
version = GL_EXT_texture_lod_bias;
}

version (GL_EXT_texture_filter_anisotropic) { } else {
version = GL_EXT_texture_filter_anisotropic;
}

version (GL_EXT_vertex_weighting) { } else {
version = GL_EXT_vertex_weighting;
version (GL_GLEXT_PROTOTYPES) {
void glVertexWeightfEXT (GLfloat);
void glVertexWeightfvEXT (GLfloat *);
void glVertexWeightPointerEXT (GLsizei, GLenum, GLsizei, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLVERTEXWEIGHTFEXTPROC) (GLfloat weight);
alias void (*PFNGLVERTEXWEIGHTFVEXTPROC) (GLfloat *weight);
alias void (*PFNGLVERTEXWEIGHTPOINTEREXTPROC) (GLsizei size, GLenum type, GLsizei stride, GLvoid *pointer);
}

version (GL_NV_light_max_exponent) { } else {
version = GL_NV_light_max_exponent;
}

version (GL_NV_vertex_array_range) { } else {
version = GL_NV_vertex_array_range;
version (GL_GLEXT_PROTOTYPES) {
void glFlushVertexArrayRangeNV ();
void glVertexArrayRangeNV (GLsizei, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLFLUSHVERTEXARRAYRANGENVPROC) ();
alias void (*PFNGLVERTEXARRAYRANGENVPROC) (GLsizei length, GLvoid *pointer);
}

version (GL_NV_register_combiners) { } else {
version = GL_NV_register_combiners;
version (GL_GLEXT_PROTOTYPES) {
void glCombinerParameterfvNV (GLenum, GLfloat *);
void glCombinerParameterfNV (GLenum, GLfloat);
void glCombinerParameterivNV (GLenum, GLint *);
void glCombinerParameteriNV (GLenum, GLint);
void glCombinerInputNV (GLenum, GLenum, GLenum, GLenum, GLenum, GLenum);
void glCombinerOutputNV (GLenum, GLenum, GLenum, GLenum, GLenum, GLenum, GLenum, GLboolean, GLboolean, GLboolean);
void glFinalCombinerInputNV (GLenum, GLenum, GLenum, GLenum);
void glGetCombinerInputParameterfvNV (GLenum, GLenum, GLenum, GLenum, GLfloat *);
void glGetCombinerInputParameterivNV (GLenum, GLenum, GLenum, GLenum, GLint *);
void glGetCombinerOutputParameterfvNV (GLenum, GLenum, GLenum, GLfloat *);
void glGetCombinerOutputParameterivNV (GLenum, GLenum, GLenum, GLint *);
void glGetFinalCombinerInputParameterfvNV (GLenum, GLenum, GLfloat *);
void glGetFinalCombinerInputParameterivNV (GLenum, GLenum, GLint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOMBINERPARAMETERFVNVPROC) (GLenum pname, GLfloat *params);
alias void (*PFNGLCOMBINERPARAMETERFNVPROC) (GLenum pname, GLfloat param);
alias void (*PFNGLCOMBINERPARAMETERIVNVPROC) (GLenum pname, GLint *params);
alias void (*PFNGLCOMBINERPARAMETERINVPROC) (GLenum pname, GLint param);
alias void (*PFNGLCOMBINERINPUTNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
alias void (*PFNGLCOMBINEROUTPUTNVPROC) (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
alias void (*PFNGLFINALCOMBINERINPUTNVPROC) (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
alias void (*PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat *params);
alias void (*PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint *params);
alias void (*PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC) (GLenum stage, GLenum portion, GLenum pname, GLfloat *params);
alias void (*PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC) (GLenum stage, GLenum portion, GLenum pname, GLint *params);
alias void (*PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC) (GLenum variable, GLenum pname, GLfloat *params);
alias void (*PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC) (GLenum variable, GLenum pname, GLint *params);
}

version (GL_NV_fog_distance) { } else {
version = GL_NV_fog_distance;
}

version (GL_NV_texgen_emboss) { } else {
version = GL_NV_texgen_emboss;
}

version (GL_NV_blend_square) { } else {
version = GL_NV_blend_square;
}

version (GL_NV_texture_env_combine4) { } else {
version = GL_NV_texture_env_combine4;
}

version (GL_MESA_resize_buffers) { } else {
version = GL_MESA_resize_buffers;
version (GL_GLEXT_PROTOTYPES) {
void glResizeBuffersMESA ();
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLRESIZEBUFFERSMESAPROC) ();
}

version (GL_MESA_window_pos) { } else {
version = GL_MESA_window_pos;
version (GL_GLEXT_PROTOTYPES) {
void glWindowPos2dMESA (GLdouble, GLdouble);
void glWindowPos2dvMESA (GLdouble *);
void glWindowPos2fMESA (GLfloat, GLfloat);
void glWindowPos2fvMESA (GLfloat *);
void glWindowPos2iMESA (GLint, GLint);
void glWindowPos2ivMESA (GLint *);
void glWindowPos2sMESA (GLshort, GLshort);
void glWindowPos2svMESA (GLshort *);
void glWindowPos3dMESA (GLdouble, GLdouble, GLdouble);
void glWindowPos3dvMESA (GLdouble *);
void glWindowPos3fMESA (GLfloat, GLfloat, GLfloat);
void glWindowPos3fvMESA (GLfloat *);
void glWindowPos3iMESA (GLint, GLint, GLint);
void glWindowPos3ivMESA (GLint *);
void glWindowPos3sMESA (GLshort, GLshort, GLshort);
void glWindowPos3svMESA (GLshort *);
void glWindowPos4dMESA (GLdouble, GLdouble, GLdouble, GLdouble);
void glWindowPos4dvMESA (GLdouble *);
void glWindowPos4fMESA (GLfloat, GLfloat, GLfloat, GLfloat);
void glWindowPos4fvMESA (GLfloat *);
void glWindowPos4iMESA (GLint, GLint, GLint, GLint);
void glWindowPos4ivMESA (GLint *);
void glWindowPos4sMESA (GLshort, GLshort, GLshort, GLshort);
void glWindowPos4svMESA (GLshort *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLWINDOWPOS2DMESAPROC) (GLdouble x, GLdouble y);
alias void (*PFNGLWINDOWPOS2DVMESAPROC) (GLdouble *v);
alias void (*PFNGLWINDOWPOS2FMESAPROC) (GLfloat x, GLfloat y);
alias void (*PFNGLWINDOWPOS2FVMESAPROC) (GLfloat *v);
alias void (*PFNGLWINDOWPOS2IMESAPROC) (GLint x, GLint y);
alias void (*PFNGLWINDOWPOS2IVMESAPROC) (GLint *v);
alias void (*PFNGLWINDOWPOS2SMESAPROC) (GLshort x, GLshort y);
alias void (*PFNGLWINDOWPOS2SVMESAPROC) (GLshort *v);
alias void (*PFNGLWINDOWPOS3DMESAPROC) (GLdouble x, GLdouble y, GLdouble z);
alias void (*PFNGLWINDOWPOS3DVMESAPROC) (GLdouble *v);
alias void (*PFNGLWINDOWPOS3FMESAPROC) (GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLWINDOWPOS3FVMESAPROC) (GLfloat *v);
alias void (*PFNGLWINDOWPOS3IMESAPROC) (GLint x, GLint y, GLint z);
alias void (*PFNGLWINDOWPOS3IVMESAPROC) (GLint *v);
alias void (*PFNGLWINDOWPOS3SMESAPROC) (GLshort x, GLshort y, GLshort z);
alias void (*PFNGLWINDOWPOS3SVMESAPROC) (GLshort *v);
alias void (*PFNGLWINDOWPOS4DMESAPROC) (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLWINDOWPOS4DVMESAPROC) (GLdouble *v);
alias void (*PFNGLWINDOWPOS4FMESAPROC) (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLWINDOWPOS4FVMESAPROC) (GLfloat *v);
alias void (*PFNGLWINDOWPOS4IMESAPROC) (GLint x, GLint y, GLint z, GLint w);
alias void (*PFNGLWINDOWPOS4IVMESAPROC) (GLint *v);
alias void (*PFNGLWINDOWPOS4SMESAPROC) (GLshort x, GLshort y, GLshort z, GLshort w);
alias void (*PFNGLWINDOWPOS4SVMESAPROC) (GLshort *v);
}

version (GL_IBM_cull_vertex) { } else {
version = GL_IBM_cull_vertex;
}

version (GL_IBM_multimode_draw_arrays) { } else {
version = GL_IBM_multimode_draw_arrays;
version (GL_GLEXT_PROTOTYPES) {
void glMultiModeDrawArraysIBM (GLenum *, GLint *, GLsizei *, GLsizei, GLint);
void glMultiModeDrawElementsIBM (GLenum *, GLsizei *, GLenum, GLvoid* *, GLsizei, GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLMULTIMODEDRAWARRAYSIBMPROC) (GLenum *mode, GLint *first, GLsizei *count, GLsizei primcount, GLint modestride);
alias void (*PFNGLMULTIMODEDRAWELEMENTSIBMPROC) (GLenum *mode, GLsizei *count, GLenum type, GLvoid* *indices, GLsizei primcount, GLint modestride);
}

version (GL_IBM_vertex_array_lists) { } else {
version = GL_IBM_vertex_array_lists;
version (GL_GLEXT_PROTOTYPES) {
void glColorPointerListIBM (GLint, GLenum, GLint, GLvoid* *, GLint);
void glSecondaryColorPointerListIBM (GLint, GLenum, GLint, GLvoid* *, GLint);
void glEdgeFlagPointerListIBM (GLint, GLboolean* *, GLint);
void glFogCoordPointerListIBM (GLenum, GLint, GLvoid* *, GLint);
void glIndexPointerListIBM (GLenum, GLint, GLvoid* *, GLint);
void glNormalPointerListIBM (GLenum, GLint, GLvoid* *, GLint);
void glTexCoordPointerListIBM (GLint, GLenum, GLint, GLvoid* *, GLint);
void glVertexPointerListIBM (GLint, GLenum, GLint, GLvoid* *, GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias void (*PFNGLSECONDARYCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias void (*PFNGLEDGEFLAGPOINTERLISTIBMPROC) (GLint stride, GLboolean* *pointer, GLint ptrstride);
alias void (*PFNGLFOGCOORDPOINTERLISTIBMPROC) (GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias void (*PFNGLINDEXPOINTERLISTIBMPROC) (GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias void (*PFNGLNORMALPOINTERLISTIBMPROC) (GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias void (*PFNGLTEXCOORDPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
alias void (*PFNGLVERTEXPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, GLvoid* *pointer, GLint ptrstride);
}

version (GL_SGIX_subsample) { } else {
version = GL_SGIX_subsample;
}

version (GL_SGIX_ycrcba) { } else {
version = GL_SGIX_ycrcba;
}

version (GL_SGIX_ycrcb_subsample) { } else {
version = GL_SGIX_ycrcb_subsample;
}

version (GL_SGIX_depth_pass_instrument) { } else {
version = GL_SGIX_depth_pass_instrument;
}

version (GL_3DFX_texture_compression_FXT1) { } else {
version = GL_3DFX_texture_compression_FXT1;
}

version (GL_3DFX_multisample) { } else {
version = GL_3DFX_multisample;
}

version (GL_3DFX_tbuffer) { } else {
version = GL_3DFX_tbuffer;
version (GL_GLEXT_PROTOTYPES) {
void glTbufferMask3DFX (GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTBUFFERMASK3DFXPROC) (GLuint mask);
}

version (GL_EXT_multisample) { } else {
version = GL_EXT_multisample;
version (GL_GLEXT_PROTOTYPES) {
void glSampleMaskEXT (GLclampf, GLboolean);
void glSamplePatternEXT (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLSAMPLEMASKEXTPROC) (GLclampf value, GLboolean invert);
alias void (*PFNGLSAMPLEPATTERNEXTPROC) (GLenum pattern);
}

version (GL_SGIX_vertex_preclip) { } else {
version = GL_SGIX_vertex_preclip;
}

version (GL_SGIX_convolution_accuracy) { } else {
version = GL_SGIX_convolution_accuracy;
}

version (GL_SGIX_resample) { } else {
version = GL_SGIX_resample;
}

version (GL_SGIS_point_line_texgen) { } else {
version = GL_SGIS_point_line_texgen;
}

version (GL_SGIS_texture_color_mask) { } else {
version = GL_SGIS_texture_color_mask;
version (GL_GLEXT_PROTOTYPES) {
void glTextureColorMaskSGIS (GLboolean, GLboolean, GLboolean, GLboolean);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTEXTURECOLORMASKSGISPROC) (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
}

version (GL_SGIX_igloo_interface) { } else {
version = GL_SGIX_igloo_interface;
version (GL_GLEXT_PROTOTYPES) {
void glIglooInterfaceSGIX (GLenum, GLvoid *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLIGLOOINTERFACESGIXPROC) (GLenum pname, GLvoid *params);
}

version (GL_EXT_texture_env_dot3) { } else {
version = GL_EXT_texture_env_dot3;
}

version (GL_ATI_texture_mirror_once) { } else {
version = GL_ATI_texture_mirror_once;
}

version (GL_NV_fence) { } else {
version = GL_NV_fence;
version (GL_GLEXT_PROTOTYPES) {
void glDeleteFencesNV (GLsizei, GLuint *);
void glGenFencesNV (GLsizei, GLuint *);
GLboolean glIsFenceNV (GLuint);
GLboolean glTestFenceNV (GLuint);
void glGetFenceivNV (GLuint, GLenum, GLint *);
void glFinishFenceNV (GLuint);
void glSetFenceNV (GLuint, GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDELETEFENCESNVPROC) (GLsizei n, GLuint *fences);
alias void (*PFNGLGENFENCESNVPROC) (GLsizei n, GLuint *fences);
alias GLboolean (*PFNGLISFENCENVPROC) (GLuint fence);
alias GLboolean (*PFNGLTESTFENCENVPROC) (GLuint fence);
alias void (*PFNGLGETFENCEIVNVPROC) (GLuint fence, GLenum pname, GLint *params);
alias void (*PFNGLFINISHFENCENVPROC) (GLuint fence);
alias void (*PFNGLSETFENCENVPROC) (GLuint fence, GLenum condition);
}

version (GL_NV_evaluators) { } else {
version = GL_NV_evaluators;
version (GL_GLEXT_PROTOTYPES) {
void glMapControlPointsNV (GLenum, GLuint, GLenum, GLsizei, GLsizei, GLint, GLint, GLboolean, GLvoid *);
void glMapParameterivNV (GLenum, GLenum, GLint *);
void glMapParameterfvNV (GLenum, GLenum, GLfloat *);
void glGetMapControlPointsNV (GLenum, GLuint, GLenum, GLsizei, GLsizei, GLboolean, GLvoid *);
void glGetMapParameterivNV (GLenum, GLenum, GLint *);
void glGetMapParameterfvNV (GLenum, GLenum, GLfloat *);
void glGetMapAttribParameterivNV (GLenum, GLuint, GLenum, GLint *);
void glGetMapAttribParameterfvNV (GLenum, GLuint, GLenum, GLfloat *);
void glEvalMapsNV (GLenum, GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, GLvoid *points);
alias void (*PFNGLMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid *points);
alias void (*PFNGLGETMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, GLint *params);
alias void (*PFNGLGETMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, GLfloat *params);
alias void (*PFNGLGETMAPATTRIBPARAMETERIVNVPROC) (GLenum target, GLuint index, GLenum pname, GLint *params);
alias void (*PFNGLGETMAPATTRIBPARAMETERFVNVPROC) (GLenum target, GLuint index, GLenum pname, GLfloat *params);
alias void (*PFNGLEVALMAPSNVPROC) (GLenum target, GLenum mode);
}

version (GL_NV_packed_depth_stencil) { } else {
version = GL_NV_packed_depth_stencil;
}

version (GL_NV_register_combiners2) { } else {
version = GL_NV_register_combiners2;
version (GL_GLEXT_PROTOTYPES) {
void glCombinerStageParameterfvNV (GLenum, GLenum, GLfloat *);
void glGetCombinerStageParameterfvNV (GLenum, GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, GLfloat *params);
alias void (*PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, GLfloat *params);
}

version (GL_NV_texture_compression_vtc) { } else {
version = GL_NV_texture_compression_vtc;
}

version (GL_NV_texture_rectangle) { } else {
version = GL_NV_texture_rectangle;
}

version (GL_NV_texture_shader) { } else {
version = GL_NV_texture_shader;
}

version (GL_NV_texture_shader2) { } else {
version = GL_NV_texture_shader2;
}

version (GL_NV_vertex_array_range2) { } else {
version = GL_NV_vertex_array_range2;
}

version (GL_NV_vertex_program) { } else {
version = GL_NV_vertex_program;
version (GL_GLEXT_PROTOTYPES) {
GLboolean glAreProgramsResidentNV (GLsizei, GLuint *, GLboolean *);
void glBindProgramNV (GLenum, GLuint);
void glDeleteProgramsNV (GLsizei, GLuint *);
void glExecuteProgramNV (GLenum, GLuint, GLfloat *);
void glGenProgramsNV (GLsizei, GLuint *);
void glGetProgramParameterdvNV (GLenum, GLuint, GLenum, GLdouble *);
void glGetProgramParameterfvNV (GLenum, GLuint, GLenum, GLfloat *);
void glGetProgramivNV (GLuint, GLenum, GLint *);
void glGetProgramStringNV (GLuint, GLenum, GLubyte *);
void glGetTrackMatrixivNV (GLenum, GLuint, GLenum, GLint *);
void glGetVertexAttribdvNV (GLuint, GLenum, GLdouble *);
void glGetVertexAttribfvNV (GLuint, GLenum, GLfloat *);
void glGetVertexAttribivNV (GLuint, GLenum, GLint *);
void glGetVertexAttribPointervNV (GLuint, GLenum, GLvoid* *);
GLboolean glIsProgramNV (GLuint);
void glLoadProgramNV (GLenum, GLuint, GLsizei, GLubyte *);
void glProgramParameter4dNV (GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
void glProgramParameter4dvNV (GLenum, GLuint, GLdouble *);
void glProgramParameter4fNV (GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
void glProgramParameter4fvNV (GLenum, GLuint, GLfloat *);
void glProgramParameters4dvNV (GLenum, GLuint, GLuint, GLdouble *);
void glProgramParameters4fvNV (GLenum, GLuint, GLuint, GLfloat *);
void glRequestResidentProgramsNV (GLsizei, GLuint *);
void glTrackMatrixNV (GLenum, GLuint, GLenum, GLenum);
void glVertexAttribPointerNV (GLuint, GLint, GLenum, GLsizei, GLvoid *);
void glVertexAttrib1dNV (GLuint, GLdouble);
void glVertexAttrib1dvNV (GLuint, GLdouble *);
void glVertexAttrib1fNV (GLuint, GLfloat);
void glVertexAttrib1fvNV (GLuint, GLfloat *);
void glVertexAttrib1sNV (GLuint, GLshort);
void glVertexAttrib1svNV (GLuint, GLshort *);
void glVertexAttrib2dNV (GLuint, GLdouble, GLdouble);
void glVertexAttrib2dvNV (GLuint, GLdouble *);
void glVertexAttrib2fNV (GLuint, GLfloat, GLfloat);
void glVertexAttrib2fvNV (GLuint, GLfloat *);
void glVertexAttrib2sNV (GLuint, GLshort, GLshort);
void glVertexAttrib2svNV (GLuint, GLshort *);
void glVertexAttrib3dNV (GLuint, GLdouble, GLdouble, GLdouble);
void glVertexAttrib3dvNV (GLuint, GLdouble *);
void glVertexAttrib3fNV (GLuint, GLfloat, GLfloat, GLfloat);
void glVertexAttrib3fvNV (GLuint, GLfloat *);
void glVertexAttrib3sNV (GLuint, GLshort, GLshort, GLshort);
void glVertexAttrib3svNV (GLuint, GLshort *);
void glVertexAttrib4dNV (GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
void glVertexAttrib4dvNV (GLuint, GLdouble *);
void glVertexAttrib4fNV (GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
void glVertexAttrib4fvNV (GLuint, GLfloat *);
void glVertexAttrib4sNV (GLuint, GLshort, GLshort, GLshort, GLshort);
void glVertexAttrib4svNV (GLuint, GLshort *);
void glVertexAttrib4ubNV (GLuint, GLubyte, GLubyte, GLubyte, GLubyte);
void glVertexAttrib4ubvNV (GLuint, GLubyte *);
void glVertexAttribs1dvNV (GLuint, GLsizei, GLdouble *);
void glVertexAttribs1fvNV (GLuint, GLsizei, GLfloat *);
void glVertexAttribs1svNV (GLuint, GLsizei, GLshort *);
void glVertexAttribs2dvNV (GLuint, GLsizei, GLdouble *);
void glVertexAttribs2fvNV (GLuint, GLsizei, GLfloat *);
void glVertexAttribs2svNV (GLuint, GLsizei, GLshort *);
void glVertexAttribs3dvNV (GLuint, GLsizei, GLdouble *);
void glVertexAttribs3fvNV (GLuint, GLsizei, GLfloat *);
void glVertexAttribs3svNV (GLuint, GLsizei, GLshort *);
void glVertexAttribs4dvNV (GLuint, GLsizei, GLdouble *);
void glVertexAttribs4fvNV (GLuint, GLsizei, GLfloat *);
void glVertexAttribs4svNV (GLuint, GLsizei, GLshort *);
void glVertexAttribs4ubvNV (GLuint, GLsizei, GLubyte *);
} /* GL_GLEXT_PROTOTYPES */
alias GLboolean (*PFNGLAREPROGRAMSRESIDENTNVPROC) (GLsizei n, GLuint *programs, GLboolean *residences);
alias void (*PFNGLBINDPROGRAMNVPROC) (GLenum target, GLuint id);
alias void (*PFNGLDELETEPROGRAMSNVPROC) (GLsizei n, GLuint *programs);
alias void (*PFNGLEXECUTEPROGRAMNVPROC) (GLenum target, GLuint id, GLfloat *params);
alias void (*PFNGLGENPROGRAMSNVPROC) (GLsizei n, GLuint *programs);
alias void (*PFNGLGETPROGRAMPARAMETERDVNVPROC) (GLenum target, GLuint index, GLenum pname, GLdouble *params);
alias void (*PFNGLGETPROGRAMPARAMETERFVNVPROC) (GLenum target, GLuint index, GLenum pname, GLfloat *params);
alias void (*PFNGLGETPROGRAMIVNVPROC) (GLuint id, GLenum pname, GLint *params);
alias void (*PFNGLGETPROGRAMSTRINGNVPROC) (GLuint id, GLenum pname, GLubyte *program);
alias void (*PFNGLGETTRACKMATRIXIVNVPROC) (GLenum target, GLuint address, GLenum pname, GLint *params);
alias void (*PFNGLGETVERTEXATTRIBDVNVPROC) (GLuint index, GLenum pname, GLdouble *params);
alias void (*PFNGLGETVERTEXATTRIBFVNVPROC) (GLuint index, GLenum pname, GLfloat *params);
alias void (*PFNGLGETVERTEXATTRIBIVNVPROC) (GLuint index, GLenum pname, GLint *params);
alias void (*PFNGLGETVERTEXATTRIBPOINTERVNVPROC) (GLuint index, GLenum pname, GLvoid* *pointer);
alias GLboolean (*PFNGLISPROGRAMNVPROC) (GLuint id);
alias void (*PFNGLLOADPROGRAMNVPROC) (GLenum target, GLuint id, GLsizei len, GLubyte *program);
alias void (*PFNGLPROGRAMPARAMETER4DNVPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLPROGRAMPARAMETER4DVNVPROC) (GLenum target, GLuint index, GLdouble *v);
alias void (*PFNGLPROGRAMPARAMETER4FNVPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLPROGRAMPARAMETER4FVNVPROC) (GLenum target, GLuint index, GLfloat *v);
alias void (*PFNGLPROGRAMPARAMETERS4DVNVPROC) (GLenum target, GLuint index, GLuint count, GLdouble *v);
alias void (*PFNGLPROGRAMPARAMETERS4FVNVPROC) (GLenum target, GLuint index, GLuint count, GLfloat *v);
alias void (*PFNGLREQUESTRESIDENTPROGRAMSNVPROC) (GLsizei n, GLuint *programs);
alias void (*PFNGLTRACKMATRIXNVPROC) (GLenum target, GLuint address, GLenum matrix, GLenum transform);
alias void (*PFNGLVERTEXATTRIBPOINTERNVPROC) (GLuint index, GLint fsize, GLenum type, GLsizei stride, GLvoid *pointer);
alias void (*PFNGLVERTEXATTRIB1DNVPROC) (GLuint index, GLdouble x);
alias void (*PFNGLVERTEXATTRIB1DVNVPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB1FNVPROC) (GLuint index, GLfloat x);
alias void (*PFNGLVERTEXATTRIB1FVNVPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB1SNVPROC) (GLuint index, GLshort x);
alias void (*PFNGLVERTEXATTRIB1SVNVPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB2DNVPROC) (GLuint index, GLdouble x, GLdouble y);
alias void (*PFNGLVERTEXATTRIB2DVNVPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB2FNVPROC) (GLuint index, GLfloat x, GLfloat y);
alias void (*PFNGLVERTEXATTRIB2FVNVPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB2SNVPROC) (GLuint index, GLshort x, GLshort y);
alias void (*PFNGLVERTEXATTRIB2SVNVPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB3DNVPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z);
alias void (*PFNGLVERTEXATTRIB3DVNVPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB3FNVPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLVERTEXATTRIB3FVNVPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB3SNVPROC) (GLuint index, GLshort x, GLshort y, GLshort z);
alias void (*PFNGLVERTEXATTRIB3SVNVPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB4DNVPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLVERTEXATTRIB4DVNVPROC) (GLuint index, GLdouble *v);
alias void (*PFNGLVERTEXATTRIB4FNVPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLVERTEXATTRIB4FVNVPROC) (GLuint index, GLfloat *v);
alias void (*PFNGLVERTEXATTRIB4SNVPROC) (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
alias void (*PFNGLVERTEXATTRIB4SVNVPROC) (GLuint index, GLshort *v);
alias void (*PFNGLVERTEXATTRIB4UBNVPROC) (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
alias void (*PFNGLVERTEXATTRIB4UBVNVPROC) (GLuint index, GLubyte *v);
alias void (*PFNGLVERTEXATTRIBS1DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias void (*PFNGLVERTEXATTRIBS1FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias void (*PFNGLVERTEXATTRIBS1SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias void (*PFNGLVERTEXATTRIBS2DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias void (*PFNGLVERTEXATTRIBS2FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias void (*PFNGLVERTEXATTRIBS2SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias void (*PFNGLVERTEXATTRIBS3DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias void (*PFNGLVERTEXATTRIBS3FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias void (*PFNGLVERTEXATTRIBS3SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias void (*PFNGLVERTEXATTRIBS4DVNVPROC) (GLuint index, GLsizei count, GLdouble *v);
alias void (*PFNGLVERTEXATTRIBS4FVNVPROC) (GLuint index, GLsizei count, GLfloat *v);
alias void (*PFNGLVERTEXATTRIBS4SVNVPROC) (GLuint index, GLsizei count, GLshort *v);
alias void (*PFNGLVERTEXATTRIBS4UBVNVPROC) (GLuint index, GLsizei count, GLubyte *v);
}

version (GL_SGIX_texture_coordinate_clamp) { } else {
version = GL_SGIX_texture_coordinate_clamp;
}

version (GL_SGIX_scalebias_hint) { } else {
version = GL_SGIX_scalebias_hint;
}

version (GL_OML_interlace) { } else {
version = GL_OML_interlace;
}

version (GL_OML_subsample) { } else {
version = GL_OML_subsample;
}

version (GL_OML_resample) { } else {
version = GL_OML_resample;
}

version (GL_NV_copy_depth_to_color) { } else {
version = GL_NV_copy_depth_to_color;
}

version (GL_ATI_envmap_bumpmap) { } else {
version = GL_ATI_envmap_bumpmap;
version (GL_GLEXT_PROTOTYPES) {
void glTexBumpParameterivATI (GLenum, GLint *);
void glTexBumpParameterfvATI (GLenum, GLfloat *);
void glGetTexBumpParameterivATI (GLenum, GLint *);
void glGetTexBumpParameterfvATI (GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLTEXBUMPPARAMETERIVATIPROC) (GLenum pname, GLint *param);
alias void (*PFNGLTEXBUMPPARAMETERFVATIPROC) (GLenum pname, GLfloat *param);
alias void (*PFNGLGETTEXBUMPPARAMETERIVATIPROC) (GLenum pname, GLint *param);
alias void (*PFNGLGETTEXBUMPPARAMETERFVATIPROC) (GLenum pname, GLfloat *param);
}

version (GL_ATI_fragment_shader) { } else {
version = GL_ATI_fragment_shader;
version (GL_GLEXT_PROTOTYPES) {
GLuint glGenFragmentShadersATI (GLuint);
void glBindFragmentShaderATI (GLuint);
void glDeleteFragmentShaderATI (GLuint);
void glBeginFragmentShaderATI ();
void glEndFragmentShaderATI ();
void glPassTexCoordATI (GLuint, GLuint, GLenum);
void glSampleMapATI (GLuint, GLuint, GLenum);
void glColorFragmentOp1ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
void glColorFragmentOp2ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
void glColorFragmentOp3ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
void glAlphaFragmentOp1ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint);
void glAlphaFragmentOp2ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
void glAlphaFragmentOp3ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
void glSetFragmentShaderConstantATI (GLuint, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias GLuint (*PFNGLGENFRAGMENTSHADERSATIPROC) (GLuint range);
alias void (*PFNGLBINDFRAGMENTSHADERATIPROC) (GLuint id);
alias void (*PFNGLDELETEFRAGMENTSHADERATIPROC) (GLuint id);
alias void (*PFNGLBEGINFRAGMENTSHADERATIPROC) ();
alias void (*PFNGLENDFRAGMENTSHADERATIPROC) ();
alias void (*PFNGLPASSTEXCOORDATIPROC) (GLuint dst, GLuint coord, GLenum swizzle);
alias void (*PFNGLSAMPLEMAPATIPROC) (GLuint dst, GLuint interp, GLenum swizzle);
alias void (*PFNGLCOLORFRAGMENTOP1ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
alias void (*PFNGLCOLORFRAGMENTOP2ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
alias void (*PFNGLCOLORFRAGMENTOP3ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
alias void (*PFNGLALPHAFRAGMENTOP1ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
alias void (*PFNGLALPHAFRAGMENTOP2ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
alias void (*PFNGLALPHAFRAGMENTOP3ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
alias void (*PFNGLSETFRAGMENTSHADERCONSTANTATIPROC) (GLuint dst, GLfloat *value);
}

version (GL_ATI_pn_triangles) { } else {
version = GL_ATI_pn_triangles;
version (GL_GLEXT_PROTOTYPES) {
void glPNTrianglesiATI (GLenum, GLint);
void glPNTrianglesfATI (GLenum, GLfloat);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPNTRIANGLESIATIPROC) (GLenum pname, GLint param);
alias void (*PFNGLPNTRIANGLESFATIPROC) (GLenum pname, GLfloat param);
}

version (GL_ATI_vertex_array_object) { } else {
version = GL_ATI_vertex_array_object;
version (GL_GLEXT_PROTOTYPES) {
GLuint glNewObjectBufferATI (GLsizei, GLvoid *, GLenum);
GLboolean glIsObjectBufferATI (GLuint);
void glUpdateObjectBufferATI (GLuint, GLuint, GLsizei, GLvoid *, GLenum);
void glGetObjectBufferfvATI (GLuint, GLenum, GLfloat *);
void glGetObjectBufferivATI (GLuint, GLenum, GLint *);
void glFreeObjectBufferATI (GLuint);
void glArrayObjectATI (GLenum, GLint, GLenum, GLsizei, GLuint, GLuint);
void glGetArrayObjectfvATI (GLenum, GLenum, GLfloat *);
void glGetArrayObjectivATI (GLenum, GLenum, GLint *);
void glVariantArrayObjectATI (GLuint, GLenum, GLsizei, GLuint, GLuint);
void glGetVariantArrayObjectfvATI (GLuint, GLenum, GLfloat *);
void glGetVariantArrayObjectivATI (GLuint, GLenum, GLint *);
} /* GL_GLEXT_PROTOTYPES */
alias GLuint (*PFNGLNEWOBJECTBUFFERATIPROC) (GLsizei size, GLvoid *pointer, GLenum usage);
alias GLboolean (*PFNGLISOBJECTBUFFERATIPROC) (GLuint buffer);
alias void (*PFNGLUPDATEOBJECTBUFFERATIPROC) (GLuint buffer, GLuint offset, GLsizei size, GLvoid *pointer, GLenum preserve);
alias void (*PFNGLGETOBJECTBUFFERFVATIPROC) (GLuint buffer, GLenum pname, GLfloat *params);
alias void (*PFNGLGETOBJECTBUFFERIVATIPROC) (GLuint buffer, GLenum pname, GLint *params);
alias void (*PFNGLFREEOBJECTBUFFERATIPROC) (GLuint buffer);
alias void (*PFNGLARRAYOBJECTATIPROC) (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
alias void (*PFNGLGETARRAYOBJECTFVATIPROC) (GLenum array, GLenum pname, GLfloat *params);
alias void (*PFNGLGETARRAYOBJECTIVATIPROC) (GLenum array, GLenum pname, GLint *params);
alias void (*PFNGLVARIANTARRAYOBJECTATIPROC) (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
alias void (*PFNGLGETVARIANTARRAYOBJECTFVATIPROC) (GLuint id, GLenum pname, GLfloat *params);
alias void (*PFNGLGETVARIANTARRAYOBJECTIVATIPROC) (GLuint id, GLenum pname, GLint *params);
}

version (GL_EXT_vertex_shader) { } else {
version = GL_EXT_vertex_shader;
version (GL_GLEXT_PROTOTYPES) {
void glBeginVertexShaderEXT ();
void glEndVertexShaderEXT ();
void glBindVertexShaderEXT (GLuint);
GLuint glGenVertexShadersEXT (GLuint);
void glDeleteVertexShaderEXT (GLuint);
void glShaderOp1EXT (GLenum, GLuint, GLuint);
void glShaderOp2EXT (GLenum, GLuint, GLuint, GLuint);
void glShaderOp3EXT (GLenum, GLuint, GLuint, GLuint, GLuint);
void glSwizzleEXT (GLuint, GLuint, GLenum, GLenum, GLenum, GLenum);
void glWriteMaskEXT (GLuint, GLuint, GLenum, GLenum, GLenum, GLenum);
void glInsertComponentEXT (GLuint, GLuint, GLuint);
void glExtractComponentEXT (GLuint, GLuint, GLuint);
GLuint glGenSymbolsEXT (GLenum, GLenum, GLenum, GLuint);
void glSetInvariantEXT (GLuint, GLenum, GLvoid *);
void glSetLocalConstantEXT (GLuint, GLenum, GLvoid *);
void glVariantbvEXT (GLuint, GLbyte *);
void glVariantsvEXT (GLuint, GLshort *);
void glVariantivEXT (GLuint, GLint *);
void glVariantfvEXT (GLuint, GLfloat *);
void glVariantdvEXT (GLuint, GLdouble *);
void glVariantubvEXT (GLuint, GLubyte *);
void glVariantusvEXT (GLuint, GLushort *);
void glVariantuivEXT (GLuint, GLuint *);
void glVariantPointerEXT (GLuint, GLenum, GLuint, GLvoid *);
void glEnableVariantClientStateEXT (GLuint);
void glDisableVariantClientStateEXT (GLuint);
GLuint glBindLightParameterEXT (GLenum, GLenum);
GLuint glBindMaterialParameterEXT (GLenum, GLenum);
GLuint glBindTexGenParameterEXT (GLenum, GLenum, GLenum);
GLuint glBindTextureUnitParameterEXT (GLenum, GLenum);
GLuint glBindParameterEXT (GLenum);
GLboolean glIsVariantEnabledEXT (GLuint, GLenum);
void glGetVariantBooleanvEXT (GLuint, GLenum, GLboolean *);
void glGetVariantIntegervEXT (GLuint, GLenum, GLint *);
void glGetVariantFloatvEXT (GLuint, GLenum, GLfloat *);
void glGetVariantPointervEXT (GLuint, GLenum, GLvoid* *);
void glGetInvariantBooleanvEXT (GLuint, GLenum, GLboolean *);
void glGetInvariantIntegervEXT (GLuint, GLenum, GLint *);
void glGetInvariantFloatvEXT (GLuint, GLenum, GLfloat *);
void glGetLocalConstantBooleanvEXT (GLuint, GLenum, GLboolean *);
void glGetLocalConstantIntegervEXT (GLuint, GLenum, GLint *);
void glGetLocalConstantFloatvEXT (GLuint, GLenum, GLfloat *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBEGINVERTEXSHADEREXTPROC) ();
alias void (*PFNGLENDVERTEXSHADEREXTPROC) ();
alias void (*PFNGLBINDVERTEXSHADEREXTPROC) (GLuint id);
alias GLuint (*PFNGLGENVERTEXSHADERSEXTPROC) (GLuint range);
alias void (*PFNGLDELETEVERTEXSHADEREXTPROC) (GLuint id);
alias void (*PFNGLSHADEROP1EXTPROC) (GLenum op, GLuint res, GLuint arg1);
alias void (*PFNGLSHADEROP2EXTPROC) (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
alias void (*PFNGLSHADEROP3EXTPROC) (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
alias void (*PFNGLSWIZZLEEXTPROC) (GLuint res, GLuint _in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
alias void (*PFNGLWRITEMASKEXTPROC) (GLuint res, GLuint _in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
alias void (*PFNGLINSERTCOMPONENTEXTPROC) (GLuint res, GLuint src, GLuint num);
alias void (*PFNGLEXTRACTCOMPONENTEXTPROC) (GLuint res, GLuint src, GLuint num);
alias GLuint (*PFNGLGENSYMBOLSEXTPROC) (GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
alias void (*PFNGLSETINVARIANTEXTPROC) (GLuint id, GLenum type, GLvoid *addr);
alias void (*PFNGLSETLOCALCONSTANTEXTPROC) (GLuint id, GLenum type, GLvoid *addr);
alias void (*PFNGLVARIANTBVEXTPROC) (GLuint id, GLbyte *addr);
alias void (*PFNGLVARIANTSVEXTPROC) (GLuint id, GLshort *addr);
alias void (*PFNGLVARIANTIVEXTPROC) (GLuint id, GLint *addr);
alias void (*PFNGLVARIANTFVEXTPROC) (GLuint id, GLfloat *addr);
alias void (*PFNGLVARIANTDVEXTPROC) (GLuint id, GLdouble *addr);
alias void (*PFNGLVARIANTUBVEXTPROC) (GLuint id, GLubyte *addr);
alias void (*PFNGLVARIANTUSVEXTPROC) (GLuint id, GLushort *addr);
alias void (*PFNGLVARIANTUIVEXTPROC) (GLuint id, GLuint *addr);
alias void (*PFNGLVARIANTPOINTEREXTPROC) (GLuint id, GLenum type, GLuint stride, GLvoid *addr);
alias void (*PFNGLENABLEVARIANTCLIENTSTATEEXTPROC) (GLuint id);
alias void (*PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC) (GLuint id);
alias GLuint (*PFNGLBINDLIGHTPARAMETEREXTPROC) (GLenum light, GLenum value);
alias GLuint (*PFNGLBINDMATERIALPARAMETEREXTPROC) (GLenum face, GLenum value);
alias GLuint (*PFNGLBINDTEXGENPARAMETEREXTPROC) (GLenum unit, GLenum coord, GLenum value);
alias GLuint (*PFNGLBINDTEXTUREUNITPARAMETEREXTPROC) (GLenum unit, GLenum value);
alias GLuint (*PFNGLBINDPARAMETEREXTPROC) (GLenum value);
alias GLboolean (*PFNGLISVARIANTENABLEDEXTPROC) (GLuint id, GLenum cap);
alias void (*PFNGLGETVARIANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
alias void (*PFNGLGETVARIANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
alias void (*PFNGLGETVARIANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
alias void (*PFNGLGETVARIANTPOINTERVEXTPROC) (GLuint id, GLenum value, GLvoid* *data);
alias void (*PFNGLGETINVARIANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
alias void (*PFNGLGETINVARIANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
alias void (*PFNGLGETINVARIANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
alias void (*PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
alias void (*PFNGLGETLOCALCONSTANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
alias void (*PFNGLGETLOCALCONSTANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
}

version (GL_ATI_vertex_streams) { } else {
version = GL_ATI_vertex_streams;
version (GL_GLEXT_PROTOTYPES) {
void glVertexStream1sATI (GLenum, GLshort);
void glVertexStream1svATI (GLenum, GLshort *);
void glVertexStream1iATI (GLenum, GLint);
void glVertexStream1ivATI (GLenum, GLint *);
void glVertexStream1fATI (GLenum, GLfloat);
void glVertexStream1fvATI (GLenum, GLfloat *);
void glVertexStream1dATI (GLenum, GLdouble);
void glVertexStream1dvATI (GLenum, GLdouble *);
void glVertexStream2sATI (GLenum, GLshort, GLshort);
void glVertexStream2svATI (GLenum, GLshort *);
void glVertexStream2iATI (GLenum, GLint, GLint);
void glVertexStream2ivATI (GLenum, GLint *);
void glVertexStream2fATI (GLenum, GLfloat, GLfloat);
void glVertexStream2fvATI (GLenum, GLfloat *);
void glVertexStream2dATI (GLenum, GLdouble, GLdouble);
void glVertexStream2dvATI (GLenum, GLdouble *);
void glVertexStream3sATI (GLenum, GLshort, GLshort, GLshort);
void glVertexStream3svATI (GLenum, GLshort *);
void glVertexStream3iATI (GLenum, GLint, GLint, GLint);
void glVertexStream3ivATI (GLenum, GLint *);
void glVertexStream3fATI (GLenum, GLfloat, GLfloat, GLfloat);
void glVertexStream3fvATI (GLenum, GLfloat *);
void glVertexStream3dATI (GLenum, GLdouble, GLdouble, GLdouble);
void glVertexStream3dvATI (GLenum, GLdouble *);
void glVertexStream4sATI (GLenum, GLshort, GLshort, GLshort, GLshort);
void glVertexStream4svATI (GLenum, GLshort *);
void glVertexStream4iATI (GLenum, GLint, GLint, GLint, GLint);
void glVertexStream4ivATI (GLenum, GLint *);
void glVertexStream4fATI (GLenum, GLfloat, GLfloat, GLfloat, GLfloat);
void glVertexStream4fvATI (GLenum, GLfloat *);
void glVertexStream4dATI (GLenum, GLdouble, GLdouble, GLdouble, GLdouble);
void glVertexStream4dvATI (GLenum, GLdouble *);
void glNormalStream3bATI (GLenum, GLbyte, GLbyte, GLbyte);
void glNormalStream3bvATI (GLenum, GLbyte *);
void glNormalStream3sATI (GLenum, GLshort, GLshort, GLshort);
void glNormalStream3svATI (GLenum, GLshort *);
void glNormalStream3iATI (GLenum, GLint, GLint, GLint);
void glNormalStream3ivATI (GLenum, GLint *);
void glNormalStream3fATI (GLenum, GLfloat, GLfloat, GLfloat);
void glNormalStream3fvATI (GLenum, GLfloat *);
void glNormalStream3dATI (GLenum, GLdouble, GLdouble, GLdouble);
void glNormalStream3dvATI (GLenum, GLdouble *);
void glClientActiveVertexStreamATI (GLenum);
void glVertexBlendEnviATI (GLenum, GLint);
void glVertexBlendEnvfATI (GLenum, GLfloat);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLVERTEXSTREAM1SATIPROC) (GLenum stream, GLshort x);
alias void (*PFNGLVERTEXSTREAM1SVATIPROC) (GLenum stream, GLshort *coords);
alias void (*PFNGLVERTEXSTREAM1IATIPROC) (GLenum stream, GLint x);
alias void (*PFNGLVERTEXSTREAM1IVATIPROC) (GLenum stream, GLint *coords);
alias void (*PFNGLVERTEXSTREAM1FATIPROC) (GLenum stream, GLfloat x);
alias void (*PFNGLVERTEXSTREAM1FVATIPROC) (GLenum stream, GLfloat *coords);
alias void (*PFNGLVERTEXSTREAM1DATIPROC) (GLenum stream, GLdouble x);
alias void (*PFNGLVERTEXSTREAM1DVATIPROC) (GLenum stream, GLdouble *coords);
alias void (*PFNGLVERTEXSTREAM2SATIPROC) (GLenum stream, GLshort x, GLshort y);
alias void (*PFNGLVERTEXSTREAM2SVATIPROC) (GLenum stream, GLshort *coords);
alias void (*PFNGLVERTEXSTREAM2IATIPROC) (GLenum stream, GLint x, GLint y);
alias void (*PFNGLVERTEXSTREAM2IVATIPROC) (GLenum stream, GLint *coords);
alias void (*PFNGLVERTEXSTREAM2FATIPROC) (GLenum stream, GLfloat x, GLfloat y);
alias void (*PFNGLVERTEXSTREAM2FVATIPROC) (GLenum stream, GLfloat *coords);
alias void (*PFNGLVERTEXSTREAM2DATIPROC) (GLenum stream, GLdouble x, GLdouble y);
alias void (*PFNGLVERTEXSTREAM2DVATIPROC) (GLenum stream, GLdouble *coords);
alias void (*PFNGLVERTEXSTREAM3SATIPROC) (GLenum stream, GLshort x, GLshort y, GLshort z);
alias void (*PFNGLVERTEXSTREAM3SVATIPROC) (GLenum stream, GLshort *coords);
alias void (*PFNGLVERTEXSTREAM3IATIPROC) (GLenum stream, GLint x, GLint y, GLint z);
alias void (*PFNGLVERTEXSTREAM3IVATIPROC) (GLenum stream, GLint *coords);
alias void (*PFNGLVERTEXSTREAM3FATIPROC) (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
alias void (*PFNGLVERTEXSTREAM3FVATIPROC) (GLenum stream, GLfloat *coords);
alias void (*PFNGLVERTEXSTREAM3DATIPROC) (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
alias void (*PFNGLVERTEXSTREAM3DVATIPROC) (GLenum stream, GLdouble *coords);
alias void (*PFNGLVERTEXSTREAM4SATIPROC) (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
alias void (*PFNGLVERTEXSTREAM4SVATIPROC) (GLenum stream, GLshort *coords);
alias void (*PFNGLVERTEXSTREAM4IATIPROC) (GLenum stream, GLint x, GLint y, GLint z, GLint w);
alias void (*PFNGLVERTEXSTREAM4IVATIPROC) (GLenum stream, GLint *coords);
alias void (*PFNGLVERTEXSTREAM4FATIPROC) (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLVERTEXSTREAM4FVATIPROC) (GLenum stream, GLfloat *coords);
alias void (*PFNGLVERTEXSTREAM4DATIPROC) (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLVERTEXSTREAM4DVATIPROC) (GLenum stream, GLdouble *coords);
alias void (*PFNGLNORMALSTREAM3BATIPROC) (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz);
alias void (*PFNGLNORMALSTREAM3BVATIPROC) (GLenum stream, GLbyte *coords);
alias void (*PFNGLNORMALSTREAM3SATIPROC) (GLenum stream, GLshort nx, GLshort ny, GLshort nz);
alias void (*PFNGLNORMALSTREAM3SVATIPROC) (GLenum stream, GLshort *coords);
alias void (*PFNGLNORMALSTREAM3IATIPROC) (GLenum stream, GLint nx, GLint ny, GLint nz);
alias void (*PFNGLNORMALSTREAM3IVATIPROC) (GLenum stream, GLint *coords);
alias void (*PFNGLNORMALSTREAM3FATIPROC) (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz);
alias void (*PFNGLNORMALSTREAM3FVATIPROC) (GLenum stream, GLfloat *coords);
alias void (*PFNGLNORMALSTREAM3DATIPROC) (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz);
alias void (*PFNGLNORMALSTREAM3DVATIPROC) (GLenum stream, GLdouble *coords);
alias void (*PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC) (GLenum stream);
alias void (*PFNGLVERTEXBLENDENVIATIPROC) (GLenum pname, GLint param);
alias void (*PFNGLVERTEXBLENDENVFATIPROC) (GLenum pname, GLfloat param);
}

version (GL_ATI_element_array) { } else {
version = GL_ATI_element_array;
version (GL_GLEXT_PROTOTYPES) {
void glElementPointerATI (GLenum, GLvoid *);
void glDrawElementArrayATI (GLenum, GLsizei);
void glDrawRangeElementArrayATI (GLenum, GLuint, GLuint, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLELEMENTPOINTERATIPROC) (GLenum type, GLvoid *pointer);
alias void (*PFNGLDRAWELEMENTARRAYATIPROC) (GLenum mode, GLsizei count);
alias void (*PFNGLDRAWRANGEELEMENTARRAYATIPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count);
}

version (GL_SUN_mesh_array) { } else {
version = GL_SUN_mesh_array;
version (GL_GLEXT_PROTOTYPES) {
void glDrawMeshArraysSUN (GLenum, GLint, GLsizei, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDRAWMESHARRAYSSUNPROC) (GLenum mode, GLint first, GLsizei count, GLsizei width);
}

version (GL_SUN_slice_accum) { } else {
version = GL_SUN_slice_accum;
}

version (GL_NV_multisample_filter_hint) { } else {
version = GL_NV_multisample_filter_hint;
}

version (GL_NV_depth_clamp) { } else {
version = GL_NV_depth_clamp;
}

version (GL_NV_occlusion_query) { } else {
version = GL_NV_occlusion_query;
version (GL_GLEXT_PROTOTYPES) {
void glGenOcclusionQueriesNV (GLsizei, GLuint *);
void glDeleteOcclusionQueriesNV (GLsizei, GLuint *);
GLboolean glIsOcclusionQueryNV (GLuint);
void glBeginOcclusionQueryNV (GLuint);
void glEndOcclusionQueryNV ();
void glGetOcclusionQueryivNV (GLuint, GLenum, GLint *);
void glGetOcclusionQueryuivNV (GLuint, GLenum, GLuint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGENOCCLUSIONQUERIESNVPROC) (GLsizei n, GLuint *ids);
alias void (*PFNGLDELETEOCCLUSIONQUERIESNVPROC) (GLsizei n, GLuint *ids);
alias GLboolean (*PFNGLISOCCLUSIONQUERYNVPROC) (GLuint id);
alias void (*PFNGLBEGINOCCLUSIONQUERYNVPROC) (GLuint id);
alias void (*PFNGLENDOCCLUSIONQUERYNVPROC) ();
alias void (*PFNGLGETOCCLUSIONQUERYIVNVPROC) (GLuint id, GLenum pname, GLint *params);
alias void (*PFNGLGETOCCLUSIONQUERYUIVNVPROC) (GLuint id, GLenum pname, GLuint *params);
}

version (GL_NV_point_sprite) { } else {
version = GL_NV_point_sprite;
version (GL_GLEXT_PROTOTYPES) {
void glPointParameteriNV (GLenum, GLint);
void glPointParameterivNV (GLenum, GLint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPOINTPARAMETERINVPROC) (GLenum pname, GLint param);
alias void (*PFNGLPOINTPARAMETERIVNVPROC) (GLenum pname, GLint *params);
}

version (GL_NV_texture_shader3) { } else {
version = GL_NV_texture_shader3;
}

version (GL_NV_vertex_program1_1) { } else {
version = GL_NV_vertex_program1_1;
}

version (GL_EXT_shadow_funcs) { } else {
version = GL_EXT_shadow_funcs;
}

version (GL_EXT_stencil_two_side) { } else {
version = GL_EXT_stencil_two_side;
version (GL_GLEXT_PROTOTYPES) {
void glActiveStencilFaceEXT (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLACTIVESTENCILFACEEXTPROC) (GLenum face);
}

version (GL_ATI_text_fragment_shader) { } else {
version = GL_ATI_text_fragment_shader;
}

version (GL_APPLE_client_storage) { } else {
version = GL_APPLE_client_storage;
}

version (GL_APPLE_element_array) { } else {
version = GL_APPLE_element_array;
version (GL_GLEXT_PROTOTYPES) {
void glElementPointerAPPLE (GLenum, GLvoid *);
void glDrawElementArrayAPPLE (GLenum, GLint, GLsizei);
void glDrawRangeElementArrayAPPLE (GLenum, GLuint, GLuint, GLint, GLsizei);
void glMultiDrawElementArrayAPPLE (GLenum, GLint *, GLsizei *, GLsizei);
void glMultiDrawRangeElementArrayAPPLE (GLenum, GLuint, GLuint, GLint *, GLsizei *, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLELEMENTPOINTERAPPLEPROC) (GLenum type, GLvoid *pointer);
alias void (*PFNGLDRAWELEMENTARRAYAPPLEPROC) (GLenum mode, GLint first, GLsizei count);
alias void (*PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC) (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
alias void (*PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
alias void (*PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC) (GLenum mode, GLuint start, GLuint end, GLint *first, GLsizei *count, GLsizei primcount);
}

version (GL_APPLE_fence) { } else {
version = GL_APPLE_fence;
version (GL_GLEXT_PROTOTYPES) {
void glGenFencesAPPLE (GLsizei, GLuint *);
void glDeleteFencesAPPLE (GLsizei, GLuint *);
void glSetFenceAPPLE (GLuint);
GLboolean glIsFenceAPPLE (GLuint);
GLboolean glTestFenceAPPLE (GLuint);
void glFinishFenceAPPLE (GLuint);
GLboolean glTestObjectAPPLE (GLenum, GLuint);
void glFinishObjectAPPLE (GLenum, GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLGENFENCESAPPLEPROC) (GLsizei n, GLuint *fences);
alias void (*PFNGLDELETEFENCESAPPLEPROC) (GLsizei n, GLuint *fences);
alias void (*PFNGLSETFENCEAPPLEPROC) (GLuint fence);
alias GLboolean (*PFNGLISFENCEAPPLEPROC) (GLuint fence);
alias GLboolean (*PFNGLTESTFENCEAPPLEPROC) (GLuint fence);
alias void (*PFNGLFINISHFENCEAPPLEPROC) (GLuint fence);
alias GLboolean (*PFNGLTESTOBJECTAPPLEPROC) (GLenum object, GLuint name);
alias void (*PFNGLFINISHOBJECTAPPLEPROC) (GLenum object, GLint name);
}

version (GL_APPLE_vertex_array_object) { } else {
version = GL_APPLE_vertex_array_object;
version (GL_GLEXT_PROTOTYPES) {
void glBindVertexArrayAPPLE (GLuint);
void glDeleteVertexArraysAPPLE (GLsizei, GLuint *);
void glGenVertexArraysAPPLE (GLsizei, GLuint *);
GLboolean glIsVertexArrayAPPLE (GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBINDVERTEXARRAYAPPLEPROC) (GLuint array);
alias void (*PFNGLDELETEVERTEXARRAYSAPPLEPROC) (GLsizei n, GLuint *arrays);
alias void (*PFNGLGENVERTEXARRAYSAPPLEPROC) (GLsizei n, GLuint *arrays);
alias GLboolean (*PFNGLISVERTEXARRAYAPPLEPROC) (GLuint array);
}

version (GL_APPLE_vertex_array_range) { } else {
version = GL_APPLE_vertex_array_range;
version (GL_GLEXT_PROTOTYPES) {
void glVertexArrayRangeAPPLE (GLsizei, GLvoid *);
void glFlushVertexArrayRangeAPPLE (GLsizei, GLvoid *);
void glVertexArrayParameteriAPPLE (GLenum, GLint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLVERTEXARRAYRANGEAPPLEPROC) (GLsizei length, GLvoid *pointer);
alias void (*PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC) (GLsizei length, GLvoid *pointer);
alias void (*PFNGLVERTEXARRAYPARAMETERIAPPLEPROC) (GLenum pname, GLint param);
}

version (GL_APPLE_ycbcr_422) { } else {
version = GL_APPLE_ycbcr_422;
}

version (GL_S3_s3tc) { } else {
version = GL_S3_s3tc;
}

version (GL_ATI_draw_buffers) { } else {
version = GL_ATI_draw_buffers;
version (GL_GLEXT_PROTOTYPES) {
void glDrawBuffersATI (GLsizei, GLenum *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDRAWBUFFERSATIPROC) (GLsizei n, GLenum *bufs);
}

version (GL_ATI_texture_env_combine3) { } else {
version = GL_ATI_texture_env_combine3;
}

version (GL_ATI_texture_float) { } else {
version = GL_ATI_texture_float;
}

version (GL_NV_float_buffer) { } else {
version = GL_NV_float_buffer;
}

version (GL_NV_fragment_program) { } else {
version = GL_NV_fragment_program;
/* Some NV_fragment_program entry points are shared with ARB_vertex_program. */
version (GL_GLEXT_PROTOTYPES) {
void glProgramNamedParameter4fNV (GLuint, GLsizei, GLubyte *, GLfloat, GLfloat, GLfloat, GLfloat);
void glProgramNamedParameter4dNV (GLuint, GLsizei, GLubyte *, GLdouble, GLdouble, GLdouble, GLdouble);
void glProgramNamedParameter4fvNV (GLuint, GLsizei, GLubyte *, GLfloat *);
void glProgramNamedParameter4dvNV (GLuint, GLsizei, GLubyte *, GLdouble *);
void glGetProgramNamedParameterfvNV (GLuint, GLsizei, GLubyte *, GLfloat *);
void glGetProgramNamedParameterdvNV (GLuint, GLsizei, GLubyte *, GLdouble *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPROGRAMNAMEDPARAMETER4FNVPROC) (GLuint id, GLsizei len, GLubyte *name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
alias void (*PFNGLPROGRAMNAMEDPARAMETER4DNVPROC) (GLuint id, GLsizei len, GLubyte *name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
alias void (*PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC) (GLuint id, GLsizei len, GLubyte *name, GLfloat *v);
alias void (*PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC) (GLuint id, GLsizei len, GLubyte *name, GLdouble *v);
alias void (*PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC) (GLuint id, GLsizei len, GLubyte *name, GLfloat *params);
alias void (*PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC) (GLuint id, GLsizei len, GLubyte *name, GLdouble *params);
}

version (GL_NV_half_float) { } else {
version = GL_NV_half_float;
version (GL_GLEXT_PROTOTYPES) {
void glVertex2hNV (GLhalfNV, GLhalfNV);
void glVertex2hvNV (GLhalfNV *);
void glVertex3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
void glVertex3hvNV (GLhalfNV *);
void glVertex4hNV (GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
void glVertex4hvNV (GLhalfNV *);
void glNormal3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
void glNormal3hvNV (GLhalfNV *);
void glColor3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
void glColor3hvNV (GLhalfNV *);
void glColor4hNV (GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
void glColor4hvNV (GLhalfNV *);
void glTexCoord1hNV (GLhalfNV);
void glTexCoord1hvNV (GLhalfNV *);
void glTexCoord2hNV (GLhalfNV, GLhalfNV);
void glTexCoord2hvNV (GLhalfNV *);
void glTexCoord3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
void glTexCoord3hvNV (GLhalfNV *);
void glTexCoord4hNV (GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
void glTexCoord4hvNV (GLhalfNV *);
void glMultiTexCoord1hNV (GLenum, GLhalfNV);
void glMultiTexCoord1hvNV (GLenum, GLhalfNV *);
void glMultiTexCoord2hNV (GLenum, GLhalfNV, GLhalfNV);
void glMultiTexCoord2hvNV (GLenum, GLhalfNV *);
void glMultiTexCoord3hNV (GLenum, GLhalfNV, GLhalfNV, GLhalfNV);
void glMultiTexCoord3hvNV (GLenum, GLhalfNV *);
void glMultiTexCoord4hNV (GLenum, GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
void glMultiTexCoord4hvNV (GLenum, GLhalfNV *);
void glFogCoordhNV (GLhalfNV);
void glFogCoordhvNV (GLhalfNV *);
void glSecondaryColor3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
void glSecondaryColor3hvNV (GLhalfNV *);
void glVertexWeighthNV (GLhalfNV);
void glVertexWeighthvNV (GLhalfNV *);
void glVertexAttrib1hNV (GLuint, GLhalfNV);
void glVertexAttrib1hvNV (GLuint, GLhalfNV *);
void glVertexAttrib2hNV (GLuint, GLhalfNV, GLhalfNV);
void glVertexAttrib2hvNV (GLuint, GLhalfNV *);
void glVertexAttrib3hNV (GLuint, GLhalfNV, GLhalfNV, GLhalfNV);
void glVertexAttrib3hvNV (GLuint, GLhalfNV *);
void glVertexAttrib4hNV (GLuint, GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
void glVertexAttrib4hvNV (GLuint, GLhalfNV *);
void glVertexAttribs1hvNV (GLuint, GLsizei, GLhalfNV *);
void glVertexAttribs2hvNV (GLuint, GLsizei, GLhalfNV *);
void glVertexAttribs3hvNV (GLuint, GLsizei, GLhalfNV *);
void glVertexAttribs4hvNV (GLuint, GLsizei, GLhalfNV *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLVERTEX2HNVPROC) (GLhalfNV x, GLhalfNV y);
alias void (*PFNGLVERTEX2HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLVERTEX3HNVPROC) (GLhalfNV x, GLhalfNV y, GLhalfNV z);
alias void (*PFNGLVERTEX3HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLVERTEX4HNVPROC) (GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
alias void (*PFNGLVERTEX4HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLNORMAL3HNVPROC) (GLhalfNV nx, GLhalfNV ny, GLhalfNV nz);
alias void (*PFNGLNORMAL3HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLCOLOR3HNVPROC) (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
alias void (*PFNGLCOLOR3HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLCOLOR4HNVPROC) (GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha);
alias void (*PFNGLCOLOR4HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLTEXCOORD1HNVPROC) (GLhalfNV s);
alias void (*PFNGLTEXCOORD1HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLTEXCOORD2HNVPROC) (GLhalfNV s, GLhalfNV t);
alias void (*PFNGLTEXCOORD2HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLTEXCOORD3HNVPROC) (GLhalfNV s, GLhalfNV t, GLhalfNV r);
alias void (*PFNGLTEXCOORD3HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLTEXCOORD4HNVPROC) (GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
alias void (*PFNGLTEXCOORD4HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLMULTITEXCOORD1HNVPROC) (GLenum target, GLhalfNV s);
alias void (*PFNGLMULTITEXCOORD1HVNVPROC) (GLenum target, GLhalfNV *v);
alias void (*PFNGLMULTITEXCOORD2HNVPROC) (GLenum target, GLhalfNV s, GLhalfNV t);
alias void (*PFNGLMULTITEXCOORD2HVNVPROC) (GLenum target, GLhalfNV *v);
alias void (*PFNGLMULTITEXCOORD3HNVPROC) (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r);
alias void (*PFNGLMULTITEXCOORD3HVNVPROC) (GLenum target, GLhalfNV *v);
alias void (*PFNGLMULTITEXCOORD4HNVPROC) (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
alias void (*PFNGLMULTITEXCOORD4HVNVPROC) (GLenum target, GLhalfNV *v);
alias void (*PFNGLFOGCOORDHNVPROC) (GLhalfNV fog);
alias void (*PFNGLFOGCOORDHVNVPROC) (GLhalfNV *fog);
alias void (*PFNGLSECONDARYCOLOR3HNVPROC) (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
alias void (*PFNGLSECONDARYCOLOR3HVNVPROC) (GLhalfNV *v);
alias void (*PFNGLVERTEXWEIGHTHNVPROC) (GLhalfNV weight);
alias void (*PFNGLVERTEXWEIGHTHVNVPROC) (GLhalfNV *weight);
alias void (*PFNGLVERTEXATTRIB1HNVPROC) (GLuint index, GLhalfNV x);
alias void (*PFNGLVERTEXATTRIB1HVNVPROC) (GLuint index, GLhalfNV *v);
alias void (*PFNGLVERTEXATTRIB2HNVPROC) (GLuint index, GLhalfNV x, GLhalfNV y);
alias void (*PFNGLVERTEXATTRIB2HVNVPROC) (GLuint index, GLhalfNV *v);
alias void (*PFNGLVERTEXATTRIB3HNVPROC) (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z);
alias void (*PFNGLVERTEXATTRIB3HVNVPROC) (GLuint index, GLhalfNV *v);
alias void (*PFNGLVERTEXATTRIB4HNVPROC) (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
alias void (*PFNGLVERTEXATTRIB4HVNVPROC) (GLuint index, GLhalfNV *v);
alias void (*PFNGLVERTEXATTRIBS1HVNVPROC) (GLuint index, GLsizei n, GLhalfNV *v);
alias void (*PFNGLVERTEXATTRIBS2HVNVPROC) (GLuint index, GLsizei n, GLhalfNV *v);
alias void (*PFNGLVERTEXATTRIBS3HVNVPROC) (GLuint index, GLsizei n, GLhalfNV *v);
alias void (*PFNGLVERTEXATTRIBS4HVNVPROC) (GLuint index, GLsizei n, GLhalfNV *v);
}

version (GL_NV_pixel_data_range) { } else {
version = GL_NV_pixel_data_range;
version (GL_GLEXT_PROTOTYPES) {
void glPixelDataRangeNV (GLenum, GLsizei, GLvoid *);
void glFlushPixelDataRangeNV (GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPIXELDATARANGENVPROC) (GLenum target, GLsizei length, GLvoid *pointer);
alias void (*PFNGLFLUSHPIXELDATARANGENVPROC) (GLenum target);
}

version (GL_NV_primitive_restart) { } else {
version = GL_NV_primitive_restart;
version (GL_GLEXT_PROTOTYPES) {
void glPrimitiveRestartNV ();
void glPrimitiveRestartIndexNV (GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLPRIMITIVERESTARTNVPROC) ();
alias void (*PFNGLPRIMITIVERESTARTINDEXNVPROC) (GLuint index);
}

version (GL_NV_texture_expand_normal) { } else {
version = GL_NV_texture_expand_normal;
}

version (GL_NV_vertex_program2) { } else {
version = GL_NV_vertex_program2;
}

version (GL_ATI_map_object_buffer) { } else {
version = GL_ATI_map_object_buffer;
version (GL_GLEXT_PROTOTYPES) {
GLvoid* glMapObjectBufferATI (GLuint);
void glUnmapObjectBufferATI (GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias GLvoid* (*PFNGLMAPOBJECTBUFFERATIPROC) (GLuint buffer);
alias void (*PFNGLUNMAPOBJECTBUFFERATIPROC) (GLuint buffer);
}

version (GL_ATI_separate_stencil) { } else {
version = GL_ATI_separate_stencil;
version (GL_GLEXT_PROTOTYPES) {
void glStencilOpSeparateATI (GLenum, GLenum, GLenum, GLenum);
void glStencilFuncSeparateATI (GLenum, GLenum, GLint, GLuint);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLSTENCILOPSEPARATEATIPROC) (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
alias void (*PFNGLSTENCILFUNCSEPARATEATIPROC) (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);
}

version (GL_ATI_vertex_attrib_array_object) { } else {
version = GL_ATI_vertex_attrib_array_object;
version (GL_GLEXT_PROTOTYPES) {
void glVertexAttribArrayObjectATI (GLuint, GLint, GLenum, GLboolean, GLsizei, GLuint, GLuint);
void glGetVertexAttribArrayObjectfvATI (GLuint, GLenum, GLfloat *);
void glGetVertexAttribArrayObjectivATI (GLuint, GLenum, GLint *);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLVERTEXATTRIBARRAYOBJECTATIPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
alias void (*PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC) (GLuint index, GLenum pname, GLfloat *params);
alias void (*PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC) (GLuint index, GLenum pname, GLint *params);
}

version (GL_EXT_depth_bounds_test) { } else {
version = GL_EXT_depth_bounds_test;
version (GL_GLEXT_PROTOTYPES) {
void glDepthBoundsEXT (GLclampd, GLclampd);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLDEPTHBOUNDSEXTPROC) (GLclampd zmin, GLclampd zmax);
}

version (GL_EXT_texture_mirror_clamp) { } else {
version = GL_EXT_texture_mirror_clamp;
}

version (GL_EXT_blend_equation_separate) { } else {
version = GL_EXT_blend_equation_separate;
version (GL_GLEXT_PROTOTYPES) {
void glBlendEquationSeparateEXT (GLenum, GLenum);
} /* GL_GLEXT_PROTOTYPES */
alias void (*PFNGLBLENDEQUATIONSEPARATEEXTPROC) (GLenum modeRGB, GLenum modeAlpha);
}

version (GL_MESA_pack_invert) { } else {
version = GL_MESA_pack_invert;
}

version (GL_MESA_ycbcr_texture) { } else {
version = GL_MESA_ycbcr_texture;
}

version (GL_WIN_swap_hint) { } else {
version = GL_WIN_swap_hint;
version (GL_GLEXT_PROTOTYPES) {
void glAddSwapHintRectWIN (GLint, GLint, GLsizei, GLsizei);
} /* GL_GLEXT_PROTOTYPES */
alias void (* PFNGLADDSWAPHINTRECTWINPROC) (GLint x, GLint y, GLsizei width, GLsizei height);
}

