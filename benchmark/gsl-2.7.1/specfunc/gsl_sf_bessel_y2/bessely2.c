/* specfunc/bessel_y.c
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
#include <gsl/gsl_sf_gamma.h>
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_bessel.h>

#include "../error.h"

#include "../bessel.h"
#include "../bessel_olver.h"



/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/

int gsl_sf_bessel_y2_e(const double x, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(x <= 0.0) {
    DOMAIN_ERROR(result);
  }
  else if(x < 1.0/GSL_ROOT3_DBL_MAX) {
    OVERFLOW_ERROR(result);
  }
  else if(x < 0.5) {
    const double y = x*x;
    const double c1 =  1.0/6.0;
    const double c2 =  1.0/24.0;
    const double c3 = -1.0/144.0;
    const double c4 =  1.0/3456.0;
    const double c5 = -1.0/172800.0;
    const double c6 =  1.0/14515200.0;
    const double c7 = -1.0/1828915200.0;
    const double sum = 1.0 + y*(c1 + y*(c2 + y*(c3 + y*(c4 + y*(c5 + y*(c6 + y*c7))))));
    result->val = -3.0/(x*x*x) * sum;
    result->err = GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    gsl_sf_result cos_result;
    gsl_sf_result sin_result;
    const int stat_cos = gsl_sf_cos_e(x, &cos_result);
    const int stat_sin = gsl_sf_sin_e(x, &sin_result);
    const double sx = sin_result.val;
    const double cx = cos_result.val;
    const double a  = 3.0/(x*x);
    result->val  = (1.0 - a)/x * cx - a * sx;
    result->err  = cos_result.err * fabs((1.0 - a)/x) + sin_result.err * fabs(a);
    result->err += GSL_DBL_EPSILON * (fabs(cx/x) + fabs(sx/(x*x)));
    return GSL_ERROR_SELECT_2(stat_cos, stat_sin);
  }
}


/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"


double gsl_sf_bessel_y2(const double x)
{
  EVAL_RESULT(gsl_sf_bessel_y2_e(x, &result));
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
    
    b = gsl_sf_bessel_y2(a);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}
