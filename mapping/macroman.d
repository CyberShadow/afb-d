module macroman;
//=======================================================================
//   File name:  ROMAN.TXT
//
//   Contents:   Map (external version) from Mac OS Roman
//               character set to Unicode 2.1 through Unicode 3.2
//
//   Copyright:  (c) 1994-2002 by Apple Computer, Inc., all rights
//               reserved.
//
//   Contact:    charsets@apple.com
//
//   Changes:
//
//      b4,c1 2002-Dec-19    Update URLs, notes. Matches internal
//                           utom<b5>.
//       b03  1999-Sep-22    Update contact e-mail address. Matches
//                           internal utom<b4>, ufrm<b3>, and Text
//                           Encoding Converter version 1.5.
//       b02  1998-Aug-18    Encoding changed for Mac OS 8.5; change
//                           mapping of 0xDB from CURRENCY SIGN to
//                           EURO SIGN. Matches internal utom<b3>,
//                           ufrm<b3>.
//       n08  1998-Feb-05    Minor update to header comments
//       n06  1997-Dec-14    Add warning about future changes to 0xDB
//                           from CURRENCY SIGN to EURO SIGN. Clarify
//                           some header information
//       n04  1997-Dec-01    Update to match internal utom<n3>, ufrm<n22>:
//                           Change standard mapping for 0xBD from U+2126
//                           to its canonical decomposition, U+03A9.
//       n03  1995-Apr-15    First version (after fixing some typos).
//                           Matches internal ufrm<n9>.
//
// Standard header:
// ----------------
//
//   Apple, the Apple logo, and Macintosh are trademarks of Apple
//   Computer, Inc., registered in the United States and other countries.
//   Unicode is a trademark of Unicode Inc. For the sake of brevity,
//   throughout this document, "Macintosh" can be used to refer to
//   Macintosh computers and "Unicode" can be used to refer to the
//   Unicode standard.
//
//   Apple makes no warranty or representation, either express or
//   implied, with respect to these tables, their quality, accuracy, or
//   fitness for a particular purpose. In no event will Apple be liable
//   for direct, indirect, special, incidental, or consequential damages 
//   resulting from any defect or inaccuracy in this document or the
//   accompanying tables.
//
//   These mapping tables and character lists are subject to change.
//   The latest tables should be available from the following:
//
//   <http://www.unicode.org/Public/MAPPINGS/VENDORS/APPLE/>
//
//   For general information about Mac OS encodings and these mapping
//   tables, see the file "README.TXT".
//
// Format:
// -------
//
//   Three tab-separated columns;
//   '#' begins a comment which continues to the end of the line.
//     Column #1 is the Mac OS Roman code (in hex as 0xNN)
//     Column #2 is the corresponding Unicode (in hex as 0xNNNN)
//     Column #3 is a comment containing the Unicode name
//
//   The entries are in Mac OS Roman code order.
//
//   One of these mappings requires the use of a corporate character.
//   See the file "CORPCHAR.TXT" and notes below.
//
//   Control character mappings are not shown in this table, following
//   the conventions of the standard UTC mapping tables. However, the
//   Mac OS Roman character set uses the standard control characters at
//   0x00-0x1F and 0x7F.
//
// Notes on Mac OS Roman:
// ----------------------
//
//   This character set is used for at least the following Mac OS
//   localizations: U.S., British, Canadian French, French, Swiss
//   French, German, Swiss German, Italian, Swiss Italian, Dutch,
//   Swedish, Norwegian, Danish, Finnish, Spanish, Catalan,
//   Portuguese, Brazilian, and the default International system.
//
//   Variants of Mac OS Roman are used for Croatian, Icelandic,
//   Turkish, Romanian, and other encodings. Separate mapping tables
//   are available for these encodings.
//
//   Before Mac OS 8.5, code point 0xDB was CURRENCY SIGN, and was
//   mapped to U+00A4. In Mac OS 8.5 and later versions, code point
//   0xDB is changed to EURO SIGN and maps to U+20AC; the standard
//   Apple fonts are updated for Mac OS 8.5 to reflect this. There is
//   a "currency sign" variant of the Mac OS Roman encoding that still
//   maps 0xDB to U+00A4; this can be used for older fonts.
//
//   Before Mac OS 8.5, the ROM bitmap versions of the fonts Chicago,
//   New York, Geneva, and Monaco did not implement the full Mac OS
//   Roman character set; they only supported character codes up to
//   0xD8. The TrueType versions of these fonts have always implemented
//   the full character set, as with the bitmap and TrueType versions
//   of the other standard Roman fonts.
//
//   In all Mac OS encodings, fonts such as Chicago which are used
//   as "system" fonts (for menus, dialogs, etc.) have four glyphs
//   at code points 0x11-0x14 for transient use by the Menu Manager.
//   These glyphs are not intended as characters for use in normal
//   text, and the associated code points are not generally
//   interpreted as associated with these glyphs; they are usually
//   interpreted (if at all) as the control codes DC1-DC4.
//
// Unicode mapping issues and notes:
// ---------------------------------
//
//   The following corporate zone Unicode character is used in this
//   mapping:
//
//     0xF8FF  Apple logo
//
//   NOTE: The graphic image associated with the Apple logo character
//   is not authorized for use without permission of Apple, and
//   unauthorized use might constitute trademark infringement.
//
// Details of mapping changes in each version:
// -------------------------------------------
//
//   Changes from version n08 to version b02:
//
//   - Encoding changed for Mac OS 8.5; change mapping of 0xDB from
//   CURRENCY SIGN (U+00A4) to EURO SIGN (U+20AC).
//
//   Changes from version n03 to version n04:
//
//   - Change mapping of 0xBD from U+2126 to its canonical
//     decomposition, U+03A9.
//
//#################

//
wchar[256] mapping =
[
/* 0x00: */ '\u0000',
/* 0x01: */ '\u0001',
/* 0x02: */ '\u0002',
/* 0x03: */ '\u0003',
/* 0x04: */ '\u0004',
/* 0x05: */ '\u0005',
/* 0x06: */ '\u0006',
/* 0x07: */ '\u0007',
/* 0x08: */ '\u0008',
/* 0x09: */ '\u0009',
/* 0x0A: */ '\u000A',
/* 0x0B: */ '\u000B',
/* 0x0C: */ '\u000C',
/* 0x0D: */ '\u000D',
/* 0x0E: */ '\u000E',
/* 0x0F: */ '\u000F',
/* 0x10: */ '\u0010',
/* 0x11: */ '\u0011',
/* 0x12: */ '\u0012',
/* 0x13: */ '\u0013',
/* 0x14: */ '\u0014',
/* 0x15: */ '\u0015',
/* 0x16: */ '\u0016',
/* 0x17: */ '\u0017',
/* 0x18: */ '\u0018',
/* 0x19: */ '\u0019',
/* 0x1A: */ '\u001A',
/* 0x1B: */ '\u001B',
/* 0x1C: */ '\u001C',
/* 0x1D: */ '\u001D',
/* 0x1E: */ '\u001E',
/* 0x1F: */ '\u001F',
/* 0x20: */ '\u0020', // SPACE
/* 0x21: */ '\u0021', // EXCLAMATION MARK
/* 0x22: */ '\u0022', // QUOTATION MARK
/* 0x23: */ '\u0023', // NUMBER SIGN
/* 0x24: */ '\u0024', // DOLLAR SIGN
/* 0x25: */ '\u0025', // PERCENT SIGN
/* 0x26: */ '\u0026', // AMPERSAND
/* 0x27: */ '\u0027', // APOSTROPHE
/* 0x28: */ '\u0028', // LEFT PARENTHESIS
/* 0x29: */ '\u0029', // RIGHT PARENTHESIS
/* 0x2A: */ '\u002A', // ASTERISK
/* 0x2B: */ '\u002B', // PLUS SIGN
/* 0x2C: */ '\u002C', // COMMA
/* 0x2D: */ '\u002D', // HYPHEN-MINUS
/* 0x2E: */ '\u002E', // FULL STOP
/* 0x2F: */ '\u002F', // SOLIDUS
/* 0x30: */ '\u0030', // DIGIT ZERO
/* 0x31: */ '\u0031', // DIGIT ONE
/* 0x32: */ '\u0032', // DIGIT TWO
/* 0x33: */ '\u0033', // DIGIT THREE
/* 0x34: */ '\u0034', // DIGIT FOUR
/* 0x35: */ '\u0035', // DIGIT FIVE
/* 0x36: */ '\u0036', // DIGIT SIX
/* 0x37: */ '\u0037', // DIGIT SEVEN
/* 0x38: */ '\u0038', // DIGIT EIGHT
/* 0x39: */ '\u0039', // DIGIT NINE
/* 0x3A: */ '\u003A', // COLON
/* 0x3B: */ '\u003B', // SEMICOLON
/* 0x3C: */ '\u003C', // LESS-THAN SIGN
/* 0x3D: */ '\u003D', // EQUALS SIGN
/* 0x3E: */ '\u003E', // GREATER-THAN SIGN
/* 0x3F: */ '\u003F', // QUESTION MARK
/* 0x40: */ '\u0040', // COMMERCIAL AT
/* 0x41: */ '\u0041', // LATIN CAPITAL LETTER A
/* 0x42: */ '\u0042', // LATIN CAPITAL LETTER B
/* 0x43: */ '\u0043', // LATIN CAPITAL LETTER C
/* 0x44: */ '\u0044', // LATIN CAPITAL LETTER D
/* 0x45: */ '\u0045', // LATIN CAPITAL LETTER E
/* 0x46: */ '\u0046', // LATIN CAPITAL LETTER F
/* 0x47: */ '\u0047', // LATIN CAPITAL LETTER G
/* 0x48: */ '\u0048', // LATIN CAPITAL LETTER H
/* 0x49: */ '\u0049', // LATIN CAPITAL LETTER I
/* 0x4A: */ '\u004A', // LATIN CAPITAL LETTER J
/* 0x4B: */ '\u004B', // LATIN CAPITAL LETTER K
/* 0x4C: */ '\u004C', // LATIN CAPITAL LETTER L
/* 0x4D: */ '\u004D', // LATIN CAPITAL LETTER M
/* 0x4E: */ '\u004E', // LATIN CAPITAL LETTER N
/* 0x4F: */ '\u004F', // LATIN CAPITAL LETTER O
/* 0x50: */ '\u0050', // LATIN CAPITAL LETTER P
/* 0x51: */ '\u0051', // LATIN CAPITAL LETTER Q
/* 0x52: */ '\u0052', // LATIN CAPITAL LETTER R
/* 0x53: */ '\u0053', // LATIN CAPITAL LETTER S
/* 0x54: */ '\u0054', // LATIN CAPITAL LETTER T
/* 0x55: */ '\u0055', // LATIN CAPITAL LETTER U
/* 0x56: */ '\u0056', // LATIN CAPITAL LETTER V
/* 0x57: */ '\u0057', // LATIN CAPITAL LETTER W
/* 0x58: */ '\u0058', // LATIN CAPITAL LETTER X
/* 0x59: */ '\u0059', // LATIN CAPITAL LETTER Y
/* 0x5A: */ '\u005A', // LATIN CAPITAL LETTER Z
/* 0x5B: */ '\u005B', // LEFT SQUARE BRACKET
/* 0x5C: */ '\u005C', // REVERSE SOLIDUS
/* 0x5D: */ '\u005D', // RIGHT SQUARE BRACKET
/* 0x5E: */ '\u005E', // CIRCUMFLEX ACCENT
/* 0x5F: */ '\u005F', // LOW LINE
/* 0x60: */ '\u0060', // GRAVE ACCENT
/* 0x61: */ '\u0061', // LATIN SMALL LETTER A
/* 0x62: */ '\u0062', // LATIN SMALL LETTER B
/* 0x63: */ '\u0063', // LATIN SMALL LETTER C
/* 0x64: */ '\u0064', // LATIN SMALL LETTER D
/* 0x65: */ '\u0065', // LATIN SMALL LETTER E
/* 0x66: */ '\u0066', // LATIN SMALL LETTER F
/* 0x67: */ '\u0067', // LATIN SMALL LETTER G
/* 0x68: */ '\u0068', // LATIN SMALL LETTER H
/* 0x69: */ '\u0069', // LATIN SMALL LETTER I
/* 0x6A: */ '\u006A', // LATIN SMALL LETTER J
/* 0x6B: */ '\u006B', // LATIN SMALL LETTER K
/* 0x6C: */ '\u006C', // LATIN SMALL LETTER L
/* 0x6D: */ '\u006D', // LATIN SMALL LETTER M
/* 0x6E: */ '\u006E', // LATIN SMALL LETTER N
/* 0x6F: */ '\u006F', // LATIN SMALL LETTER O
/* 0x70: */ '\u0070', // LATIN SMALL LETTER P
/* 0x71: */ '\u0071', // LATIN SMALL LETTER Q
/* 0x72: */ '\u0072', // LATIN SMALL LETTER R
/* 0x73: */ '\u0073', // LATIN SMALL LETTER S
/* 0x74: */ '\u0074', // LATIN SMALL LETTER T
/* 0x75: */ '\u0075', // LATIN SMALL LETTER U
/* 0x76: */ '\u0076', // LATIN SMALL LETTER V
/* 0x77: */ '\u0077', // LATIN SMALL LETTER W
/* 0x78: */ '\u0078', // LATIN SMALL LETTER X
/* 0x79: */ '\u0079', // LATIN SMALL LETTER Y
/* 0x7A: */ '\u007A', // LATIN SMALL LETTER Z
/* 0x7B: */ '\u007B', // LEFT CURLY BRACKET
/* 0x7C: */ '\u007C', // VERTICAL LINE
/* 0x7D: */ '\u007D', // RIGHT CURLY BRACKET
/* 0x7E: */ '\u007E', // TILDE
/* 0x7F: */ '\u007F',
/* 0x80: */ '\u00C4', // LATIN CAPITAL LETTER A WITH DIAERESIS
/* 0x81: */ '\u00C5', // LATIN CAPITAL LETTER A WITH RING ABOVE
/* 0x82: */ '\u00C7', // LATIN CAPITAL LETTER C WITH CEDILLA
/* 0x83: */ '\u00C9', // LATIN CAPITAL LETTER E WITH ACUTE
/* 0x84: */ '\u00D1', // LATIN CAPITAL LETTER N WITH TILDE
/* 0x85: */ '\u00D6', // LATIN CAPITAL LETTER O WITH DIAERESIS
/* 0x86: */ '\u00DC', // LATIN CAPITAL LETTER U WITH DIAERESIS
/* 0x87: */ '\u00E1', // LATIN SMALL LETTER A WITH ACUTE
/* 0x88: */ '\u00E0', // LATIN SMALL LETTER A WITH GRAVE
/* 0x89: */ '\u00E2', // LATIN SMALL LETTER A WITH CIRCUMFLEX
/* 0x8A: */ '\u00E4', // LATIN SMALL LETTER A WITH DIAERESIS
/* 0x8B: */ '\u00E3', // LATIN SMALL LETTER A WITH TILDE
/* 0x8C: */ '\u00E5', // LATIN SMALL LETTER A WITH RING ABOVE
/* 0x8D: */ '\u00E7', // LATIN SMALL LETTER C WITH CEDILLA
/* 0x8E: */ '\u00E9', // LATIN SMALL LETTER E WITH ACUTE
/* 0x8F: */ '\u00E8', // LATIN SMALL LETTER E WITH GRAVE
/* 0x90: */ '\u00EA', // LATIN SMALL LETTER E WITH CIRCUMFLEX
/* 0x91: */ '\u00EB', // LATIN SMALL LETTER E WITH DIAERESIS
/* 0x92: */ '\u00ED', // LATIN SMALL LETTER I WITH ACUTE
/* 0x93: */ '\u00EC', // LATIN SMALL LETTER I WITH GRAVE
/* 0x94: */ '\u00EE', // LATIN SMALL LETTER I WITH CIRCUMFLEX
/* 0x95: */ '\u00EF', // LATIN SMALL LETTER I WITH DIAERESIS
/* 0x96: */ '\u00F1', // LATIN SMALL LETTER N WITH TILDE
/* 0x97: */ '\u00F3', // LATIN SMALL LETTER O WITH ACUTE
/* 0x98: */ '\u00F2', // LATIN SMALL LETTER O WITH GRAVE
/* 0x99: */ '\u00F4', // LATIN SMALL LETTER O WITH CIRCUMFLEX
/* 0x9A: */ '\u00F6', // LATIN SMALL LETTER O WITH DIAERESIS
/* 0x9B: */ '\u00F5', // LATIN SMALL LETTER O WITH TILDE
/* 0x9C: */ '\u00FA', // LATIN SMALL LETTER U WITH ACUTE
/* 0x9D: */ '\u00F9', // LATIN SMALL LETTER U WITH GRAVE
/* 0x9E: */ '\u00FB', // LATIN SMALL LETTER U WITH CIRCUMFLEX
/* 0x9F: */ '\u00FC', // LATIN SMALL LETTER U WITH DIAERESIS
/* 0xA0: */ '\u2020', // DAGGER
/* 0xA1: */ '\u00B0', // DEGREE SIGN
/* 0xA2: */ '\u00A2', // CENT SIGN
/* 0xA3: */ '\u00A3', // POUND SIGN
/* 0xA4: */ '\u00A7', // SECTION SIGN
/* 0xA5: */ '\u2022', // BULLET
/* 0xA6: */ '\u00B6', // PILCROW SIGN
/* 0xA7: */ '\u00DF', // LATIN SMALL LETTER SHARP S
/* 0xA8: */ '\u00AE', // REGISTERED SIGN
/* 0xA9: */ '\u00A9', // COPYRIGHT SIGN
/* 0xAA: */ '\u2122', // TRADE MARK SIGN
/* 0xAB: */ '\u00B4', // ACUTE ACCENT
/* 0xAC: */ '\u00A8', // DIAERESIS
/* 0xAD: */ '\u2260', // NOT EQUAL TO
/* 0xAE: */ '\u00C6', // LATIN CAPITAL LETTER AE
/* 0xAF: */ '\u00D8', // LATIN CAPITAL LETTER O WITH STROKE
/* 0xB0: */ '\u221E', // INFINITY
/* 0xB1: */ '\u00B1', // PLUS-MINUS SIGN
/* 0xB2: */ '\u2264', // LESS-THAN OR EQUAL TO
/* 0xB3: */ '\u2265', // GREATER-THAN OR EQUAL TO
/* 0xB4: */ '\u00A5', // YEN SIGN
/* 0xB5: */ '\u00B5', // MICRO SIGN
/* 0xB6: */ '\u2202', // PARTIAL DIFFERENTIAL
/* 0xB7: */ '\u2211', // N-ARY SUMMATION
/* 0xB8: */ '\u220F', // N-ARY PRODUCT
/* 0xB9: */ '\u03C0', // GREEK SMALL LETTER PI
/* 0xBA: */ '\u222B', // INTEGRAL
/* 0xBB: */ '\u00AA', // FEMININE ORDINAL INDICATOR
/* 0xBC: */ '\u00BA', // MASCULINE ORDINAL INDICATOR
/* 0xBD: */ '\u03A9', // GREEK CAPITAL LETTER OMEGA
/* 0xBE: */ '\u00E6', // LATIN SMALL LETTER AE
/* 0xBF: */ '\u00F8', // LATIN SMALL LETTER O WITH STROKE
/* 0xC0: */ '\u00BF', // INVERTED QUESTION MARK
/* 0xC1: */ '\u00A1', // INVERTED EXCLAMATION MARK
/* 0xC2: */ '\u00AC', // NOT SIGN
/* 0xC3: */ '\u221A', // SQUARE ROOT
/* 0xC4: */ '\u0192', // LATIN SMALL LETTER F WITH HOOK
/* 0xC5: */ '\u2248', // ALMOST EQUAL TO
/* 0xC6: */ '\u2206', // INCREMENT
/* 0xC7: */ '\u00AB', // LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
/* 0xC8: */ '\u00BB', // RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
/* 0xC9: */ '\u2026', // HORIZONTAL ELLIPSIS
/* 0xCA: */ '\u00A0', // NO-BREAK SPACE
/* 0xCB: */ '\u00C0', // LATIN CAPITAL LETTER A WITH GRAVE
/* 0xCC: */ '\u00C3', // LATIN CAPITAL LETTER A WITH TILDE
/* 0xCD: */ '\u00D5', // LATIN CAPITAL LETTER O WITH TILDE
/* 0xCE: */ '\u0152', // LATIN CAPITAL LIGATURE OE
/* 0xCF: */ '\u0153', // LATIN SMALL LIGATURE OE
/* 0xD0: */ '\u2013', // EN DASH
/* 0xD1: */ '\u2014', // EM DASH
/* 0xD2: */ '\u201C', // LEFT DOUBLE QUOTATION MARK
/* 0xD3: */ '\u201D', // RIGHT DOUBLE QUOTATION MARK
/* 0xD4: */ '\u2018', // LEFT SINGLE QUOTATION MARK
/* 0xD5: */ '\u2019', // RIGHT SINGLE QUOTATION MARK
/* 0xD6: */ '\u00F7', // DIVISION SIGN
/* 0xD7: */ '\u25CA', // LOZENGE
/* 0xD8: */ '\u00FF', // LATIN SMALL LETTER Y WITH DIAERESIS
/* 0xD9: */ '\u0178', // LATIN CAPITAL LETTER Y WITH DIAERESIS
/* 0xDA: */ '\u2044', // FRACTION SLASH
/* 0xDB: */ '\u20AC', // EURO SIGN
/* 0xDC: */ '\u2039', // SINGLE LEFT-POINTING ANGLE QUOTATION MARK
/* 0xDD: */ '\u203A', // SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
/* 0xDE: */ '\uFB01', // LATIN SMALL LIGATURE FI
/* 0xDF: */ '\uFB02', // LATIN SMALL LIGATURE FL
/* 0xE0: */ '\u2021', // DOUBLE DAGGER
/* 0xE1: */ '\u00B7', // MIDDLE DOT
/* 0xE2: */ '\u201A', // SINGLE LOW-9 QUOTATION MARK
/* 0xE3: */ '\u201E', // DOUBLE LOW-9 QUOTATION MARK
/* 0xE4: */ '\u2030', // PER MILLE SIGN
/* 0xE5: */ '\u00C2', // LATIN CAPITAL LETTER A WITH CIRCUMFLEX
/* 0xE6: */ '\u00CA', // LATIN CAPITAL LETTER E WITH CIRCUMFLEX
/* 0xE7: */ '\u00C1', // LATIN CAPITAL LETTER A WITH ACUTE
/* 0xE8: */ '\u00CB', // LATIN CAPITAL LETTER E WITH DIAERESIS
/* 0xE9: */ '\u00C8', // LATIN CAPITAL LETTER E WITH GRAVE
/* 0xEA: */ '\u00CD', // LATIN CAPITAL LETTER I WITH ACUTE
/* 0xEB: */ '\u00CE', // LATIN CAPITAL LETTER I WITH CIRCUMFLEX
/* 0xEC: */ '\u00CF', // LATIN CAPITAL LETTER I WITH DIAERESIS
/* 0xED: */ '\u00CC', // LATIN CAPITAL LETTER I WITH GRAVE
/* 0xEE: */ '\u00D3', // LATIN CAPITAL LETTER O WITH ACUTE
/* 0xEF: */ '\u00D4', // LATIN CAPITAL LETTER O WITH CIRCUMFLEX
/* 0xF0: */ '\uF8FF', // Apple logo
/* 0xF1: */ '\u00D2', // LATIN CAPITAL LETTER O WITH GRAVE
/* 0xF2: */ '\u00DA', // LATIN CAPITAL LETTER U WITH ACUTE
/* 0xF3: */ '\u00DB', // LATIN CAPITAL LETTER U WITH CIRCUMFLEX
/* 0xF4: */ '\u00D9', // LATIN CAPITAL LETTER U WITH GRAVE
/* 0xF5: */ '\u0131', // LATIN SMALL LETTER DOTLESS I
/* 0xF6: */ '\u02C6', // MODIFIER LETTER CIRCUMFLEX ACCENT
/* 0xF7: */ '\u02DC', // SMALL TILDE
/* 0xF8: */ '\u00AF', // MACRON
/* 0xF9: */ '\u02D8', // BREVE
/* 0xFA: */ '\u02D9', // DOT ABOVE
/* 0xFB: */ '\u02DA', // RING ABOVE
/* 0xFC: */ '\u00B8', // CEDILLA
/* 0xFD: */ '\u02DD', // DOUBLE ACUTE ACCENT
/* 0xFE: */ '\u02DB', // OGONEK
/* 0xFF: */ '\u02C7', // CARON
];
