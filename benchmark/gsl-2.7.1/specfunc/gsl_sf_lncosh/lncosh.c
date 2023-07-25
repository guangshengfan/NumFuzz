/* specfunc/trig.c
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
#include <gsl/gsl_sf_log.h>
#include <gsl/gsl_sf_trig.h>

#include "../error.h"

#include "../chebyshev.h"
#include "../cheb_eval.c"

/* sinh(x) series
 * double-precision for |x| < 1.0
 */
inline
static
int
sinh_series(const double x, double * result)
{
  const double y = x*x;
  const double c0 = 1.0/6.0;
  const double c1 = 1.0/120.0;
  const double c2 = 1.0/5040.0;
  const double c3 = 1.0/362880.0;
  const double c4 = 1.0/39916800.0;
  const double c5 = 1.0/6227020800.0;
  const double c6 = 1.0/1307674368000.0;
  const double c7 = 1.0/355687428096000.0;
  *result = x*(1.0 + y*(c0+y*(c1+y*(c2+y*(c3+y*(c4+y*(c5+y*(c6+y*c7))))))));
  return GSL_SUCCESS;
}


/* cosh(x)-1 series
 * double-precision for |x| < 1.0
 */
inline
static
int
cosh_m1_series(const double x, double * result)
{
  const double y = x*x;
  const double c0 = 0.5;
  const double c1 = 1.0/24.0;
  const double c2 = 1.0/720.0;
  const double c3 = 1.0/40320.0;
  const double c4 = 1.0/3628800.0;
  const double c5 = 1.0/479001600.0;
  const double c6 = 1.0/87178291200.0;
  const double c7 = 1.0/20922789888000.0;
  const double c8 = 1.0/6402373705728000.0;
  *result = y*(c0+y*(c1+y*(c2+y*(c3+y*(c4+y*(c5+y*(c6+y*(c7+y*c8))))))));
  return GSL_SUCCESS;
}


/* Chebyshev expansion for f(t) = sinc((t+1)/2), -1 < t < 1
 */
static double sinc_data[17] = {
  1.133648177811747875422,
 -0.532677564732557348781,
 -0.068293048346633177859,
  0.033403684226353715020,
  0.001485679893925747818,
 -0.000734421305768455295,
 -0.000016837282388837229,
  0.000008359950146618018,
  0.000000117382095601192,
 -0.000000058413665922724,
 -0.000000000554763755743,
  0.000000000276434190426,
  0.000000000001895374892,
 -0.000000000000945237101,
 -0.000000000000004900690,
  0.000000000000002445383,
  0.000000000000000009925
};
static cheb_series sinc_cs = {
  sinc_data,
  16,
  -1, 1,
  10
};


/* Chebyshev expansion for f(t) = g((t+1)Pi/8), -1<t<1
 * g(x) = (sin(x)/x - 1)/(x*x)
 */
static double sin_data[12] = {
  -0.3295190160663511504173,
   0.0025374284671667991990,
   0.0006261928782647355874,
  -4.6495547521854042157541e-06,
  -5.6917531549379706526677e-07,
   3.7283335140973803627866e-09,
   3.0267376484747473727186e-10,
  -1.7400875016436622322022e-12,
  -1.0554678305790849834462e-13,
   5.3701981409132410797062e-16,
   2.5984137983099020336115e-17,
  -1.1821555255364833468288e-19
};
static cheb_series sin_cs = {
  sin_data,
  11,
  -1, 1,
  11
};

/* Chebyshev expansion for f(t) = g((t+1)Pi/8), -1<t<1
 * g(x) = (2(cos(x) - 1)/(x^2) + 1) / x^2
 */
static double cos_data[11] = {
  0.165391825637921473505668118136,
 -0.00084852883845000173671196530195,
 -0.000210086507222940730213625768083,
  1.16582269619760204299639757584e-6,
  1.43319375856259870334412701165e-7,
 -7.4770883429007141617951330184e-10,
 -6.0969994944584252706997438007e-11,
  2.90748249201909353949854872638e-13,
  1.77126739876261435667156490461e-14,
 -7.6896421502815579078577263149e-17,
 -3.7363121133079412079201377318e-18
};
static cheb_series cos_cs = {
  cos_data,
  10,
  -1, 1,
  10
};


/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/

/* I would have prefered just using the library sin() function.
 * But after some experimentation I decided that there was
 * no good way to understand the error; library sin() is just a black box.
 * So we have to roll our own.
 */

int gsl_sf_lncosh_e(const double x, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(fabs(x) < 1.0) {
    double eps;
    cosh_m1_series(x, &eps);
    return gsl_sf_log_1plusx_e(eps, result);
  }
  else if(fabs(x) < -0.5*GSL_LOG_DBL_EPSILON) {
    result->val = fabs(x) + log(0.5*(1.0 + exp(-2.0*fabs(x))));
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    result->val = -M_LN2 + fabs(x);
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
}








/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"



double gsl_sf_lncosh(const double x)
{
  EVAL_RESULT(gsl_sf_lncosh_e(x, &result));
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
    
    b = gsl_sf_lncosh(a);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}


