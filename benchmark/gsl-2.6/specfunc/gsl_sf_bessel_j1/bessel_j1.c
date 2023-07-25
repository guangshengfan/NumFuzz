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

int gsl_sf_bessel_j1_e(const double x, gsl_sf_result * result)
{
  double ax = fabs(x);

  /* CHECK_POINTER(result) */

  if(x == 0.0) {
    result->val = 0.0;
    result->err = 0.0;
    return GSL_SUCCESS;
  }
  else if(ax < 3.1*GSL_DBL_MIN) {
    UNDERFLOW_ERROR(result);
  }
  else if(ax < 0.25) {
    const double y = x*x;
    const double c1 = -1.0/10.0;
    const double c2 =  1.0/280.0;
    const double c3 = -1.0/15120.0;
    const double c4 =  1.0/1330560.0;
    const double c5 = -1.0/172972800.0;
    const double sum = 1.0 + y*(c1 + y*(c2 + y*(c3 + y*(c4 + y*c5))));
    result->val = x/3.0 * sum;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    const double cos_x = cos(x);
    const double sin_x = sin(x);
    result->val  = (sin_x/x - cos_x)/x;
    result->err  = 2.0 * GSL_DBL_EPSILON * (fabs(sin_x/(x*x)) + fabs(cos_x/x));
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
}

/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_bessel_j1(const double x)
{
  EVAL_RESULT(gsl_sf_bessel_j1_e(x, &result));
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

    b = gsl_sf_bessel_j1(a);


    printf ("The Value of b is %f\n", b);

    return 0;
}
