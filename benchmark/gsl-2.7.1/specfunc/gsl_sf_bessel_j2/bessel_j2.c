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

int gsl_sf_bessel_j2_e(const double x, gsl_sf_result * result)
{
  double ax = fabs(x);

  /* CHECK_POINTER(result) */

  if(x == 0.0) {
    result->val = 0.0;
    result->err = 0.0;
    return GSL_SUCCESS;
  }
  else if(ax < 4.0*GSL_SQRT_DBL_MIN) {
    UNDERFLOW_ERROR(result);
  }
  else if(ax < 1.3) {
    const double y  = x*x;
    const double c1 = -1.0/14.0;
    const double c2 =  1.0/504.0;
    const double c3 = -1.0/33264.0;
    const double c4 =  1.0/3459456.0;
    const double c5 = -1.0/518918400;
    const double c6 =  1.0/105859353600.0;
    const double c7 = -1.0/28158588057600.0;
    const double c8 =  1.0/9461285587353600.0;
    const double c9 = -1.0/3916972233164390400.0;
    const double sum = 1.0+y*(c1+y*(c2+y*(c3+y*(c4+y*(c5+y*(c6+y*(c7+y*(c8+y*c9))))))));
    result->val = y/15.0 * sum;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    /* bug #45730: switch from gsl_sf_{cos,sin} to cos/sin to fix large inputs */
#if 0
    gsl_sf_result cos_result;
    gsl_sf_result sin_result;
    const int stat_cos = gsl_sf_cos_e(x, &cos_result);
    const int stat_sin = gsl_sf_sin_e(x, &sin_result);
    const double cos_x = cos_result.val;
    const double sin_x = sin_result.val;
    const double f = (3.0/(x*x) - 1.0);
    result->val  = (f * sin_x - 3.0*cos_x/x)/x;
    result->err  = fabs(f * sin_result.err/x) + fabs((3.0*cos_result.err/x)/x);
    result->err += 2.0 * GSL_DBL_EPSILON * (fabs(f*sin_x/x) + 3.0*fabs(cos_x/(x*x)));
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_ERROR_SELECT_2(stat_cos, stat_sin);
#else
    const double cos_x = cos(x);
    const double sin_x = sin(x);
    const double f = (3.0/(x*x) - 1.0);
    result->val  = (f * sin_x - 3.0*cos_x/x)/x;
    result->err = 2.0 * GSL_DBL_EPSILON * (fabs(f*sin_x/x) + 3.0*fabs(cos_x/(x*x)));
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    /*return GSL_ERROR_SELECT_2(stat_cos, stat_sin);*/
    return GSL_SUCCESS;
#endif
  }
}

/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_bessel_j2(const double x)
{
  EVAL_RESULT(gsl_sf_bessel_j2_e(x, &result));
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

    b = gsl_sf_bessel_j2(a);


    printf ("The Value of b is %f\n", b);

    return 0;
}
