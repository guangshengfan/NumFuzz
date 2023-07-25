/* specfunc/bessel_j.c
 * 
 * Copyright (C) 1996,1997,1998,1999,2000,2001,2002,2003 Gerard Jungman
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

/* Author:  G. Jungman */

#include "../../config.h"
#include <gsl/gsl_math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_pow_int.h>
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_bessel.h>

#include "../error.h"

#include "../bessel.h"
#include "../bessel_olver.h"

/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/

int gsl_sf_bessel_j0_e(const double x, gsl_sf_result * result)
{
  double ax = fabs(x);

  /* CHECK_POINTER(result) */

  if(ax < 0.5) {
    const double y = x*x;
    const double c1 = -1.0/6.0;
    const double c2 =  1.0/120.0;
    const double c3 = -1.0/5040.0;
    const double c4 =  1.0/362880.0;
    const double c5 = -1.0/39916800.0;
    const double c6 =  1.0/6227020800.0;
    result->val = 1.0 + y*(c1 + y*(c2 + y*(c3 + y*(c4 + y*(c5 + y*c6)))));
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    result->val = sin(x) / x;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
}



/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_bessel_j0(const double x)
{
  EVAL_RESULT(gsl_sf_bessel_j0_e(x, &result));
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

    b = gsl_sf_bessel_j0(a);


    printf ("The Value of b is %f\n", b);

    return 0;
}
