
module gd.gd_io;

extern (C)
{

/* import stdio; */

struct gdIOCtx
{
  int function (gdIOCtx *) getC;
  int function (gdIOCtx *, void *, int) getBuf;

  void function (gdIOCtx *, int) putC;
  int function (gdIOCtx *, void *, int) putBuf;

  /* seek must return 1 on SUCCESS, 0 on FAILURE. Unlike fseek! */
  int function (gdIOCtx *, int) seek;

  int function (gdIOCtx *) tell;

  void function (gdIOCtx *) gd_free;

}

alias gdIOCtx *gdIOCtxPtr;

void Putword (int w, gdIOCtx * ctx);
void Putchar (int c, gdIOCtx * ctx);

 void gdPutC (ubyte c, gdIOCtx * ctx);
 int gdPutBuf (void *, int, gdIOCtx *);
 void gdPutWord (int w, gdIOCtx * ctx);
 void gdPutInt (int w, gdIOCtx * ctx);

 int gdGetC (gdIOCtx * ctx);
 int gdGetBuf (void *, int, gdIOCtx *);
 int gdGetByte (int *result, gdIOCtx * ctx);
 int gdGetWord (int *result, gdIOCtx * ctx);
 int gdGetInt (int *result, gdIOCtx * ctx);

 int gdSeek (gdIOCtx * ctx, int);
 int gdTell (gdIOCtx * ctx);

}
