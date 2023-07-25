/* specfunc/legendre_Qn.c
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
#include <gsl/gsl_sf_bessel.h>
#include <gsl/gsl_sf_elementary.h>
#include <gsl/gsl_sf_exp.h>
#include <gsl/gsl_sf_pow_int.h>
#include <gsl/gsl_sf_legendre.h>

#include "../error.h"


/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/



int
gsl_sf_legendre_Q1_e(const double x, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(x <= -1.0 || x == 1.0) {
    DOMAIN_ERROR(result);
  }
  else if(x*x < GSL_ROOT6_DBL_EPSILON) { /* |x| <~ 0.05 */
    const double c3 = 1.0/3.0;
    const double c5 = 1.0/5.0;
    const double c7 = 1.0/7.0;
    const double c9 = 1.0/9.0;
    const double c11 = 1.0/11.0;
    const double y = x * x;
    const double series = 1.0 + y*(c3 + y*(c5 + y*(c7 + y*(c9 + y*c11))));
    result->val = x * x * series - 1.0;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x < 1.0){
    result->val = 0.5 * x * (log((1.0+x)/(1.0-x))) - 1.0;
    result->err  = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x < 6.0) {
    result->val = 0.5 * x * log((x+1.0)/(x-1.0)) - 1.0;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x*GSL_SQRT_DBL_MIN < 0.99/M_SQRT3) {
    const double y = 1/(x*x);
    const double c1 = 3.0/5.0;
    const double c2 = 3.0/7.0;
    const double c3 = 3.0/9.0;
    const double c4 = 3.0/11.0;
    const double c5 = 3.0/13.0;
    const double c6 = 3.0/15.0;
    const double c7 = 3.0/17.0;
    const double c8 = 3.0/19.0;
    const double sum = 1.0 + y*(c1 + y*(c2 + y*(c3 + y*(c4 + y*(c5 + y*(c6 + y*(c7 + y*c8)))))));
    result->val = sum / (3.0*x*x);
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    UNDERFLOW_ERROR(result);
  }
}





/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"



double gsl_sf_legendre_Q1(const double x)
{
  EVAL_RESULT(gsl_sf_legendre_Q1_e(x, &result));
}


int main(int argc, char **argv)
{
    double a, b;
    FILE *fp = NULL;
    const char* filename = argv[1];
    fp = fopen(filename, "r");
    fscanf(fp, "%le", &a);
    fclose(fp);

    printf ("%.16e\n", a);

    b = gsl_sf_legendre_Q1(a);


    printf ("The Value of b is %f\n", b);

    return 0;
}
