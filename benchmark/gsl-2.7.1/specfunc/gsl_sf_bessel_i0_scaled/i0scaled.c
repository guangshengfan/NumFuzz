/* specfunc/bessel_i.c
 * 
 * Copyright (C) 1996, 1997, 1998, 1999, 2000 Gerard Jungman
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
#include <gsl/gsl_sf_bessel.h>

#include "../error.h"

#include "../bessel.h"


/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/

int gsl_sf_bessel_i0_scaled_e(const double x, gsl_sf_result * result)
{
  double ax = fabs(x);

  /* CHECK_POINTER(result) */

  if(x == 0.0) {
    result->val = 1.0;
    result->err = 0.0;
    return GSL_SUCCESS;    
  }
  else if(ax < 0.2) {
    const double eax = exp(-ax);
    const double y = ax*ax;
    const double c1 = 1.0/6.0;
    const double c2 = 1.0/120.0;
    const double c3 = 1.0/5040.0;
    const double c4 = 1.0/362880.0;
    const double c5 = 1.0/39916800.0;
    const double sum = 1.0 + y*(c1 + y*(c2 + y*(c3 + y*(c4 + y*c5))));
    result->val = eax * sum;
    result->err = 2.0 * GSL_DBL_EPSILON * result->val;
  }
  else if(ax < -0.5*GSL_LOG_DBL_EPSILON) {
    result->val = (1.0 - exp(-2.0*ax))/(2.0*ax);
    result->err = 2.0 * GSL_DBL_EPSILON * result->val;
  }
  else {
    result->val = 1.0/(2.0*ax);
    result->err = 2.0 * GSL_DBL_EPSILON * result->val;
  }
  return GSL_SUCCESS;
}



/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_bessel_i0_scaled(const double x)
{
  EVAL_RESULT(gsl_sf_bessel_i0_scaled_e(x, &result));
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
    
    b = gsl_sf_bessel_i0_scaled(a);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}
