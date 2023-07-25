#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>


int main(int argc, char **argv)
{
    double b, result;
    FILE *fp = NULL;
    const char* filename = argv[1];
    fp = fopen(filename, "r");
    fscanf(fp, "%le", &b);
    fclose(fp);
    printf("%.15e\n", b);

    result = b * b;

    result = sqrt(b);

    b = sqrt(b);
    
    b = log(b);
    
    b = exp(b);
    
    b = pow(0, b);

    printf ("The Value of b is %f\n", b);

    printf ("The Value of result is %f\n", result);
    
    return 0;
}
