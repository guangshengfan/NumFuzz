/* specfunc/exp.c
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
#include <gsl/gsl_sf_gamma.h>
#include <gsl/gsl_sf_exp.h>

#include "../error.h"

/* Evaluate the continued fraction for exprel.
 * [Abramowitz+Stegun, 4.2.41]
*/ 


/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/




int gsl_sf_exp_mult_e(const double x, const double y, gsl_sf_result * result)
{
  const double ay  = fabs(y);

  if(y == 0.0) {
    result->val = 0.0;
    result->err = 0.0;
    return GSL_SUCCESS;
  }
  else if(   ( x < 0.5*GSL_LOG_DBL_MAX   &&   x > 0.5*GSL_LOG_DBL_MIN)
          && (ay < 0.8*GSL_SQRT_DBL_MAX  &&  ay > 1.2*GSL_SQRT_DBL_MIN)
    ) {
    const double ex = exp(x);
    result->val = y * ex;
    result->err = (2.0 + fabs(x)) * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    const double ly  = log(ay);
    const double lnr = x + ly;

    if(lnr > GSL_LOG_DBL_MAX - 0.01) {
      OVERFLOW_ERROR(result);
    }
    else if(lnr < GSL_LOG_DBL_MIN + 0.01) {
      UNDERFLOW_ERROR(result);
    }
    else {
      const double sy   = GSL_SIGN(y);
      const double M    = floor(x);
      const double N    = floor(ly);
      const double a    = x  - M;
      const double b    = ly - N;
      const double berr = 2.0 * GSL_DBL_EPSILON * (fabs(ly) + fabs(N));
      result->val  = sy * exp(M+N) * exp(a+b);
      result->err  = berr * fabs(result->val);
      result->err += 2.0 * GSL_DBL_EPSILON * (M + N + 1.0) * fabs(result->val);
      return GSL_SUCCESS;
    }
  }
}


/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"



double gsl_sf_exp_mult(const double x, const double y)
{
  EVAL_RESULT(gsl_sf_exp_mult_e(x, y, &result));
}

int main(int argc, char **argv)
{
    double fp1, fp2, b;
    FILE *fp = NULL;
    const char* filename = argv[1];
    fp = fopen(filename, "r");
    fscanf(fp, "%le", &fp1);
    fscanf(fp, "%le", &fp2);
    fclose(fp);

    printf ("%.15e %.15e\n", fp1, fp2);
    
    b = gsl_sf_exp_mult(fp1, fp2);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}
