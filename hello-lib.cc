#include <stdio.h>
#include <wchar.h> // For wprintf

#include "hello-lib.h"

unsigned int get_magic_number()
{
    wprintf(L"\n Shared library successfully invoked.\n");
    return 42;
}
