module iso88591;
//
//	Name:             ISO/IEC 8859-1:1998 to Unicode
//	Unicode version:  3.0
//	Table version:    1.0
//	Table format:     Format A
//	Date:             1999 July 27
//	Authors:          Ken Whistler <kenw@sybase.com>
//
//	Copyright (c) 1991-1999 Unicode, Inc.  All Rights reserved.
//
//	This file is provided as-is by Unicode, Inc. (The Unicode Consortium).
//	No claims are made as to fitness for any particular purpose.  No
//	warranties of any kind are expressed or implied.  The recipient
//	agrees to determine applicability of information provided.  If this
//	file has been provided on optical media by Unicode, Inc., the sole
//	remedy for any claim will be exchange of defective media within 90
//	days of receipt.
//
//	Unicode, Inc. hereby grants the right to freely use the information
//	supplied in this file in the creation of products supporting the
//	Unicode Standard, and to make copies of this file in any form for
//	internal or external distribution as long as this notice remains
//	attached.
//
//	General notes:
//
//	This table contains the data the Unicode Consortium has on how
//       ISO/IEC 8859-1:1998 characters map into Unicode.
//
//	Format:  Three tab-separated columns
//		 Column #1 is the ISO/IEC 8859-1 code (in hex as 0xXX)
//		 Column #2 is the Unicode (in hex as 0xXXXX)
//		 Column #3 the Unicode name (follows a comment sign, '#')
//
//	The entries are in ISO/IEC 8859-1 order.
//
//	Version history
//	1.0 version updates 0.1 version by adding mappings for all
//	control characters.
//
//	Updated versions of this file may be found in:
//		<ftp://ftp.unicode.org/Public/MAPPINGS/>
//
//	Any comments or problems, contact <errata@unicode.org>
//	Please note that <errata@unicode.org> is an archival address;
//	notices will be checked, but do not expect an immediate response.
//
wchar[256] mapping =
[
/* 0x00: */ '\u0000', // NULL
/* 0x01: */ '\u0001', // START OF HEADING
/* 0x02: */ '\u0002', // START OF TEXT
/* 0x03: */ '\u0003', // END OF TEXT
/* 0x04: */ '\u0004', // END OF TRANSMISSION
/* 0x05: */ '\u0005', // ENQUIRY
/* 0x06: */ '\u0006', // ACKNOWLEDGE
/* 0x07: */ '\u0007', // BELL
/* 0x08: */ '\u0008', // BACKSPACE
/* 0x09: */ '\u0009', // HORIZONTAL TABULATION
/* 0x0A: */ '\u000A', // LINE FEED
/* 0x0B: */ '\u000B', // VERTICAL TABULATION
/* 0x0C: */ '\u000C', // FORM FEED
/* 0x0D: */ '\u000D', // CARRIAGE RETURN
/* 0x0E: */ '\u000E', // SHIFT OUT
/* 0x0F: */ '\u000F', // SHIFT IN
/* 0x10: */ '\u0010', // DATA LINK ESCAPE
/* 0x11: */ '\u0011', // DEVICE CONTROL ONE
/* 0x12: */ '\u0012', // DEVICE CONTROL TWO
/* 0x13: */ '\u0013', // DEVICE CONTROL THREE
/* 0x14: */ '\u0014', // DEVICE CONTROL FOUR
/* 0x15: */ '\u0015', // NEGATIVE ACKNOWLEDGE
/* 0x16: */ '\u0016', // SYNCHRONOUS IDLE
/* 0x17: */ '\u0017', // END OF TRANSMISSION BLOCK
/* 0x18: */ '\u0018', // CANCEL
/* 0x19: */ '\u0019', // END OF MEDIUM
/* 0x1A: */ '\u001A', // SUBSTITUTE
/* 0x1B: */ '\u001B', // ESCAPE
/* 0x1C: */ '\u001C', // FILE SEPARATOR
/* 0x1D: */ '\u001D', // GROUP SEPARATOR
/* 0x1E: */ '\u001E', // RECORD SEPARATOR
/* 0x1F: */ '\u001F', // UNIT SEPARATOR
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
/* 0x7F: */ '\u007F', // DELETE
/* 0x80: */ '\u0080', // <control>
/* 0x81: */ '\u0081', // <control>
/* 0x82: */ '\u0082', // <control>
/* 0x83: */ '\u0083', // <control>
/* 0x84: */ '\u0084', // <control>
/* 0x85: */ '\u0085', // <control>
/* 0x86: */ '\u0086', // <control>
/* 0x87: */ '\u0087', // <control>
/* 0x88: */ '\u0088', // <control>
/* 0x89: */ '\u0089', // <control>
/* 0x8A: */ '\u008A', // <control>
/* 0x8B: */ '\u008B', // <control>
/* 0x8C: */ '\u008C', // <control>
/* 0x8D: */ '\u008D', // <control>
/* 0x8E: */ '\u008E', // <control>
/* 0x8F: */ '\u008F', // <control>
/* 0x90: */ '\u0090', // <control>
/* 0x91: */ '\u0091', // <control>
/* 0x92: */ '\u0092', // <control>
/* 0x93: */ '\u0093', // <control>
/* 0x94: */ '\u0094', // <control>
/* 0x95: */ '\u0095', // <control>
/* 0x96: */ '\u0096', // <control>
/* 0x97: */ '\u0097', // <control>
/* 0x98: */ '\u0098', // <control>
/* 0x99: */ '\u0099', // <control>
/* 0x9A: */ '\u009A', // <control>
/* 0x9B: */ '\u009B', // <control>
/* 0x9C: */ '\u009C', // <control>
/* 0x9D: */ '\u009D', // <control>
/* 0x9E: */ '\u009E', // <control>
/* 0x9F: */ '\u009F', // <control>
/* 0xA0: */ '\u00A0', // NO-BREAK SPACE
/* 0xA1: */ '\u00A1', // INVERTED EXCLAMATION MARK
/* 0xA2: */ '\u00A2', // CENT SIGN
/* 0xA3: */ '\u00A3', // POUND SIGN
/* 0xA4: */ '\u00A4', // CURRENCY SIGN
/* 0xA5: */ '\u00A5', // YEN SIGN
/* 0xA6: */ '\u00A6', // BROKEN BAR
/* 0xA7: */ '\u00A7', // SECTION SIGN
/* 0xA8: */ '\u00A8', // DIAERESIS
/* 0xA9: */ '\u00A9', // COPYRIGHT SIGN
/* 0xAA: */ '\u00AA', // FEMININE ORDINAL INDICATOR
/* 0xAB: */ '\u00AB', // LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
/* 0xAC: */ '\u00AC', // NOT SIGN
/* 0xAD: */ '\u00AD', // SOFT HYPHEN
/* 0xAE: */ '\u00AE', // REGISTERED SIGN
/* 0xAF: */ '\u00AF', // MACRON
/* 0xB0: */ '\u00B0', // DEGREE SIGN
/* 0xB1: */ '\u00B1', // PLUS-MINUS SIGN
/* 0xB2: */ '\u00B2', // SUPERSCRIPT TWO
/* 0xB3: */ '\u00B3', // SUPERSCRIPT THREE
/* 0xB4: */ '\u00B4', // ACUTE ACCENT
/* 0xB5: */ '\u00B5', // MICRO SIGN
/* 0xB6: */ '\u00B6', // PILCROW SIGN
/* 0xB7: */ '\u00B7', // MIDDLE DOT
/* 0xB8: */ '\u00B8', // CEDILLA
/* 0xB9: */ '\u00B9', // SUPERSCRIPT ONE
/* 0xBA: */ '\u00BA', // MASCULINE ORDINAL INDICATOR
/* 0xBB: */ '\u00BB', // RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
/* 0xBC: */ '\u00BC', // VULGAR FRACTION ONE QUARTER
/* 0xBD: */ '\u00BD', // VULGAR FRACTION ONE HALF
/* 0xBE: */ '\u00BE', // VULGAR FRACTION THREE QUARTERS
/* 0xBF: */ '\u00BF', // INVERTED QUESTION MARK
/* 0xC0: */ '\u00C0', // LATIN CAPITAL LETTER A WITH GRAVE
/* 0xC1: */ '\u00C1', // LATIN CAPITAL LETTER A WITH ACUTE
/* 0xC2: */ '\u00C2', // LATIN CAPITAL LETTER A WITH CIRCUMFLEX
/* 0xC3: */ '\u00C3', // LATIN CAPITAL LETTER A WITH TILDE
/* 0xC4: */ '\u00C4', // LATIN CAPITAL LETTER A WITH DIAERESIS
/* 0xC5: */ '\u00C5', // LATIN CAPITAL LETTER A WITH RING ABOVE
/* 0xC6: */ '\u00C6', // LATIN CAPITAL LETTER AE
/* 0xC7: */ '\u00C7', // LATIN CAPITAL LETTER C WITH CEDILLA
/* 0xC8: */ '\u00C8', // LATIN CAPITAL LETTER E WITH GRAVE
/* 0xC9: */ '\u00C9', // LATIN CAPITAL LETTER E WITH ACUTE
/* 0xCA: */ '\u00CA', // LATIN CAPITAL LETTER E WITH CIRCUMFLEX
/* 0xCB: */ '\u00CB', // LATIN CAPITAL LETTER E WITH DIAERESIS
/* 0xCC: */ '\u00CC', // LATIN CAPITAL LETTER I WITH GRAVE
/* 0xCD: */ '\u00CD', // LATIN CAPITAL LETTER I WITH ACUTE
/* 0xCE: */ '\u00CE', // LATIN CAPITAL LETTER I WITH CIRCUMFLEX
/* 0xCF: */ '\u00CF', // LATIN CAPITAL LETTER I WITH DIAERESIS
/* 0xD0: */ '\u00D0', // LATIN CAPITAL LETTER ETH (Icelandic)
/* 0xD1: */ '\u00D1', // LATIN CAPITAL LETTER N WITH TILDE
/* 0xD2: */ '\u00D2', // LATIN CAPITAL LETTER O WITH GRAVE
/* 0xD3: */ '\u00D3', // LATIN CAPITAL LETTER O WITH ACUTE
/* 0xD4: */ '\u00D4', // LATIN CAPITAL LETTER O WITH CIRCUMFLEX
/* 0xD5: */ '\u00D5', // LATIN CAPITAL LETTER O WITH TILDE
/* 0xD6: */ '\u00D6', // LATIN CAPITAL LETTER O WITH DIAERESIS
/* 0xD7: */ '\u00D7', // MULTIPLICATION SIGN
/* 0xD8: */ '\u00D8', // LATIN CAPITAL LETTER O WITH STROKE
/* 0xD9: */ '\u00D9', // LATIN CAPITAL LETTER U WITH GRAVE
/* 0xDA: */ '\u00DA', // LATIN CAPITAL LETTER U WITH ACUTE
/* 0xDB: */ '\u00DB', // LATIN CAPITAL LETTER U WITH CIRCUMFLEX
/* 0xDC: */ '\u00DC', // LATIN CAPITAL LETTER U WITH DIAERESIS
/* 0xDD: */ '\u00DD', // LATIN CAPITAL LETTER Y WITH ACUTE
/* 0xDE: */ '\u00DE', // LATIN CAPITAL LETTER THORN (Icelandic)
/* 0xDF: */ '\u00DF', // LATIN SMALL LETTER SHARP S (German)
/* 0xE0: */ '\u00E0', // LATIN SMALL LETTER A WITH GRAVE
/* 0xE1: */ '\u00E1', // LATIN SMALL LETTER A WITH ACUTE
/* 0xE2: */ '\u00E2', // LATIN SMALL LETTER A WITH CIRCUMFLEX
/* 0xE3: */ '\u00E3', // LATIN SMALL LETTER A WITH TILDE
/* 0xE4: */ '\u00E4', // LATIN SMALL LETTER A WITH DIAERESIS
/* 0xE5: */ '\u00E5', // LATIN SMALL LETTER A WITH RING ABOVE
/* 0xE6: */ '\u00E6', // LATIN SMALL LETTER AE
/* 0xE7: */ '\u00E7', // LATIN SMALL LETTER C WITH CEDILLA
/* 0xE8: */ '\u00E8', // LATIN SMALL LETTER E WITH GRAVE
/* 0xE9: */ '\u00E9', // LATIN SMALL LETTER E WITH ACUTE
/* 0xEA: */ '\u00EA', // LATIN SMALL LETTER E WITH CIRCUMFLEX
/* 0xEB: */ '\u00EB', // LATIN SMALL LETTER E WITH DIAERESIS
/* 0xEC: */ '\u00EC', // LATIN SMALL LETTER I WITH GRAVE
/* 0xED: */ '\u00ED', // LATIN SMALL LETTER I WITH ACUTE
/* 0xEE: */ '\u00EE', // LATIN SMALL LETTER I WITH CIRCUMFLEX
/* 0xEF: */ '\u00EF', // LATIN SMALL LETTER I WITH DIAERESIS
/* 0xF0: */ '\u00F0', // LATIN SMALL LETTER ETH (Icelandic)
/* 0xF1: */ '\u00F1', // LATIN SMALL LETTER N WITH TILDE
/* 0xF2: */ '\u00F2', // LATIN SMALL LETTER O WITH GRAVE
/* 0xF3: */ '\u00F3', // LATIN SMALL LETTER O WITH ACUTE
/* 0xF4: */ '\u00F4', // LATIN SMALL LETTER O WITH CIRCUMFLEX
/* 0xF5: */ '\u00F5', // LATIN SMALL LETTER O WITH TILDE
/* 0xF6: */ '\u00F6', // LATIN SMALL LETTER O WITH DIAERESIS
/* 0xF7: */ '\u00F7', // DIVISION SIGN
/* 0xF8: */ '\u00F8', // LATIN SMALL LETTER O WITH STROKE
/* 0xF9: */ '\u00F9', // LATIN SMALL LETTER U WITH GRAVE
/* 0xFA: */ '\u00FA', // LATIN SMALL LETTER U WITH ACUTE
/* 0xFB: */ '\u00FB', // LATIN SMALL LETTER U WITH CIRCUMFLEX
/* 0xFC: */ '\u00FC', // LATIN SMALL LETTER U WITH DIAERESIS
/* 0xFD: */ '\u00FD', // LATIN SMALL LETTER Y WITH ACUTE
/* 0xFE: */ '\u00FE', // LATIN SMALL LETTER THORN (Icelandic)
/* 0xFF: */ '\u00FF', // LATIN SMALL LETTER Y WITH DIAERESIS
];
