#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main ()
{
    srand((unsigned)time(NULL));
    int n = rand() % 10;
    printf("%d\n", n);
    return 0;
}
