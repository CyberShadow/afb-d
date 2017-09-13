
module gd.gd_io;

extern (C)
{

/* import stdio; */

struct gdIOCtx
{
  int (*getC) (gdIOCtx *);
  int (*getBuf) (gdIOCtx *, void *, int);

  void (*putC) (gdIOCtx *, int);
  int (*putBuf) (gdIOCtx *, void *, int);

  /* seek must return 1 on SUCCESS, 0 on FAILURE. Unlike fseek! */
  int (*seek) (gdIOCtx *, int);

  int (*tell) (gdIOCtx *);

  void (*gd_free) (gdIOCtx *);

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
