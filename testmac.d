//
//  main.d
//  HelloWorld
//

import std.stdio;

import macosx.carbon;

int main(char[][] args)
{
    IBNibRef 		nibRef;
    WindowRef 		window;
    
    OSStatus		err;

    // Create a Nib reference passing the name of the nib file (without the .nib extension)
    // CreateNibReference only searches into the application bundle.
    err = CreateNibReference(CFSTR("main"), &nibRef);
    if (err != noErr) goto CantGetNibRef;
    
    // Once the nib reference is created, set the menu bar. "MainMenu" is the name of the menu bar
    // object. This name is set in InterfaceBuilder when the nib is created.
    err = SetMenuBarFromNib(nibRef, CFSTR("MenuBar"));
    if (err != noErr) goto CantSetMenuBar;
    
    // Then create a window. "MainWindow" is the name of the window object. This name is set in 
    // InterfaceBuilder when the nib is created.
    err = CreateWindowFromNib(nibRef, CFSTR("MainWindow"), &window);
    if (err != noErr) goto CantCreateWindow;

    // We don't need the nib reference anymore.
    DisposeNibReference(nibRef);
    
    // The window was created hidden so show it.
    ShowWindow( window );
    
    // Call the event loop
    RunApplicationEventLoop();

    writefln("Goodbye from D");

CantCreateWindow:
CantSetMenuBar:
CantGetNibRef:
	return err;
}

