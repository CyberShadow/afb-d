
/* gd.h: declarations file for the graphic-draw module.
 * Permission to use, copy, modify, and distribute this software and its
 * documentation for any purpose and without fee is hereby granted, provided
 * that the above copyright notice appear in all copies and that both that
 * copyright notice and this permission notice appear in supporting
 * documentation.  This software is provided "AS IS." Thomas Boutell and
 * Boutell.Com, Inc. disclaim all warranties, either express or implied, 
 * including but not limited to implied warranties of merchantability and 
 * fitness for a particular purpose, with respect to this code and accompanying
 * documentation. */

module gd.gd;

/* stdio is needed for file I/O. */
import core.stdc.stdio;

import gd.gd_io;

extern(System)
{


/* The maximum number of palette entries in palette-based images.
	In the wonderful new world of gd 2.0, you can of course have
	many more colors when using truecolor mode. */

const uint gdMaxColors = 256;

/* Image type. See functions below; you will not need to change
	the elements directly. Use the provided macros to
	access sx, sy, the color table, and colorsTotal for 
	read-only purposes. */

/* If 'truecolor' is set true, the image is truecolor; 
	pixels are represented by integers, which
	must be 32 bits wide or more. 

	True colors are repsented as follows:

	ARGB

	Where 'A' (alpha channel) occupies only the
	LOWER 7 BITS of the MSB. This very small 
	loss of alpha channel resolution allows gd 2.x
	to keep backwards compatibility by allowing
	signed integers to be used to represent colors,
	and negative numbers to represent special cases,
	just as in gd 1.x. */

const uint gdAlphaMax = 127;
const uint gdAlphaOpaque = 0;
const uint gdAlphaTransparent = 127;
const uint gdRedMax = 255;
const uint gdGreenMax = 255;
const uint gdBlueMax = 255;

uint gdTrueColorGetAlpha(uint c) { return (c & 0x7F000000) >> 24; }
uint gdTrueColorGetRed(uint c) { return (c & 0xFF0000) >> 16; }
uint gdTrueColorGetGreen(uint c) { return (c & 0x00FF00) >> 8; }
uint gdTrueColorGetBlue(uint c) { return c & 0x0000FF; }

/* This function accepts truecolor pixel values only. The 
	source color is composited with the destination color
	based on the alpha channel value of the source color.
	The resulting color is opaque. */

   int gdAlphaBlend (int dest, int src);

  struct gdImage
  {
    /* Palette-based image pixels */
    ubyte **pixels;
    int sx;
    int sy;
    /* These are valid in palette images only. See also
       'alpha', which appears later in the structure to
       preserve binary backwards compatibility */
    int colorsTotal;
    int[gdMaxColors] red;
    int[gdMaxColors] green;
    int[gdMaxColors] blue;
    int[gdMaxColors] open;
    /* For backwards compatibility, this is set to the
       first palette entry with 100% transparency,
       and is also set and reset by the 
       gdImageColorTransparent function. Newer
       applications can allocate palette entries
       with any desired level of transparency; however,
       bear in mind that many viewers, notably
       many web browsers, fail to implement
       full alpha channel for PNG and provide
       support for full opacity or transparency only. */
    int transparent;
    int *polyInts;
    int polyAllocated;
    gdImageStruct *brush;
    gdImageStruct *tile;
    int[gdMaxColors] brushColorMap;
    int[gdMaxColors] tileColorMap;
    int styleLength;
    int stylePos;
    int *style;
    int interlace;
    /* New in 2.0: thickness of line. Initialized to 1. */
    int thick;
    /* New in 2.0: alpha channel for palettes. Note that only
       Macintosh Internet Explorer and (possibly) Netscape 6
       really support multiple levels of transparency in
       palettes, to my knowledge, as of 2/15/01. Most
       common browsers will display 100% opaque and
       100% transparent correctly, and do something 
       unpredictable and/or undesirable for levels
       in between. TBB */
    int[gdMaxColors] alpha;
    /* Truecolor flag and pixels. New 2.0 fields appear here at the
       end to minimize breakage of existing object code. */
    int trueColor;
    int **tpixels;
    /* Should alpha channel be copied, or applied, each time a
       pixel is drawn? This applies to truecolor images only.
       No attempt is made to alpha-blend in palette images,
       even if semitransparent palette entries exist. 
       To do that, build your image as a truecolor image,
       then quantize down to 8 bits. */
    int alphaBlendingFlag;
    /* Should the alpha channel of the image be saved? This affects
       PNG at the moment; other future formats may also
       have that capability. JPEG doesn't. */
    int saveAlphaFlag;

    /* There should NEVER BE ACCESSOR MACROS FOR ITEMS BELOW HERE, so this
       part of the structure can be safely changed in new releases. */

    /* 2.0.12: anti-aliased globals. 2.0.26: just a few vestiges after
      switching to the fast, memory-cheap implementation from PHP-gd. */
    int AA;
    int AA_color;
    int AA_dont_blend;

    /* 2.0.12: simple clipping rectangle. These values
      must be checked for safety when set; please use
      gdImageSetClip */
    int cx1;
    int cy1;
    int cx2;
    int cy2;
  }

  alias gdImage  gdImageStruct;
  alias gdImage* gdImagePtr;

  struct gdFont
  {
    /* # of characters in font */
    int nchars;
    /* First character is numbered... (usually 32 = space) */
    int offset;
    /* Character width and height */
    int w;
    int h;
    /* Font data; array of characters, one row after another.
       Easily included in code, also easily loaded from
       data files. */
    char *data;
  }

/* Text functions take these. */
  alias gdFont *gdFontPtr;

/* For backwards compatibility only. Use gdImageSetStyle()
	for MUCH more flexible line drawing. Also see
	gdImageSetBrush(). */
const uint gdDashSize = 4;

/* Special colors. */

version = gdStyled;
version = gdBrushed;
version = gdStyledBrushed;
version = gdTiled;

/* NOT the same as the transparent color index.
	This is used in line styles only. */
version = gdTransparent;

version = gdAntiAliased;

/* Functions to manipulate images. */

/* Creates a palette-based image (up to 256 colors). */
gdImagePtr gdImageCreate (int sx, int sy);

/* An alternate name for the above (2.0). */
alias gdImageCreate gdImageCreatePalette;

/* Creates a truecolor image (millions of colors). */
gdImagePtr gdImageCreateTrueColor (int sx, int sy);

/* Creates an image from various file types. These functions
	return a palette or truecolor image based on the
	nature of the file being loaded. Truecolor PNG
	stays truecolor; palette PNG stays palette-based;
	JPEG is always truecolor. */
gdImagePtr gdImageCreateFromPng (FILE * fd);
gdImagePtr gdImageCreateFromPngCtx (gdIOCtxPtr infile);
gdImagePtr gdImageCreateFromPngPtr (int size, void *data);

/* These read the first frame only */
gdImagePtr gdImageCreateFromGif (FILE * fd);
gdImagePtr gdImageCreateFromGifCtx (gdIOCtxPtr infile);
gdImagePtr gdImageCreateFromGifPtr (int size, void *data);
gdImagePtr gdImageCreateFromWBMP (FILE * inFile);
gdImagePtr gdImageCreateFromWBMPCtx (gdIOCtx * infile);
gdImagePtr gdImageCreateFromWBMPPtr (int size, void *data);
gdImagePtr gdImageCreateFromJpeg (FILE * infile);
gdImagePtr gdImageCreateFromJpegCtx (gdIOCtx * infile);
gdImagePtr gdImageCreateFromJpegPtr (int size, void *data);

/* A custom data source. */
/* The source function must return -1 on error, otherwise the number
        of bytes fetched. 0 is EOF, not an error! */
/* context will be passed to your source function. */

  struct gdSource
  {
    int function (void *context, char *buffer, int len) source;
    void *context;
  }
  alias gdSource* gdSourcePtr;

   /* Deprecated in favor of gdImageCreateFromPngCtx */
gdImagePtr gdImageCreateFromPngSource (gdSourcePtr inpng);

gdImagePtr gdImageCreateFromGd (FILE * ingd);
gdImagePtr gdImageCreateFromGdCtx (gdIOCtxPtr infile);
gdImagePtr gdImageCreateFromGdPtr (int size, void *data);

gdImagePtr gdImageCreateFromGd2 (FILE * ingd2);
gdImagePtr gdImageCreateFromGd2Ctx (gdIOCtxPtr infile);
gdImagePtr gdImageCreateFromGd2Ptr (int size, void *data);

gdImagePtr gdImageCreateFromGd2Part (FILE * ingd2, int srcx, int srcy, int w,
				       int h);
gdImagePtr gdImageCreateFromGd2PartCtx (gdIOCtxPtr infile, int srcx, int srcy,
					  int w, int h);
gdImagePtr gdImageCreateFromGd2PartPtr (int size, void *data, int srcx, int srcy,
					  int w, int h);
  /* 2.0.10: prototype was missing */
gdImagePtr gdImageCreateFromXbm (FILE * inxbm);

  /* NOTE: filename, not FILE */
gdImagePtr gdImageCreateFromXpm (char *filename);

 void gdImageDestroy (gdImagePtr im);

/* Replaces or blends with the background depending on the
	most recent call to gdImageAlphaBlending and the
	alpha channel value of 'color'; default is to overwrite. 
	Tiling and line styling are also implemented
	here. All other gd drawing functions pass through this call, 
	allowing for many useful effects. */

 void gdImageSetPixel (gdImagePtr im, int x, int y, int color);
/* FreeType 2 text output with hook to extra flags */

int gdImageGetPixel (gdImagePtr im, int x, int y);
int gdImageGetTrueColorPixel (gdImagePtr im, int x, int y);

 void gdImageAABlend (gdImagePtr im);

 void gdImageLine (gdImagePtr im, int x1, int y1, int x2, int y2, int color);

/* For backwards compatibility only. Use gdImageSetStyle()
	for much more flexible line drawing. */
void gdImageDashedLine (gdImagePtr im, int x1, int y1, int x2, int y2,
			  int color);
/* Corners specified (not width and height). Upper left first, lower right
 	second. */
 void gdImageRectangle (gdImagePtr im, int x1, int y1, int x2, int y2,
			 int color);
/* Solid bar. Upper left corner first, lower right corner second. */
 void gdImageFilledRectangle (gdImagePtr im, int x1, int y1, int x2, int y2,
			       int color);
 void gdImageSetClip(gdImagePtr im, int x1, int y1, int x2, int y2);
 void gdImageGetClip(gdImagePtr im, int *x1P, int *y1P, int *x2P, int *y2P);
int gdImageBoundsSafe (gdImagePtr im, int x, int y);
 void gdImageChar (gdImagePtr im, gdFontPtr f, int x, int y, int c,
		    int color);
 void gdImageCharUp (gdImagePtr im, gdFontPtr f, int x, int y, int c,
		      int color);
 void gdImageString (gdImagePtr im, gdFontPtr f, int x, int y,
		      ubyte *s, int color);
 void gdImageStringUp (gdImagePtr im, gdFontPtr f, int x, int y,
			ubyte *s, int color);
 void gdImageString16 (gdImagePtr im, gdFontPtr f, int x, int y,
			ushort *s, int color);
 void gdImageStringUp16 (gdImagePtr im, gdFontPtr f, int x, int y,
			  ushort *s, int color);

/* 2.0.16: for thread-safe use of gdImageStringFT and friends,
  call this before allowing any thread to call gdImageStringFT. 
  Otherwise it is invoked by the first thread to invoke
  gdImageStringFT, with a very small but real risk of a race condition. 
  Return 0 on success, nonzero on failure to initialize freetype. */
int gdFontCacheSetup ();

/* Optional: clean up after application is done using fonts in 
  gdImageStringFT(). */
 void gdFontCacheShutdown ();
/* 2.0.20: for backwards compatibility. A few applications did start calling
 this function when it first appeared although it was never documented. 
 Simply invokes gdFontCacheShutdown. */
 void gdFreeFontCache ();

/* Calls gdImageStringFT. Provided for backwards compatibility only. */
char * gdImageStringTTF (gdImage * im, int *brect, int fg, char *fontlist,
			  double ptsize, double angle, int x, int y,
			  char *string);

/* FreeType 2 text output */
char * gdImageStringFT (gdImage * im, int *brect, int fg, char *fontlist,
			 double ptsize, double angle, int x, int y,
			 char *string);

/* 2.0.5: provides an extensible way to pass additional parameters.
	Thanks to Wez Furlong, sorry for the delay. */

  struct gdFTStringExtra
  {
    int flags;			/* Logical OR of gdFTEX_ values */
    double linespacing;		/* fine tune line spacing for '\n' */
    int charmap;		/* TBB: 2.0.12: may be gdFTEX_Unicode,
				   gdFTEX_Shift_JIS, or gdFTEX_Big5;
				   when not specified, maps are searched
				   for in the above order. */
    int hdpi;                   /* if (flags & gdFTEX_RESOLUTION) */
    int vdpi;			/* if (flags & gdFTEX_RESOLUTION) */
    char *xshow;	/* if (flags & gdFTEX_XSHOW)
			   then, on return, xshow is a malloc'ed
			   string contining xshow position data for
			   the last string.

			   NB. The caller is responsible for gdFree'ing
			   the xshow string. 
			 */
    char *fontpath;	/* if (flags & gdFTEX_RETURNFONTPATHNAME)
                           then, on return, fontpath is a malloc'ed
                           string containing the actual font file path name
                           used, which can be interesting when fontconfig
                           is in use. 

                           The caller is responsible for gdFree'ing the
                           fontpath string.
			*/

  }
  alias gdFTStringExtra* gdFTStringExtraPtr;

const uint gdFTEX_LINESPACE = 1;
const uint gdFTEX_CHARMAP = 2;
const uint gdFTEX_RESOLUTION = 4;
const uint gdFTEX_DISABLE_KERNING = 8;
const uint gdFTEX_XSHOW = 16;
/* The default unless gdFTUseFontConfig(1); has been called:
  fontlist is a full or partial font file pathname or list thereof 
  (i.e. just like before 2.0.29) */
const uint gdFTEX_FONTPATHNAME = 32;
/* Necessary to use fontconfig patterns instead of font pathnames
  as the fontlist argument, unless gdFTUseFontConfig(1); has 
  been called. New in 2.0.29 */
const uint gdFTEX_FONTCONFIG = 64;
/* Sometimes interesting when fontconfig is used: the fontpath
  element of the structure above will contain a gdMalloc'd string
  copy of the actual font file pathname used, if this flag is set 
   when the call is made */
const uint gdFTEX_RETURNFONTPATHNAME = 128;

/* If flag is nonzero, the fontlist parameter to gdImageStringFT 
  and gdImageStringFTEx shall be assumed to be a fontconfig font pattern
  if fontconfig was compiled into gd. This function returns zero
  if fontconfig is not available, nonzero otherwise. */
int gdFTUseFontConfig(int flag);

/* These are NOT flags; set one in 'charmap' if you set the
	gdFTEX_CHARMAP bit in 'flags'. */
const uint gdFTEX_Unicode = 0;
const uint gdFTEX_Shift_JIS = 1;
const uint gdFTEX_Big5 = 2;

char * gdImageStringFTEx (gdImage * im, int *brect, int fg, char *fontlist,
			   double ptsize, double angle, int x, int y,
			   char *string, gdFTStringExtraPtr strex);

/* Point type for use in polygon drawing. */
  struct gdPoint
  {
    int x, y;
  }
  alias gdPoint* gdPointPtr;

 void gdImagePolygon (gdImagePtr im, gdPointPtr p, int n, int c);
 void gdImageOpenPolygon (gdImagePtr im, gdPointPtr p, int n, int c);
 void gdImageFilledPolygon (gdImagePtr im, gdPointPtr p, int n, int c);

/* These functions still work with truecolor images, 
	for which they never return error. */
int gdImageColorAllocate (gdImagePtr im, int r, int g, int b);
/* gd 2.0: palette entries with non-opaque transparency are permitted. */
int gdImageColorAllocateAlpha (gdImagePtr im, int r, int g, int b, int a);
/* Assumes opaque is the preferred alpha channel value */
int gdImageColorClosest (gdImagePtr im, int r, int g, int b);
/* Closest match taking all four parameters into account.
	A slightly different color with the same transparency
	beats the exact same color with radically different
	transparency */
int gdImageColorClosestAlpha (gdImagePtr im, int r, int g, int b, int a);
/* An alternate method */
int gdImageColorClosestHWB (gdImagePtr im, int r, int g, int b);
/* Returns exact, 100% opaque matches only */
int gdImageColorExact (gdImagePtr im, int r, int g, int b);
/* Returns an exact match only, including alpha */
int gdImageColorExactAlpha (gdImagePtr im, int r, int g, int b, int a);
/* Opaque only */
int gdImageColorResolve (gdImagePtr im, int r, int g, int b);
/* Based on gdImageColorExactAlpha and gdImageColorClosestAlpha */
int gdImageColorResolveAlpha (gdImagePtr im, int r, int g, int b, int a);

/* A simpler way to obtain an opaque truecolor value for drawing on a
	truecolor image. Not for use with palette images! */

uint gdTrueColor(uint r, uint g, uint b)
{
	return (r << 16) + (g << 8) + b;
}

/* Returns a truecolor value with an alpha channel component.
	gdAlphaMax (127, **NOT 255**) is transparent, 0 is completely
	opaque. */

uint gdTrueColorAlpha(uint r, uint g, uint b, uint a)
{
	return (a << 24) + (r << 16) + (g << 8) + b;
}

 void gdImageColorDeallocate (gdImagePtr im, int color);

/* Converts a truecolor image to a palette-based image,
	using a high-quality two-pass quantization routine
	which attempts to preserve alpha channel information
	as well as R/G/B color information when creating
	a palette. If ditherFlag is set, the image will be
	dithered to approximate colors better, at the expense
	of some obvious "speckling." colorsWanted can be
	anything up to 256. If the original source image
	includes photographic information or anything that
	came out of a JPEG, 256 is strongly recommended.

	Better yet, don't use these function -- write real
	truecolor PNGs and JPEGs. The disk space gain of
        conversion to palette is not great (for small images
        it can be negative) and the quality loss is ugly. 

	DIFFERENCES: gdImageCreatePaletteFromTrueColor creates and
	returns a new image. gdImageTrueColorToPalette modifies 
	an existing image, and the truecolor pixels are discarded. */

gdImagePtr gdImageCreatePaletteFromTrueColor (gdImagePtr im, int ditherFlag,
				  int colorsWanted);

 void gdImageTrueColorToPalette (gdImagePtr im, int ditherFlag,
				  int colorsWanted);

/* Specifies a color index (if a palette image) or an
	RGB color (if a truecolor image) which should be
	considered 100% transparent. FOR TRUECOLOR IMAGES,
	THIS IS IGNORED IF AN ALPHA CHANNEL IS BEING
	SAVED. Use gdImageSaveAlpha(im, 0); to
	turn off the saving of a full alpha channel in
	a truecolor image. Note that gdImageColorTransparent
	is usually compatible with older browsers that
	do not understand full alpha channels well. TBB */
 void gdImageColorTransparent (gdImagePtr im, int color);

 void gdImagePaletteCopy (gdImagePtr dst, gdImagePtr src);
 void gdImageGif (gdImagePtr im, FILE * of);
 void gdImagePng (gdImagePtr im, FILE * of);
 void gdImagePngCtx (gdImagePtr im, gdIOCtx * of);
 void gdImageGifCtx (gdImagePtr im, gdIOCtx * of);

/* 2.0.12: Compression level: 0-9 or -1, where 0 is NO COMPRESSION at all,
  1 is FASTEST but produces larger files, 9 provides the best
  compression (smallest files) but takes a long time to compress, and
  -1 selects the default compiled into the zlib library. */
 void gdImagePngEx (gdImagePtr im, FILE * of, int level);
 void gdImagePngCtxEx (gdImagePtr im, gdIOCtx * of, int level);

 void gdImageWBMP (gdImagePtr image, int fg, FILE * of);
 void gdImageWBMPCtx (gdImagePtr image, int fg, gdIOCtx * of);

/* Guaranteed to correctly free memory returned
	by the gdImage*Ptr functions */
 void gdFree (void *m);

/* Best to free this memory with gdFree(), not free() */
void * gdImageWBMPPtr (gdImagePtr im, int *size, int fg);

/* 100 is highest quality (there is always a little loss with JPEG).
	0 is lowest. 10 is about the lowest useful setting. */
 void gdImageJpeg (gdImagePtr im, FILE * of, int quality);
 void gdImageJpegCtx (gdImagePtr im, gdIOCtx * of, int quality);

/* Best to free this memory with gdFree(), not free() */
void * gdImageJpegPtr (gdImagePtr im, int *size, int quality);

/* Legal values for Disposal. gdDisposalNone is always used by
	the built-in optimizer if previm is passed. */

enum {
	gdDisposalUnknown,
	gdDisposalNone,
	gdDisposalRestoreBackground,
	gdDisposalRestorePrevious
};

 void gdImageGifAnimBegin(gdImagePtr im, FILE *outFile, int GlobalCM, int Loops);
 void gdImageGifAnimAdd(gdImagePtr im, FILE *outFile, int LocalCM, int LeftOfs, int TopOfs, int Delay, int Disposal, gdImagePtr previm);
 void gdImageGifAnimEnd(FILE *outFile);
 void gdImageGifAnimBeginCtx(gdImagePtr im, gdIOCtx *of, int GlobalCM, int Loops);
 void gdImageGifAnimAddCtx(gdImagePtr im, gdIOCtx *of, int LocalCM, int LeftOfs, int TopOfs, int Delay, int Disposal, gdImagePtr previm);
 void gdImageGifAnimEndCtx(gdIOCtx *of);
void * gdImageGifAnimBeginPtr(gdImagePtr im, int *size, int GlobalCM, int Loops);
void * gdImageGifAnimAddPtr(gdImagePtr im, int *size, int LocalCM, int LeftOfs, int TopOfs, int Delay, int Disposal, gdImagePtr previm);
void * gdImageGifAnimEndPtr(int *size);

/* A custom data sink. For backwards compatibility. Use
	gdIOCtx instead. */
/* The sink function must return -1 on error, otherwise the number
        of bytes written, which must be equal to len. */
/* context will be passed to your sink function. */
  struct gdSink
  {
    int function (void *context, char *buffer, int len) sink;
    void *context;
  }
  alias gdSink* gdSinkPtr;

 void gdImagePngToSink (gdImagePtr im, gdSinkPtr outSink);

 void gdImageGd (gdImagePtr im, FILE * outFile);
 void gdImageGd2 (gdImagePtr im, FILE * outFile, int cs, int fmt);

/* Best to free this memory with gdFree(), not free() */
void * gdImageGifPtr (gdImagePtr im, int *size);

/* Best to free this memory with gdFree(), not free() */
void * gdImagePngPtr (gdImagePtr im, int *size);
void * gdImagePngPtrEx (gdImagePtr im, int *size, int level);

/* Best to free this memory with gdFree(), not free() */
void * gdImageGdPtr (gdImagePtr im, int *size);

/* Best to free this memory with gdFree(), not free() */
void * gdImageGd2Ptr (gdImagePtr im, int cs, int fmt, int *size);

 void gdImageEllipse (gdImagePtr im, int cx, int cy, int w, int h,
		       int color);

/* Style is a bitwise OR ( | operator ) of these.
	gdArc and gdChord are mutually exclusive;
	gdChord just connects the starting and ending
	angles with a straight line, while gdArc produces
	a rounded edge. gdPie is a synonym for gdArc. 
	gdNoFill indicates that the arc or chord should be
	outlined, not filled. gdEdged, used together with
	gdNoFill, indicates that the beginning and ending
	angles should be connected to the center; this is
	a good way to outline (rather than fill) a
	'pie slice'. */
const uint gdArc   = 0;
alias gdArc   gdPie;
const uint gdChord = 1;
const uint gdNoFill = 2;
const uint gdEdged = 4;

 void gdImageFilledArc (gdImagePtr im, int cx, int cy, int w, int h, int s,
			 int e, int color, int style);
 void gdImageArc (gdImagePtr im, int cx, int cy, int w, int h, int s, int e,
		   int color);
 void gdImageFilledEllipse (gdImagePtr im, int cx, int cy, int w, int h,
			     int color);
 void gdImageFillToBorder (gdImagePtr im, int x, int y, int border,
			    int color);
 void gdImageFill (gdImagePtr im, int x, int y, int color);
 void gdImageCopy (gdImagePtr dst, gdImagePtr src, int dstX, int dstY,
		    int srcX, int srcY, int w, int h);
 void gdImageCopyMerge (gdImagePtr dst, gdImagePtr src, int dstX, int dstY,
			 int srcX, int srcY, int w, int h, int pct);
 void gdImageCopyMergeGray (gdImagePtr dst, gdImagePtr src, int dstX,
			     int dstY, int srcX, int srcY, int w, int h,
			     int pct);

/* Stretches or shrinks to fit, as needed. Does NOT attempt
	to average the entire set of source pixels that scale down onto the
	destination pixel. */
 void gdImageCopyResized (gdImagePtr dst, gdImagePtr src, int dstX, int dstY,
			   int srcX, int srcY, int dstW, int dstH, int srcW,
			   int srcH);

/* gd 2.0: stretches or shrinks to fit, as needed. When called with a
	truecolor destination image, this function averages the
	entire set of source pixels that scale down onto the
	destination pixel, taking into account what portion of the
	destination pixel each source pixel represents. This is a
	floating point operation, but this is not a performance issue
	on modern hardware, except for some embedded devices. If the 
	destination is a palette image, gdImageCopyResized is 
	substituted automatically. */
 void gdImageCopyResampled (gdImagePtr dst, gdImagePtr src, int dstX,
			     int dstY, int srcX, int srcY, int dstW, int dstH,
			     int srcW, int srcH);

/* gd 2.0.8: gdImageCopyRotated is added. Source
        is a rectangle, with its upper left corner at
        srcX and srcY. Destination is the *center* of
        the rotated copy. Angle is in degrees, same as
        gdImageArc. Floating point destination center
        coordinates allow accurate rotation of
        objects of odd-numbered width or height. */
 void gdImageCopyRotated (gdImagePtr dst,
			   gdImagePtr src,
			   double dstX, double dstY,
			   int srcX, int srcY,
			   int srcWidth, int srcHeight, int angle);

 void gdImageSetBrush (gdImagePtr im, gdImagePtr brush);
 void gdImageSetTile (gdImagePtr im, gdImagePtr tile);
 void gdImageSetAntiAliased (gdImagePtr im, int c);
 void gdImageSetAntiAliasedDontBlend (gdImagePtr im, int c, int dont_blend);
 void gdImageSetStyle (gdImagePtr im, int *style, int noOfPixels);
/* Line thickness (defaults to 1). Affects lines, ellipses, 
	rectangles, polygons and so forth. */
 void gdImageSetThickness (gdImagePtr im, int thickness);
/* On or off (1 or 0) for all three of these. */
 void gdImageInterlace (gdImagePtr im, int interlaceArg);
 void gdImageAlphaBlending (gdImagePtr im, int alphaBlendingArg);
 void gdImageSaveAlpha (gdImagePtr im, int saveAlphaArg);

/* Macros to access information about images. */

/* Returns nonzero if the image is a truecolor image,
	zero for a palette image. */

uint gdImageTrueColor(gdImagePtr im) { return im.trueColor; }

uint gdImageSX(gdImagePtr im) { return im.sx; }
uint gdImageSY(gdImagePtr im) { return im.sy; }
uint gdImageColorsTotal(gdImagePtr im){ return im.colorsTotal; }
uint gdImageRed(gdImagePtr im, uint c)
{ return im.trueColor ? gdTrueColorGetRed(c) : im.red[(c)]; }
uint gdImageGreen(gdImagePtr im, uint c)
{ return im.trueColor ? gdTrueColorGetGreen(c) :  im.green[(c)]; }
uint gdImageBlue(gdImagePtr im, uint c)
{ return im.trueColor ? gdTrueColorGetBlue(c) :  im.blue[(c)]; }
uint gdImageAlpha(gdImagePtr im, uint c)
{ return im.trueColor ? gdTrueColorGetAlpha(c) :  im.alpha[(c)]; }
uint gdImageGetTransparent(gdImagePtr im) { return im.transparent; }
uint gdImageGetInterlaced(gdImagePtr im) { return im.interlace; }

/* These macros provide direct access to pixels in
	palette-based and truecolor images, respectively.
	If you use these macros, you must perform your own
	bounds checking. Use of the macro for the correct type
	of image is also your responsibility. */
uint gdImagePalettePixel(gdImagePtr im, uint x, uint y) { return im.pixels[(y)][(x)]; }
uint gdImageTrueColorPixel(gdImagePtr im, uint x, uint y) { return im.tpixels[(y)][(x)]; }

/* I/O Support routines. */

gdIOCtx * gdNewFileCtx (FILE *);
  /* If data is null, size is ignored and an initial data buffer is
    allocated automatically. NOTE: this function assumes gd has the right 
    to free or reallocate "data" at will! Also note that gd will free 
    "data" when the IO context is freed. If data is not null, it must point
    to memory allocated with gdMalloc, or by a call to gdImage[something]Ptr.
    If not, see gdNewDynamicCtxEx for an alternative. */
gdIOCtx * gdNewDynamicCtx (int size, void *data);
  /* 2.0.21: if freeFlag is nonzero, gd will free and/or reallocate "data" as
    needed as described above. If freeFlag is zero, gd will never free 
    or reallocate "data," which means that the context should only be used
    for *reading* an image from a memory buffer, or writing an image to a
    memory buffer which is already large enough. If the memory buffer is
    not large enough and an image write is attempted, the write operation
    will fail. Those wishing to write an image to a buffer in memory have
    a much simpler alternative in the gdImage[something]Ptr functions. */
gdIOCtx * gdNewDynamicCtxEx (int size, void *data, int freeFlag);
gdIOCtx * gdNewSSCtx (gdSourcePtr inSource, gdSinkPtr outSink);
void * gdDPExtractData (gdIOCtx *ctx, int *size);

const uint GD2_CHUNKSIZE           = 128;
const uint GD2_CHUNKSIZE_MIN	= 64;
const uint GD2_CHUNKSIZE_MAX       = 4096;

const uint GD2_VERS                = 2;
version = GD2_ID;

const uint GD2_FMT_RAW             = 1;
const uint GD2_FMT_COMPRESSED      = 2;

/* Image comparison definitions */
int gdImageCompare (gdImagePtr im1, gdImagePtr im2);

const uint GD_CMP_IMAGE		= 1;	/* Actual image IS different */
const uint GD_CMP_NUM_COLORS	= 2;	/* Number of Colours in pallette differ */
const uint GD_CMP_COLOR		= 4;	/* Image colours differ */
const uint GD_CMP_SIZE_X		= 8;	/* Image width differs */
const uint GD_CMP_SIZE_Y		= 16;	/* Image heights differ */
const uint GD_CMP_TRANSPARENT	= 32;	/* Transparent colour */
const uint GD_CMP_BACKGROUND	= 64;	/* Background colour */
const uint GD_CMP_INTERLACE	= 128;	/* Interlaced setting */
const uint GD_CMP_TRUECOLOR	= 256;	/* Truecolor vs palette differs */

/* resolution affects ttf font rendering, particularly hinting */
const uint GD_RESOLUTION           = 96;	/* pixels per inch */

}

/* newfangled special effects */
public import gd.gdfx;

