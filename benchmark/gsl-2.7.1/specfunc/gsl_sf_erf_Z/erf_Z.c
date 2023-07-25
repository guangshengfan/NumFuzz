/* specfunc/erfc.c
 * 
 * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003 Gerard Jungman
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 */

/* Author:  J. Theiler (modifications by G. Jungman) */

/*
 * See Hart et al, Computer Approximations, John Wiley and Sons, New York (1968)
 * (This applies only to the erfc8 stuff, which is the part
 *  of the original code that survives. I have replaced much of
 *  the other stuff with Chebyshev fits. These are simpler and
 *  more precise than the original approximations. [GJ])
 */
#include "../../config.h"
#include <gsl/gsl_math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_exp.h>
#include <gsl/gsl_sf_erf.h>

#include "../check.h"

#include "../chebyshev.h"
#include "../cheb_eval.c"

#define LogRootPi_  0.57236494292470008706




/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/




int gsl_sf_erf_Z_e(double x, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  {
    const double ex2 = exp(-x*x/2.0);
    result->val  = ex2 / (M_SQRT2 * M_SQRTPI);
    result->err  = fabs(x * result->val) * GSL_DBL_EPSILON;
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    CHECK_UNDERFLOW(result);
    return GSL_SUCCESS;
  }
}



/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_erf_Z(double x)
{
  EVAL_RESULT(gsl_sf_erf_Z_e(x, &result));
}


int main(int argc, char **argv)
{
    double a, b;
    FILE *fp = NULL;
    const char* filename = argv[1];
    fp = fopen(filename, "r");
    fscanf(fp, "%le", &a);
    fclose(fp);

    printf ("%.15e\n", a);
    
    b = gsl_sf_erf_Z(a);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}

