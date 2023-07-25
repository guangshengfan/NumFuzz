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




/* Chebyshev fit for F_{2}(t);  -1 < t < 1, -1 < x < 1
 */
static double fd_2_a_data[21] = {
  2.1573661917148458336,
  0.8849670334241132182,
  0.1784163467613519713,
  0.0208333333333333333,
  0.0012708226459768508,
  0.0,
 -5.0619314244895e-6,
  0.0,
  4.32026533989e-8,
  0.0,
 -4.870544166e-10,
  0.0,
  6.4203740e-12,
  0.0,
 -9.37424e-14,
  0.0,
  1.4715e-15,
  0.0,
 -2.44e-17,
  0.0,
  4.e-19
};
static cheb_series fd_2_a_cs = {
  fd_2_a_data,
  20,
  -1, 1,
  12
};


/* Chebyshev fit for F_{2}(3/2(t+1) + 1);  -1 < t < 1, 1 < x < 4
 */
static double fd_2_b_data[22] = {
  16.508258811798623599,
  7.421719394793067988,
  1.458309885545603821,
  0.128773850882795229,
  0.001963612026198147,
 -0.000237458988738779,
  0.000018539661382641,
 -1.92805649479e-7,
 -2.01950028452e-7,
  3.2963497518e-8,
 -1.885817092e-9,
 -2.72632744e-10,
  8.0554561e-11,
 -8.313223e-12,
 -2.24489e-13,
  2.18778e-13,
 -3.4290e-14,
  1.225e-15,
  5.81e-16,
 -1.37e-16,
  1.2e-17,
  1.e-18
};
static cheb_series fd_2_b_cs = {
  fd_2_b_data,
  21,
  -1, 1,
  12
};


/* Chebyshev fit for F_{1}(3(t+1) + 4);  -1 < t < 1, 4 < x < 10
 */
static double fd_2_c_data[20] = {
  168.87129776686440711,
  81.80260488091659458,
  15.75408505947931513,
  1.12325586765966440,
  0.00059057505725084,
 -0.00016469712946921,
  0.00003885607810107,
 -7.89873660613e-6,
  1.39786238616e-6,
 -2.1534528656e-7,
  2.831510953e-8,
 -2.94978583e-9,
  1.6755082e-10,
  2.234229e-11,
 -1.035130e-11,
  2.41117e-12,
 -4.3531e-13,
  6.447e-14,
 -7.39e-15,
  4.3e-16
};
static cheb_series fd_2_c_cs = {
  fd_2_c_data,
  19,
  -1, 1,
  12
};


/* Chebyshev fit for F_{1}(x) / x^3
 * 10 < x < 30 
 * -1 < t < 1
 * t = 1/10 (x-10) - 1 = x/10 - 2
 * x = 10(t+2)
 */
static double fd_2_d_data[30] = {
  0.3459960518965277589,
 -0.00633136397691958024,
  0.00248382959047594408,
 -0.00087651191884005114,
  0.00029139255351719932,
 -0.00009322746111846199,
  0.00002904021914564786,
 -8.86962264810663e-6,
  2.66844972574613e-6,
 -7.9331564996004e-7,
  2.3359868615516e-7,
 -6.824790880436e-8,
  1.981036528154e-8,
 -5.71940426300e-9,
  1.64379426579e-9,
 -4.7064937566e-10,
  1.3432614122e-10,
 -3.823400534e-11,
  1.085771994e-11,
 -3.07727465e-12,
  8.7064848e-13,
 -2.4595431e-13,
  6.938531e-14,
 -1.954939e-14,
  5.50162e-15,
 -1.54657e-15,
  4.3429e-16,
 -1.2178e-16,
  3.394e-17,
 -8.81e-18
};
static cheb_series fd_2_d_cs = {
  fd_2_d_data,
  29,
  -1, 1,
  14
};


/* Chebyshev fit for F_{2}(x) / x^3
 * 30 < x < Inf
 * -1 < t < 1
 * t = 60/x - 1
 * x = 60/(t+1)
 */
static double fd_2_e_data[4] = {
  0.3347041117223735227,
  0.00091385225936012645,
  0.00022846306484003205,
  5.2e-19
};
static cheb_series fd_2_e_cs = {
  fd_2_e_data,
  3,
  -1, 1,
  3
};




/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/



int gsl_sf_fermi_dirac_2_e(const double x, gsl_sf_result * result)
{
  if(x < GSL_LOG_DBL_MIN) {
    UNDERFLOW_ERROR(result);
  }
  else if(x < -1.0) {
    /* series [Goano (6)]
     */
    double ex   = exp(x);
    double term = ex;
    double sum  = term;
    int n;
    for(n=2; n<100 ; n++) {
      double rat = (n-1.0)/n;
      term *= -ex * rat * rat * rat;
      sum  += term;
      if(fabs(term/sum) < GSL_DBL_EPSILON) break;
    }
    result->val = sum;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(sum);
    return GSL_SUCCESS;
  }
  else if(x < 1.0) {
    return cheb_eval_e(&fd_2_a_cs, x, result);
  }
  else if(x < 4.0) {
    double t = 2.0/3.0*(x-1.0) - 1.0;
    return cheb_eval_e(&fd_2_b_cs, t, result);
  }
  else if(x < 10.0) {
    double t = 1.0/3.0*(x-4.0) - 1.0;
    return cheb_eval_e(&fd_2_c_cs, t, result);
  }
  else if(x < 30.0) {
    double t = 0.1*x - 2.0;
    gsl_sf_result c;
    cheb_eval_e(&fd_2_d_cs, t, &c);
    result->val  = c.val * x*x*x;
    result->err  = c.err * x*x*x + 3.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x < 1.0/GSL_ROOT3_DBL_EPSILON) {
    double t = 60.0/x - 1.0;
    gsl_sf_result c;
    cheb_eval_e(&fd_2_e_cs, t, &c);
    result->val = c.val * x*x*x;
    result->err = c.err * x*x*x + 3.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x < GSL_ROOT3_DBL_MAX) {
    result->val = 1.0/6.0 * x*x*x;
    result->err = 3.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    OVERFLOW_ERROR(result);
  }
}




/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"


double gsl_sf_fermi_dirac_2(const double x)
{
  EVAL_RESULT(gsl_sf_fermi_dirac_2_e(x, &result));
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

    b = gsl_sf_fermi_dirac_2(a);


    printf ("The Value of b is %f\n", b);

    return 0;
}
