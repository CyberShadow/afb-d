module mapping;

/*
 * mapping, converts 8-bit charsets/encodings into Unicode
 *
 * Copyright (c) 2004 by Anders F Bjoerklund <afb@algonet.se>
 * All Rights Reserved
 *
 * This software is provided 'as-is', without any express
 * or implied warranty.  In no event will the authors be
 * held liable for any damages arising from the use of
 * this software.
 *
 * Permission is granted to anyone to use this software
 * for any purpose, including commercial applications,
 * and to alter it and redistribute it freely, subject to
 * the following restrictions:
 *
 * 1. The origin of this software must not be
 *    misrepresented; you must not claim that you
 *    wrote the original software. If you use this
 *    software in a product, an acknowledgment in
 *    the product documentation would be appreciated
 *    but is not required.
 *
 * 2. Altered source versions must be plainly marked
 *    as such, and must not be misrepresented as
 *    being the original software.
 *
 * 3. This notice may not be removed or altered from
 *    any source distribution.
 */

import std.utf;

/// converts a 8-bit charset encoding string into unicode
char[] decode_string(ubyte[] string, wchar[256] mapping)
{
	wchar[] result;
	foreach (ubyte c; string)
	{
		if (mapping[c] != 0xFFFF)
		  result ~= mapping[c];
	}
	return std.utf.toUTF8(result);
}


version(REVERSE) // build and use reverse lookup tables
{

ubyte[256]    reverse_low;

wchar[]		  reverse_high;
ubyte[]		  reverse_char;

void setup_reverse(wchar[256] mapping)
{
  for (int c = 0; c < 256; c++)
  {
     wchar m = mapping[c];
     if (m < 0x0100)
     {
       reverse_low[m] = c;
     }
     else
     {
       reverse_high ~= m;
       reverse_char ~= c;
     }
   }
   
   debug { printf("High/Exceptions: %d\n", reverse_high.length); }
}


/// converts a unicode string into 8-bit charset encoding
ubyte[] encode_string(char[] string)
{
	ubyte[] result;
	foreach (wchar c; string)
	{
		debug { printf("\\u%04x\t", c, c); }
		if ((c < 256 && reverse_low[c] != 0x00) || (c == 0x00))
		{
			debug { printf("  %02x %c [LO]\n", reverse_low[c], reverse_low[c]); }
			result ~= reverse_low[ c ];
		}
		else foreach (int i, wchar r; reverse_high)
		{
			if (c == r)
			{
				debug { printf("%04x %c [HI]\n", reverse_char[i], reverse_char[i]); }
				result ~= reverse_char[i];
			}
		}
	}
	return result;
}

}
else
{

void setup_reverse(wchar[256] mapping)
{
}

/// converts a unicode string into 8-bit charset encoding
ubyte[] encode_string(char[] string, wchar[256] mapping)
{
	ubyte[] result;
	foreach (wchar c; string)
	{
		foreach (int i, wchar m; mapping)
		{
			if (c == m)
			{
				result ~= cast(ubyte) i;
				break;
			}
		} 
	}
	return result;
}

} // version
