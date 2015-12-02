#include "sh.h"

int st(int);

MYSHAREDLIB_EXPORT int sh(int a) { return st(a)+10; }
