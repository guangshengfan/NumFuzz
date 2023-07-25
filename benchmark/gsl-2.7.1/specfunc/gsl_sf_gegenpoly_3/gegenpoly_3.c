/* specfunc/gegenbauer.c
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
#include <gsl/gsl_sf_gegenbauer.h>

#include "../error.h"

/* See: [Thompson, Atlas for Computing Mathematical Functions] */


int
gsl_sf_gegenpoly_3_e(double lambda, double x, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(lambda == 0.0) {
    result->val = x*(-2.0 + 4.0/3.0*x*x);
    result->err = GSL_DBL_EPSILON * (2.0 * fabs(result->val) + fabs(x));
    return GSL_SUCCESS;
  }
  else {
    double c = 4.0 + lambda*(6.0 + 2.0*lambda);
    result->val = 2.0*lambda * x * ( -1.0 - lambda + c*x*x/3.0 );
    result->err = GSL_DBL_EPSILON * (2.0 * fabs(result->val) + fabs(lambda * x));
    return GSL_SUCCESS;
  }
}







/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"



double gsl_sf_gegenpoly_n(int n, double lambda, double x)
{
  EVAL_RESULT(gsl_sf_gegenpoly_n_e(n, lambda, x, &result));
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
    
    b = gsl_sf_gegenpoly_3(fp1, fp2);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}

