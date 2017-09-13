
import std.stdio;

public import mapping;

private import iso88591;
private import macroman;
private import cp1252;
private import cp437;

int main(char[][] args)
{
	char[] test = "r\u00e4ksm\u00f6rg\u00e5s"; // UTF-8
//	static ubyte[] str = [ 0x72, 0xe4, 0x6b, 0x73, 0x6d, 0xf6, 0x72, 0x67, 0xe5, 0x73 ]; // Latin-1
//	static ubyte[] str = [ 0x72, 0x8a, 0x6b, 0x73, 0x6d, 0x9a, 0x72, 0x67, 0x8c, 0x73 ]; // MacRoman

version (Win32) {
	wchar[256] mapping = cp437.mapping;
}
else {
	wchar[256] mapping = iso88591.mapping;
}
	setup_reverse(mapping);

	if (args.length > 1)
		test = cast(char[]) decode_string(cast(ubyte[]) args[1], mapping);
//	char[] test = decode_string(str, mapping);

	writefln("UTF-8: %s",test);
	
	static ubyte[1] z = [ 0 ];
	printf( "%s\n", cast(char*) (encode_string(test, mapping) ~ z) );

	return 0;
}

