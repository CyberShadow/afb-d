
import gd.gd;

import std.c.stdio;
import std.c.stdlib;

int
main (char[][] args)
{
  gdImagePtr im, ref, im2, im3;
  FILE* inFile, outFile;
  void* iptr;
  int sz;
  char[256] of;
  int colRed, colBlu;
  gdSource imgsrc;
  gdSink imgsnk;
  int foreground;
  int i;
  if (args.length != 2)
    {
      fprintf (stderr, "Usage: gdtest filename.png\n");
      exit (1);
    }
  inFile = fopen (args[1], "rb");
  if (!inFile)
    {
      fprintf (stderr, "Input file does not exist!\n");
      exit (1);
    }
  im = gdImageCreateFromPng (inFile);

  rewind (inFile);
  ref = gdImageCreateFromPng (inFile);

  fclose (inFile);

  printf ("Reference File has %d Palette entries\n", ref.colorsTotal);

  CompareImages ("Initial Versions", ref, im);


  /* */
  /* Send to PNG File then Ptr */
  /* */
  sprintf (of, "%.*s.png", args[1]);
  outFile = fopen (of, "wb");
  gdImagePng (im, outFile);
  fclose (outFile);

  inFile = fopen (of, "rb");
  if (!inFile)
    {
      fprintf (stderr, "PNG Output file does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromPng (inFile);
  fclose (inFile);

  CompareImages ("GD.PNG File.GD", ref, im2);

  unlink (of);
  gdImageDestroy (im2);

  /* 2.0.21: use the new From*Ptr functions */
  iptr = gdImagePngPtr (im, &sz);
  im2 = gdImageCreateFromPngPtr (sz, iptr);
  gdFree (iptr);
  CompareImages ("GD.PNG ptr.GD", ref, im2);

  gdImageDestroy (im2);

  /* */
  /* Send to GD2 File then Ptr */
  /* */
  sprintf (of, "%.*s.gd2", args[1]);
  outFile = fopen (of, "wb");
  gdImageGd2 (im, outFile, 128, 2);
  fclose (outFile);

  inFile = fopen (of, "rb");
  if (!inFile)
    {
      fprintf (stderr, "GD2 Output file does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromGd2 (inFile);
  fclose (inFile);

  CompareImages ("GD.GD2 File.GD", ref, im2);

  unlink (of);
  gdImageDestroy (im2);

  iptr = gdImageGd2Ptr (im, 128, 2, &sz);
  /*printf("Got ptr %d (size %d)\n",iptr, sz); */
  im2 = gdImageCreateFromGd2Ptr (sz, iptr);
  gdFree (iptr);
  /*printf("Got img2 %d\n",im2); */

  CompareImages ("GD.GD2 ptr.GD", ref, im2);

  gdImageDestroy (im2);

  /* */
  /* Send to GD File then Ptr */
  /* */
  sprintf (of, "%.*s.gd", args[1]);
  outFile = fopen (of, "wb");
  gdImageGd (im, outFile);
  fclose (outFile);

  inFile = fopen (of, "rb");
  if (!inFile)
    {
      fprintf (stderr, "GD Output file does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromGd (inFile);
  fclose (inFile);

  CompareImages ("GD.GD File.GD", ref, im2);

  unlink (of);
  gdImageDestroy (im2);

  iptr = gdImageGdPtr (im, &sz);
  /*printf("Got ptr %d (size %d)\n",iptr, sz); */
  im2 = gdImageCreateFromGdPtr (sz, iptr);
  gdFree (iptr);
  /*printf("Got img2 %d\n",im2); */

  CompareImages ("GD.GD ptr.GD", ref, im2);

  gdImageDestroy (im2);

  /*
     ** Test gdImageCreateFromPngSource'
     * */

  inFile = fopen (args[1], "rb");

  imgsrc.source = &freadWrapper;
  imgsrc.context = inFile;
  im2 = gdImageCreateFromPngSource (&imgsrc);
  fclose (inFile);

  if (im2 == null)
    {
      printf
	("GD Source: ERROR Null returned by gdImageCreateFromPngSource\n");
    }
  else
    {
      CompareImages ("GD Source", ref, im2);
      gdImageDestroy (im2);
    };


  /*
     ** Test gdImagePngToSink'
     * */

  sprintf (of, "%.*s.snk", args[1]);
  outFile = fopen (of, "wb");
  imgsnk.sink = &fwriteWrapper;
  imgsnk.context = outFile;
  gdImagePngToSink (im, &imgsnk);
  fclose (outFile);
  inFile = fopen (of, "rb");
  if (!inFile)
    {
      fprintf (stderr,
	       "GD Sink: ERROR - GD Sink Output file does not exist!\n");
    }
  else
    {
      im2 = gdImageCreateFromPng (inFile);
      fclose (inFile);

      CompareImages ("GD Sink", ref, im2);
      gdImageDestroy (im2);
    };

  unlink (of);

  /* */
  /*  Test Extraction */
  /* */
  inFile = fopen ("gdtest_200_300_150_100.png", "rb");
  if (!inFile)
    {
      fprintf (stderr, "gdtest_200_300_150_100.png does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromPng (inFile);
  fclose (inFile);


  inFile = fopen ("gdtest.gd2", "rb");
  if (!inFile)
    {
      fprintf (stderr, "gdtest.gd2 does not exist!\n");
      exit (1);
    }
  im3 = gdImageCreateFromGd2Part (inFile, 200, 300, 150, 100);
  fclose (inFile);

  CompareImages ("GD2Part (gdtest_200_300_150_100.png, gdtest.gd2(part))",
		 im2, im3);

  gdImageDestroy (im2);
  gdImageDestroy (im3);

  /* */
  /*  Copy Blend */
  /* */
  inFile = fopen ("gdtest.png", "rb");
  if (!inFile)
    {
      fprintf (stderr, "gdtest.png does not exist!\n");
      exit (1);
    }
  im2 = gdImageCreateFromPng (inFile);
  fclose (inFile);

  im3 = gdImageCreate (100, 60);
  colRed = gdImageColorAllocate (im3, 255, 0, 0);
  colBlu = gdImageColorAllocate (im3, 0, 0, 255);
  gdImageFilledRectangle (im3, 0, 0, 49, 30, colRed);
  gdImageFilledRectangle (im3, 50, 30, 99, 59, colBlu);

  gdImageCopyMerge (im2, im3, 150, 200, 10, 10, 90, 50, 50);
  gdImageCopyMerge (im2, im3, 180, 70, 10, 10, 90, 50, 50);

  gdImageCopyMergeGray (im2, im3, 250, 160, 10, 10, 90, 50, 50);
  gdImageCopyMergeGray (im2, im3, 80, 70, 10, 10, 90, 50, 50);

  gdImageDestroy (im3);

  inFile = fopen ("gdtest_merge.png", "rb");
  if (!inFile)
    {
      fprintf (stderr, "gdtest_merge.png does not exist!\n");
      exit (1);
    }
  im3 = gdImageCreateFromPng (inFile);
  fclose (inFile);

  printf ("[Merged Image has %d colours]\n", im2.colorsTotal);
  CompareImages ("Merged (gdtest.png, gdtest_merge.png)", im2, im3);

  gdImageDestroy (im2);
  gdImageDestroy (im3);

  outFile = fopen ("gdtest.jpg", "wb");
  if (!outFile)
    {
      fprintf (stderr, "Can't create file gdtest.jpg.\n");
      exit (1);
    }
  gdImageJpeg (im, outFile, -1);
  fclose (outFile);
  inFile = fopen ("gdtest.jpg", "rb");
  if (!inFile)
    {
      fprintf (stderr, "Can't open file gdtest.jpg.\n");
      exit (1);
    }
  im2 = gdImageCreateFromJpeg (inFile);
  fclose (inFile);
  if (!im2)
    {
      fprintf (stderr, "gdImageCreateFromJpeg failed.\n");
      exit (1);
    }
  gdImageDestroy (im2);
  printf ("Created gdtest.jpg successfully. Compare this image\n"
	  "to the input image manually. Some difference must be\n"
	  "expected as JPEG is a lossy file format.\n");

  /* Assume the color closest to black is the foreground
     color for the B&W wbmp image. */
  fprintf (stderr,
	   "NOTE: the WBMP output image will NOT match the original unless the original\n"
	   "is also black and white. This is OK!\n");
  foreground = gdImageColorClosest (im, 0, 0, 0);
  fprintf (stderr, "Foreground index is %d\n", foreground);
  if (foreground == -1)
    {
      fprintf (stderr, "Source image has no colors, skipping wbmp test.\n");
    }
  else
    {
      outFile = fopen ("gdtest.wbmp", "wb");
      if (!outFile)
	{
	  fprintf (stderr, "Can't create file gdtest.wbmp.\n");
	  exit (1);
	}
      gdImageWBMP (im, foreground, outFile);
      fclose (outFile);
      inFile = fopen ("gdtest.wbmp", "rb");
      if (!inFile)
	{
	  fprintf (stderr, "Can't open file gdtest.wbmp.\n");
	  exit (1);
	}
      im2 = gdImageCreateFromWBMP (inFile);
      fprintf (stderr, "WBMP has %d colors\n", gdImageColorsTotal (im2));
      fprintf (stderr, "WBMP colors are:\n");
      for (i = 0; (i < gdImageColorsTotal (im2)); i++)
	{
	  fprintf (stderr, "%02X%02X%02X\n",
		   gdImageRed (im2, i),
		   gdImageGreen (im2, i), gdImageBlue (im2, i));
	}
      fclose (inFile);
      if (!im2)
	{
	  fprintf (stderr, "gdImageCreateFromWBMP failed.\n");
	  exit (1);
	}
      CompareImages ("WBMP test (gdtest.png, gdtest.wbmp)", ref, im2);
      outFile = fopen ("gdtest_wbmp_to_png.png", "wb");
      if (!outFile)
	{
	  fprintf (stderr,
		   "Can't create file gdtest_wbmp_to_png.png.\n");
	  exit (1);
	}
      gdImagePng (im2, outFile);
      fclose (outFile);
      gdImageDestroy (im2);
    }
  gdImageDestroy (im);
  gdImageDestroy (ref);

  return 0;
}

void
CompareImages (char *msg, gdImagePtr im1, gdImagePtr im2)
{
  int cmpRes;

  cmpRes = gdImageCompare (im1, im2);

  if (cmpRes & GD_CMP_IMAGE)
    {
      printf ("%%%s: ERROR images differ: BAD\n", msg);
    }
  else if (cmpRes != 0)
    {
      printf ("%%%s: WARNING images differ: WARNING - Probably OK\n", msg);
    }
  else
    {
      printf ("%%%s: OK\n", msg);
      return;
    }

  if (cmpRes & (GD_CMP_SIZE_X + GD_CMP_SIZE_Y))
    {
      printf ("-%s: INFO image sizes differ\n", msg);
    }

  if (cmpRes & GD_CMP_NUM_COLORS)
    {
      printf ("-%s: INFO number of pallette entries differ %d Vs. %d\n", msg,
	      im1.colorsTotal, im2.colorsTotal);
    }

  if (cmpRes & GD_CMP_COLOR)
    {
      printf ("-%s: INFO actual colours of pixels differ\n", msg);
    }
}


extern(C) int
freadWrapper (void *context, char *buf, int len)
{
  int got = fread (buf, 1, len, cast(FILE *) context);
  return got;
}

extern(C) int
fwriteWrapper (void *context, char *buffer, int len)
{
  return fwrite (buffer, 1, len, cast(FILE *) context);
}
