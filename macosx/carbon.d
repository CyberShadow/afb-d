
/**********************************************************************
    $Id: carbon.d,v 1.2 2005/01/18 09:53:22 afb Exp $

    D Module for linking to the Mac OS X Carbon API

    Written by Anders F Bjoerklund <afb@algonet.se>

    Compile with : LDFLAGS="-Wl,-framework,Carbon"
**********************************************************************/

module macosx.carbon;

version (darwin)
{

/* MacTypes.h */

alias  ubyte UInt8;
alias   byte SInt8;
alias ushort UInt16;
alias  short SInt16;
alias   uint UInt32;
alias    int SInt32;
alias  ulong UInt64;
alias   long SInt64;

alias   char UTF8Char;
alias  wchar UTF16Char;
alias  dchar UTF32Char;

// Pascal memory
alias byte* Ptr;
alias Ptr*  Handle;
alias int   Size;

// Pascal bool
alias ubyte Boolean;

alias SInt16 OSErr;
alias SInt32 OSStatus;

const OSStatus noErr = 0;

// Pascal strings, first byte is length
alias ubyte[256] Str255;
alias ubyte[64]  Str63;
alias ubyte*     StringPtr;

alias uint FourCharCode;
alias FourCharCode OSType;
alias FourCharCode ResType;

// QuickDraw

struct Point {
  short v;
  short h;
}
alias Point* PointPtr;

struct Rect {
  short top;
  short left;
  short bottom;
  short right;
}
alias Rect* RectPtr;

alias ubyte Style;
alias short StyleParameter;

// logs to stderr when debugging, otherwise Console
extern (C) void Debugger() ;
extern (C) void DebugStr(Str255 debuggerMsg) ;

/* CFBase.h */

typedef void * CFTypeRef;

struct __CFString { }
typedef __CFString* CFStringRef;
typedef __CFString* CFMutableStringRef;

extern (C) CFStringRef __CFStringMakeConstantString(char *cStr);
alias __CFStringMakeConstantString CFSTR; // only for string literals

//=====================================================================

typedef void* IBNibRef;

typedef void* CFBundleRef;

typedef void* WindowRef;

typedef void* MenuRef;

extern(C) :

/* IBCarbonRuntime.h */

extern OSStatus
CreateNibReference(
  CFStringRef inNibName,
  IBNibRef * outNibRef) ;

extern OSStatus
CreateNibReferenceWithCFBundle(
  CFBundleRef inBundle,
  CFStringRef inNibName,
  IBNibRef * outNibRef) ;

extern void
DisposeNibReference(IBNibRef inNibRef) ;

extern OSStatus
CreateWindowFromNib(
  IBNibRef inNibRef,
  CFStringRef inName,
  WindowRef * outWindow) ;

extern OSStatus
CreateMenuFromNib(
  IBNibRef inNibRef,
  CFStringRef inName,
  MenuRef * outMenuRef) ;

extern OSStatus
CreateMenuBarFromNib(
  IBNibRef inNibRef,
  CFStringRef inName,
  Handle * outMenuBar) ;

extern OSStatus
SetMenuBarFromNib(
  IBNibRef inNibRef,
  CFStringRef inName) ;

/* MacWindows.h */

extern void
ShowWindow(WindowRef window) ;

/* CarbonEvents.h */

extern void
RunApplicationEventLoop() ;

}
