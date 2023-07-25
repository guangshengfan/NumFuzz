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
static double fd_1_a_data[22] = {
  1.8949340668482264365,
  0.7237719066890052793,
  0.1250000000000000000,
  0.0101065196435973942,
  0.0,
 -0.0000600615242174119,
  0.0,
  6.816528764623e-7,
  0.0,
 -9.5895779195e-9,
  0.0,
  1.515104135e-10,
  0.0,
 -2.5785616e-12,
  0.0,
  4.62270e-14,
  0.0,
 -8.612e-16,
  0.0,
  1.65e-17,
  0.0,
 -3.e-19
};
static cheb_series fd_1_a_cs = {
  fd_1_a_data,
  21,
  -1, 1,
  12
};


/* Chebyshev fit for F_{1}(3/2(t+1) + 1);  -1 < t < 1, 1 < x < 4
 */
static double fd_1_b_data[22] = {
  10.409136795234611872,
  3.899445098225161947,
  0.513510935510521222,
  0.010618736770218426,
 -0.001584468020659694,
  0.000146139297161640,
 -1.408095734499e-6,
 -2.177993899484e-6,
  3.91423660640e-7,
 -2.3860262660e-8,
 -4.138309573e-9,
  1.283965236e-9,
 -1.39695990e-10,
 -4.907743e-12,
  4.399878e-12,
 -7.17291e-13,
  2.4320e-14,
  1.4230e-14,
 -3.446e-15,
  2.93e-16,
  3.7e-17,
 -1.6e-17
};
static cheb_series fd_1_b_cs = {
  fd_1_b_data,
  21,
  -1, 1,
  11
};


/* Chebyshev fit for F_{1}(3(t+1) + 4);  -1 < t < 1, 4 < x < 10
 */
static double fd_1_c_data[23] = {
  56.78099449124299762,
  21.00718468237668011,
  2.24592457063193457,
  0.00173793640425994,
 -0.00058716468739423,
  0.00016306958492437,
 -0.00003817425583020,
  7.64527252009e-6,
 -1.31348500162e-6,
  1.9000646056e-7,
 -2.141328223e-8,
  1.23906372e-9,
  2.1848049e-10,
 -1.0134282e-10,
  2.484728e-11,
 -4.73067e-12,
  7.3555e-13,
 -8.740e-14,
  4.85e-15,
  1.23e-15,
 -5.6e-16,
  1.4e-16,
 -3.e-17
};
static cheb_series fd_1_c_cs = {
  fd_1_c_data,
  22,
  -1, 1,
  13
};


/* Chebyshev fit for F_{1}(x) / x^2
 * 10 < x < 30 
 * -1 < t < 1
 * t = 1/10 (x-10) - 1 = x/10 - 2
 * x = 10(t+2)
 */
static double fd_1_d_data[30] = {
  1.0126626021151374442,
 -0.0063312525536433793,
  0.0024837319237084326,
 -0.0008764333697726109,
  0.0002913344438921266,
 -0.0000931877907705692,
  0.0000290151342040275,
 -8.8548707259955e-6,
  2.6603474114517e-6,
 -7.891415690452e-7,
  2.315730237195e-7,
 -6.73179452963e-8,
  1.94048035606e-8,
 -5.5507129189e-9,
  1.5766090896e-9,
 -4.449310875e-10,
  1.248292745e-10,
 -3.48392894e-11,
  9.6791550e-12,
 -2.6786240e-12,
  7.388852e-13,
 -2.032828e-13,
  5.58115e-14,
 -1.52987e-14,
  4.1886e-15,
 -1.1458e-15,
  3.132e-16,
 -8.56e-17,
  2.33e-17,
 -5.9e-18
};
static cheb_series fd_1_d_cs = {
  fd_1_d_data,
  29,
  -1, 1,
  14
};


/* Chebyshev fit for F_{1}(x) / x^2
 * 30 < x < Inf
 * -1 < t < 1
 * t = 60/x - 1
 * x = 60/(t+1)
 */
static double fd_1_e_data[10] = {
  1.0013707783890401683,
  0.0009138522593601060,
  0.0002284630648400133,
 -1.57e-17,
 -1.27e-17,
 -9.7e-18,
 -6.9e-18,
 -4.6e-18,
 -2.9e-18,
 -1.7e-18
};
static cheb_series fd_1_e_cs = {
  fd_1_e_data,
  9,
  -1, 1,
  4
};


/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/


int gsl_sf_fermi_dirac_1_e(const double x, gsl_sf_result * result)
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
      term *= -ex * rat * rat;
      sum  += term;
      if(fabs(term/sum) < GSL_DBL_EPSILON) break;
    }
    result->val = sum;
    result->err = 2.0 * fabs(sum) * GSL_DBL_EPSILON;
    return GSL_SUCCESS;
  }
  else if(x < 1.0) {
    return cheb_eval_e(&fd_1_a_cs, x, result);
  }
  else if(x < 4.0) {
    double t = 2.0/3.0*(x-1.0) - 1.0;
    return cheb_eval_e(&fd_1_b_cs, t, result);
  }
  else if(x < 10.0) {
    double t = 1.0/3.0*(x-4.0) - 1.0;
    return cheb_eval_e(&fd_1_c_cs, t, result);
  }
  else if(x < 30.0) {
    double t = 0.1*x - 2.0;
    gsl_sf_result c;
    cheb_eval_e(&fd_1_d_cs, t, &c);
    result->val  = c.val * x*x;
    result->err  = c.err * x*x + GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x < 1.0/GSL_SQRT_DBL_EPSILON) {
    double t = 60.0/x - 1.0;
    gsl_sf_result c;
    cheb_eval_e(&fd_1_e_cs, t, &c);
    result->val  = c.val * x*x;
    result->err  = c.err * x*x + GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x < GSL_SQRT_DBL_MAX) {
    result->val = 0.5 * x*x;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    OVERFLOW_ERROR(result);
  }
}





/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"



double gsl_sf_fermi_dirac_1(const double x)
{
  EVAL_RESULT(gsl_sf_fermi_dirac_1_e(x, &result));
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

    b = gsl_sf_fermi_dirac_1(a);


    printf ("The Value of b is %f\n", b);

    return 0;
}
