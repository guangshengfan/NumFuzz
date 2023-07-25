#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <math.h>


int main(int argc, char **argv)
{
    double a, b, result;
    FILE *fp = NULL;
    const char* filename = argv[1];
    fp = fopen(filename, "r");
    fscanf(fp, "%le", &b);
    fclose(fp);
   // scanf("%f", &a);
    //scanf("%f", &b);
//    b = atof(argv[1]);
    printf("%.15e\n", b);

    a = 1.0;
    if (a > b)
    {
    	if (b < 0.419592)
    	{
    		if (b < 0.238122)
    		{
    			if (b < 0.014914)
                {
                    if (b < 0.0015)
                    {
                        if (b < 0.00015)
                        {
                            if (b < 0.000015)
                            {
                                if (b < 0.00000015)
    			                	a = a / (b - b);

                            }
                        }
                    }
                }
    		}
    	}
    }
    else
    {
    	a = a + b * (a / (b- 2*a));
    }	
    result = a / (b + a);

    printf ("The Value of result is %f\n", result);
    
    return 0;
}
