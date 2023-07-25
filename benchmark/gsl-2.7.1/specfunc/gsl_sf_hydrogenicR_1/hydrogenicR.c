/* specfunc/coulomb_bound.c
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
#include <gsl/gsl_sf_pow_int.h>
#include <gsl/gsl_sf_laguerre.h>
#include <gsl/gsl_sf_coulomb.h>

#include "../error.h"
#include "../check.h"

/* normalization for hydrogenic wave functions */


/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/

int
gsl_sf_hydrogenicR_1_e(const double Z, const double r, gsl_sf_result * result)
{
  if(Z > 0.0 && r >= 0.0) {
    double A = 2.0*Z;
    double norm = A*sqrt(Z);
    double ea = exp(-Z*r);
    result->val = norm*ea;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val) * fabs(Z*r);
    CHECK_UNDERFLOW(result);
    return GSL_SUCCESS;
  }
  else {
    DOMAIN_ERROR(result);
  }
}


/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_hydrogenicR_1(const double Z, const double r)
{
  EVAL_RESULT(gsl_sf_hydrogenicR_1_e(Z, r, &result));
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
    
    b = gsl_sf_hydrogenicR_1(fp1, fp2);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}
