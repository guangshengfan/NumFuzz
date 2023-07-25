
/* @(#)e_scalb.c 1.3 95/01/18 */
/*
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunSoft, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice 
 * is preserved.
 * ====================================================
 */

/*
 * __ieee754_scalb(x, fn) is provide for
 * passing various standard test suite. One 
 * should use scalbn() instead.
 */

#include "fdlibm.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>



#ifdef _SCALB_INT
#ifdef __STDC__
	double __ieee754_scalb(double x, int fn)
#else
	double __ieee754_scalb(x,fn)
	double x; int fn;
#endif
#else
#ifdef __STDC__
	double __ieee754_scalb(double x, double fn)
#else
	double __ieee754_scalb(x,fn)
	double x, fn;
#endif
#endif
{
#ifdef _SCALB_INT
	return scalbn(x,fn);
#else
	if (isnan(x)||isnan(fn)) return x*fn;
	if (!finite(fn)) {
	    if(fn>0.0) return x*fn;
	    else       return x/(-fn);
	}
	if (rint(fn)!=fn) return (fn-fn)/(fn-fn);
	if ( fn > 65000.0) return scalbn(x, 65000);
	if (-fn > 65000.0) return scalbn(x,-65000);
	return scalbn(x,(int)fn);
#endif
}


//LCOV_EXCL_START
int main(int argc, char **argv)
{
    double a, b, c;
    FILE *fp = NULL;
    const char* filename = argv[1];
    fp = fopen(filename, "r");
    fscanf(fp, "%le", &a);
    fscanf(fp, "%le", &c);
    fclose(fp);

    printf ("%.16e %.16e\n", a, c);

    b = __ieee754_scalb(a, c);


    printf ("The Value of b is %f\n", b);

    return 0;
}
//LCOV_EXCL_STOP
