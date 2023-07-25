/* specfunc/dilog.c
 * 
 * Copyright (C) 1996, 1997, 1998, 1999, 2000, 2004 Gerard Jungman
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
#include <gsl/gsl_sf_clausen.h>
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_log.h>
#include <gsl/gsl_sf_dilog.h>


/* Evaluate series for real dilog(x)
 * Sum[ x^k / k^2, {k,1,Infinity}]
 *
 * Converges rapidly for |x| < 1/2.
 */
static
int
dilog_series_1(const double x, gsl_sf_result * result)
{
  const int kmax = 1000;
  double sum  = x;
  double term = x;
  int k;
  for(k=2; k<kmax; k++) {
    const double rk = (k-1.0)/k;
    term *= x;
    term *= rk*rk;
    sum += term;
    if(fabs(term/sum) < GSL_DBL_EPSILON) break;
  }

  result->val  = sum;
  result->err  = 2.0 * fabs(term);
  result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);

  if(k == kmax)
    GSL_ERROR ("error", GSL_EMAXITER);
  else
    return GSL_SUCCESS;
}


/* Compute the associated series
 *
 *   sum_{k=1}{infty} r^k / (k^2 (k+1))
 *
 * This is a series which appears in the one-step accelerated
 * method, which splits out one elementary function from the
 * full definition of Li_2(x). See below.
 */
static int
series_2(double r, gsl_sf_result * result)
{
  static const int kmax = 100;
  double rk = r;
  double sum = 0.5 * r;
  int k;
  for(k=2; k<10; k++)
  {
    double ds;
    rk *= r;
    ds = rk/(k*k*(k+1.0));
    sum += ds;
  }
  for(; k<kmax; k++)
  {
    double ds;
    rk *= r;
    ds = rk/(k*k*(k+1.0));
    sum += ds;
    if(fabs(ds/sum) < 0.5*GSL_DBL_EPSILON) break;
  }

  result->val = sum;
  result->err = 2.0 * kmax * GSL_DBL_EPSILON * fabs(sum);

  return GSL_SUCCESS;
}


/* Compute Li_2(x) using the accelerated series representation.
 *
 * Li_2(x) = 1 + (1-x)ln(1-x)/x + series_2(x)
 *
 * assumes: -1 < x < 1
 */
static int
dilog_series_2(double x, gsl_sf_result * result)
{
  const int stat_s3 = series_2(x, result);
  double t;
  if(x > 0.01)
    t = (1.0 - x) * log(1.0-x) / x;
  else
  {
    static const double c3 = 1.0/3.0;
    static const double c4 = 1.0/4.0;
    static const double c5 = 1.0/5.0;
    static const double c6 = 1.0/6.0;
    static const double c7 = 1.0/7.0;
    static const double c8 = 1.0/8.0;
    const double t68 = c6 + x*(c7 + x*c8);
    const double t38 = c3 + x *(c4 + x *(c5 + x * t68));
    t = (x - 1.0) * (1.0 + x*(0.5 + x*t38));
  }
  result->val += 1.0 + t;
  result->err += 2.0 * GSL_DBL_EPSILON * fabs(t);
  return stat_s3;
}


/* Calculates Li_2(x) for real x. Assumes x >= 0.0.
 */
static
int
dilog_xge0(const double x, gsl_sf_result * result)
{
  if(x > 2.0) {
    gsl_sf_result ser;
    const int stat_ser = dilog_series_2(1.0/x, &ser);
    const double log_x = log(x);
    const double t1 = M_PI*M_PI/3.0;
    const double t2 = ser.val;
    const double t3 = 0.5*log_x*log_x;
    result->val  = t1 - t2 - t3;
    result->err  = GSL_DBL_EPSILON * fabs(log_x) + ser.err;
    result->err += GSL_DBL_EPSILON * (fabs(t1) + fabs(t2) + fabs(t3));
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return stat_ser;
  }
  else if(x > 1.01) {
    gsl_sf_result ser;
    const int stat_ser = dilog_series_2(1.0 - 1.0/x, &ser);
    const double log_x    = log(x);
    const double log_term = log_x * (log(1.0-1.0/x) + 0.5*log_x);
    const double t1 = M_PI*M_PI/6.0;
    const double t2 = ser.val;
    const double t3 = log_term;
    result->val  = t1 + t2 - t3;
    result->err  = GSL_DBL_EPSILON * fabs(log_x) + ser.err;
    result->err += GSL_DBL_EPSILON * (fabs(t1) + fabs(t2) + fabs(t3));
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return stat_ser;
  }
  else if(x > 1.0) {
    /* series around x = 1.0 */
    const double eps = x - 1.0;
    const double lne = log(eps);
    const double c0 = M_PI*M_PI/6.0;
    const double c1 =   1.0 - lne;
    const double c2 = -(1.0 - 2.0*lne)/4.0;
    const double c3 =  (1.0 - 3.0*lne)/9.0;
    const double c4 = -(1.0 - 4.0*lne)/16.0;
    const double c5 =  (1.0 - 5.0*lne)/25.0;
    const double c6 = -(1.0 - 6.0*lne)/36.0;
    const double c7 =  (1.0 - 7.0*lne)/49.0;
    const double c8 = -(1.0 - 8.0*lne)/64.0;
    result->val = c0+eps*(c1+eps*(c2+eps*(c3+eps*(c4+eps*(c5+eps*(c6+eps*(c7+eps*c8)))))));
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x == 1.0) {
    result->val = M_PI*M_PI/6.0;
    result->err = 2.0 * GSL_DBL_EPSILON * M_PI*M_PI/6.0;
    return GSL_SUCCESS;
  }
  else if(x > 0.5) {
    gsl_sf_result ser;
    const int stat_ser = dilog_series_2(1.0-x, &ser);
    const double log_x = log(x);
    const double t1 = M_PI*M_PI/6.0;
    const double t2 = ser.val;
    const double t3 = log_x*log(1.0-x);
    result->val  = t1 - t2 - t3;
    result->err  = GSL_DBL_EPSILON * fabs(log_x) + ser.err;
    result->err += GSL_DBL_EPSILON * (fabs(t1) + fabs(t2) + fabs(t3));
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return stat_ser;
  }
  else if(x > 0.25) {
    return dilog_series_2(x, result);
  }
  else if(x > 0.0) {
    return dilog_series_1(x, result);
  }
  else {
    /* x == 0.0 */
    result->val = 0.0;
    result->err = 0.0;
    return GSL_SUCCESS;
  }
}




/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/


int
gsl_sf_dilog_e(const double x, gsl_sf_result * result)
{
  if(x >= 0.0) {
    return dilog_xge0(x, result);
  }
  else {
    gsl_sf_result d1, d2;
    int stat_d1 = dilog_xge0( -x, &d1);
    int stat_d2 = dilog_xge0(x*x, &d2);
    result->val  = -d1.val + 0.5 * d2.val;
    result->err  =  d1.err + 0.5 * d2.err;
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_ERROR_SELECT_2(stat_d1, stat_d2);
  }
}




/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_dilog(const double x)
{
  EVAL_RESULT(gsl_sf_dilog_e(x, &result));
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
    
    b = gsl_sf_dilog(a);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}
