/* specfunc/laguerre.c
 * 
 * Copyright (C) 2007 Brian Gough
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
#include <gsl/gsl_sf_laguerre.h>

#include "../error.h"

/*-*-*-*-*-*-*-*-*-*-*-* Private Section *-*-*-*-*-*-*-*-*-*-*-*/


/* based on the large 2b-4a asymptotic for 1F1
 * [Abramowitz+Stegun, 13.5.21]
 * L^a_n(x) = (a+1)_n / n! 1F1(-n,a+1,x)
 *
 * The second term (ser_term2) is from Slater,"The Confluent
 * Hypergeometric Function" p.73.  I think there may be an error in
 * the first term of the expression given there, comparing with AS
 * 13.5.21 (cf sin(a\pi+\Theta) vs sin(a\pi) + sin(\Theta)) - but the
 * second term appears correct.
 *
 */


int
gsl_sf_laguerre_3_e(const double a, const double x, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(a == -2.0) {
    double x2_6  = x*x/6.0;
    result->val  = x2_6 * (3.0 - x);
    result->err  = x2_6 * (3.0 + fabs(x)) * 2.0 * GSL_DBL_EPSILON;
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(a == -3.0) {
    result->val = -x*x/6.0;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    double c0 = (3.0+a)*(2.0+a)*(1.0+a) / 6.0;
    double c1 = -c0 * 3.0 / (1.0+a);
    double c2 = -1.0/(2.0+a);
    double c3 = -1.0/(3.0*(3.0+a));
    result->val  = c0 + c1*x*(1.0 + c2*x*(1.0 + c3*x));
    result->err  = 1.0 + 2.0 * fabs(c3*x);
    result->err  = 1.0 + 2.0 * fabs(c2*x) * result->err;
    result->err  = 2.0 * GSL_DBL_EPSILON * (fabs(c0) + 2.0 * fabs(c1*x) * result->err);
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
}





/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"



double gsl_sf_laguerre_3(double a, double x)
{
  EVAL_RESULT(gsl_sf_laguerre_3_e(a, x, &result));
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

    b = gsl_sf_laguerre_3(fp1, fp2);


    printf ("The Value of b is %f\n", b);

    return 0;
}
