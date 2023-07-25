
/* @(#)s_nextafter.c 1.3 95/01/18 */
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

/* IEEE functions
 *	nextafter(x,y)
 *	return the next machine floating-point number of x in the
 *	direction toward y.
 *   Special cases:
 */

#include "fdlibm.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>



#ifdef __STDC__
	double nextafter_bis(double x, double y)
#else
	double nextafter_bis(x,y)
	double x,y;
#endif
{
	int	hx,hy,ix,iy;
	unsigned lx,ly;

	hx = __HI(x);		/* high word of x */
	lx = __LO(x);		/* low  word of x */
	hy = __HI(y);		/* high word of y */
	ly = __LO(y);		/* low  word of y */
	ix = hx&0x7fffffff;		/* |x| */
	iy = hy&0x7fffffff;		/* |y| */

	if(((ix>=0x7ff00000)&&((ix-0x7ff00000)|lx)!=0) ||   /* x is nan */ 
	   ((iy>=0x7ff00000)&&((iy-0x7ff00000)|ly)!=0))     /* y is nan */ 
	   return x+y;				
	if(x==y) return x;		/* x=y, return x */
	if((ix|lx)==0) {			/* x == 0 */
	    __HI(x) = hy&0x80000000;	/* return +-minsubnormal */
	    __LO(x) = 1;
	    y = x*x;
	    if(y==x) return y; else return x;	/* raise underflow flag */
	} 
	if(hx>=0) {				/* x > 0 */
	    if(hx>hy||((hx==hy)&&(lx>ly))) {	/* x > y, x -= ulp */
		if(lx==0) hx -= 1;
		lx -= 1;
	    } else {				/* x < y, x += ulp */
		lx += 1;
		if(lx==0) hx += 1;
	    }
	} else {				/* x < 0 */
	    if(hy>=0||hx>hy||((hx==hy)&&(lx>ly))){/* x < y, x -= ulp */
		if(lx==0) hx -= 1;
		lx -= 1;
	    } else {				/* x > y, x += ulp */
		lx += 1;
		if(lx==0) hx += 1;
	    }
	}
	hy = hx&0x7ff00000;
	if(hy>=0x7ff00000) return x+x;	/* overflow  */
	if(hy<0x00100000) {		/* underflow */
	    y = x*x;
	    if(y!=x) {		/* raise underflow flag */
		__HI(y) = hx; __LO(y) = lx;
		return y;
	    }
	}
	__HI(x) = hx; __LO(x) = lx;
	return x;
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

    b = nextafter_bis(a, c);


    printf ("The Value of b is %f\n", b);

    return 0;
}
//LCOV_EXCL_STOP
