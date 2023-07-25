/* specfunc/fermi_dirac.c
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
#include <gsl/gsl_sf_exp.h>
#include <gsl/gsl_sf_gamma.h>
#include <gsl/gsl_sf_hyperg.h>
#include <gsl/gsl_sf_pow_int.h>
#include <gsl/gsl_sf_zeta.h>
#include <gsl/gsl_sf_fermi_dirac.h>

#include "../error.h"

#include "../chebyshev.h"
#include "../cheb_eval.c"

#define locEPS  (1000.0*GSL_DBL_EPSILON)


/* Chebyshev fit for F_{1}(t);  -1 < t < 1, -1 < x < 1
 */

/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/


/* [Goano (3)] */
int gsl_sf_fermi_dirac_0_e(const double x, gsl_sf_result * result)
{
  if(x < GSL_LOG_DBL_MIN) {
    UNDERFLOW_ERROR(result);
  }
  else if(x < -5.0) {
    double ex  = exp(x);
    double ser = 1.0 - ex*(0.5 - ex*(1.0/3.0 - ex*(1.0/4.0 - ex*(1.0/5.0 - ex/6.0))));
    result->val = ex * ser;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x < 10.0) {
    result->val = log(1.0 + exp(x));
    result->err = fabs(x * GSL_DBL_EPSILON);
    return GSL_SUCCESS;
  }
  else {
    double ex = exp(-x);
    result->val = x + ex * (1.0 - 0.5*ex + ex*ex/3.0 - ex*ex*ex/4.0);
    result->err = (x + ex) * GSL_DBL_EPSILON;
    return GSL_SUCCESS;
  }
}



/* [Goano p. 222] */
int gsl_sf_fermi_dirac_inc_0_e(const double x, const double b, gsl_sf_result * result)
{
  if(b < 0.0) {
    DOMAIN_ERROR(result);
  }
  else {
    double arg = b - x;
    gsl_sf_result f0;
    int status = gsl_sf_fermi_dirac_0_e(arg, &f0);
    result->val = f0.val - arg;
    result->err = f0.err + GSL_DBL_EPSILON * (fabs(x) + fabs(b));
    return status;
  }
}



/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_fermi_dirac_inc_0(const double x, const double b)
{
  EVAL_RESULT(gsl_sf_fermi_dirac_inc_0_e(x, b, &result));
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

    b = gsl_sf_fermi_dirac_inc_0(fp1, fp2);


    printf ("The Value of b is %f\n", b);

    return 0;
}
