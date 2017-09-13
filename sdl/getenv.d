extern(C):

/* Not all environments have a working getenv()/putenv() */

version(Windows) {

/* Put a variable of the form "name=value" into the environment */
int SDL_putenv(char *variable);
alias SDL_putenv putenv;

/* Retrieve a variable named "name" from the environment */
char *SDL_getenv(char *name);
alias SDL_getenv getenv;

}
else
{

int putenv(char *variable);
char *getenv(char *name);

}

