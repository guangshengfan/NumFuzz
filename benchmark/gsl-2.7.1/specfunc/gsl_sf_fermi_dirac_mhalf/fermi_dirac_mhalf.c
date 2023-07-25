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



/* Chebyshev fit for F_{-1/2}(t);  -1 < t < 1, -1 < x < 1
 */
static double fd_mhalf_a_data[20] = {
  1.2663290042859741974,
  0.3697876251911153071,
  0.0278131011214405055,
 -0.0033332848565672007,
 -0.0004438108265412038,
  0.0000616495177243839,
  8.7589611449897e-6,
 -1.2622936986172e-6,
 -1.837464037221e-7,
  2.69495091400e-8,
  3.9760866257e-9,
 -5.894468795e-10,
 -8.77321638e-11,
  1.31016571e-11,
  1.9621619e-12,
 -2.945887e-13,
 -4.43234e-14,
  6.6816e-15,
  1.0084e-15,
 -1.561e-16
};
static cheb_series fd_mhalf_a_cs = {
  fd_mhalf_a_data,
  19,
  -1, 1,
  12
};


/* Chebyshev fit for F_{-1/2}(3/2(t+1) + 1);  -1 < t < 1, 1 < x < 4
 */
static double fd_mhalf_b_data[20] = {
  3.270796131942071484,
  0.5809004935853417887,
 -0.0299313438794694987,
 -0.0013287935412612198,
  0.0009910221228704198,
 -0.0001690954939688554,
  6.5955849946915e-6,
  3.5953966033618e-6,
 -9.430672023181e-7,
  8.75773958291e-8,
  1.06247652607e-8,
 -4.9587006215e-9,
  7.160432795e-10,
  4.5072219e-12,
 -2.3695425e-11,
  4.9122208e-12,
 -2.905277e-13,
 -9.59291e-14,
  3.00028e-14,
 -3.4970e-15
};
static cheb_series fd_mhalf_b_cs = {
  fd_mhalf_b_data,
  19,
  -1, 1,
  12
};


/* Chebyshev fit for F_{-1/2}(3(t+1) + 4);  -1 < t < 1, 4 < x < 10
 */
static double fd_mhalf_c_data[25] = {
  5.828283273430595507,
  0.677521118293264655,
 -0.043946248736481554,
  0.005825595781828244,
 -0.000864858907380668,
  0.000110017890076539,
 -6.973305225404e-6,
 -1.716267414672e-6,
  8.59811582041e-7,
 -2.33066786976e-7,
  4.8503191159e-8,
 -8.130620247e-9,
  1.021068250e-9,
 -5.3188423e-11,
 -1.9430559e-11,
  8.750506e-12,
 -2.324897e-12,
  4.83102e-13,
 -8.1207e-14,
  1.0132e-14,
 -4.64e-16,
 -2.24e-16,
  9.7e-17,
 -2.6e-17,
  5.e-18
};
static cheb_series fd_mhalf_c_cs = {
  fd_mhalf_c_data,
  24,
  -1, 1,
  13
};


/* Chebyshev fit for F_{-1/2}(x) / x^(1/2)
 * 10 < x < 30 
 * -1 < t < 1
 * t = 1/10 (x-10) - 1 = x/10 - 2
 */
static double fd_mhalf_d_data[30] = {
  2.2530744202862438709,
  0.0018745152720114692,
 -0.0007550198497498903,
  0.0002759818676644382,
 -0.0000959406283465913,
  0.0000324056855537065,
 -0.0000107462396145761,
  3.5126865219224e-6,
 -1.1313072730092e-6,
  3.577454162766e-7,
 -1.104926666238e-7,
  3.31304165692e-8,
 -9.5837381008e-9,
  2.6575790141e-9,
 -7.015201447e-10,
  1.747111336e-10,
 -4.04909605e-11,
  8.5104999e-12,
 -1.5261885e-12,
  1.876851e-13,
  1.00574e-14,
 -1.82002e-14,
  8.6634e-15,
 -3.2058e-15,
  1.0572e-15,
 -3.259e-16,
  9.60e-17,
 -2.74e-17,
  7.6e-18,
 -1.9e-18
};
static cheb_series fd_mhalf_d_cs = {
  fd_mhalf_d_data,
  29,
  -1, 1,
  15
};


/* Goano's modification of the Levin-u implementation.
 * This is a simplification of the original WHIZ algorithm.
 * See [Fessler et al., ACM Toms 9, 346 (1983)].
 */
static
int
fd_whiz(const double term, const int iterm,
        double * qnum, double * qden,
        double * result, double * s)
{
  if(iterm == 0) *s = 0.0;

  *s += term;

  qden[iterm] = 1.0/(term*(iterm+1.0)*(iterm+1.0));
  qnum[iterm] = *s * qden[iterm];

  if(iterm > 0) {
    double factor = 1.0;
    double ratio  = iterm/(iterm+1.0);
    int j;
    for(j=iterm-1; j>=0; j--) {
      double c = factor * (j+1.0) / (iterm+1.0);
      factor *= ratio;
      qden[j] = qden[j+1] - c * qden[j];
      qnum[j] = qnum[j+1] - c * qnum[j];
    }
  }

  *result = qnum[0] / qden[0];
  return GSL_SUCCESS;
}


/* Handle case of integer j <= -2.
 */
static
int
fd_nint(const int j, const double x, gsl_sf_result * result)
{
/*    const int nsize = 100 + 1; */
  enum {
    nsize = 100+1
  };
  double qcoeff[nsize];

  if(j >= -1) {
    result->val = 0.0;
    result->err = 0.0;
    GSL_ERROR ("error", GSL_ESANITY);
  }
  else if(j < -(nsize)) {
    result->val = 0.0;
    result->err = 0.0;
    GSL_ERROR ("error", GSL_EUNIMPL);
  }
  else {
    double a, p, f;
    int i, k;
    int n = -(j+1);

    qcoeff[1] = 1.0;

    for(k=2; k<=n; k++) {
      qcoeff[k] = -qcoeff[k-1];
      for(i=k-1; i>=2; i--) {
        qcoeff[i] = i*qcoeff[i] - (k-(i-1))*qcoeff[i-1];
      }
    }

    if(x >= 0.0) {
      a = exp(-x);
      f = qcoeff[1];
      for(i=2; i<=n; i++) {
        f = f*a + qcoeff[i];
      }
    }
    else {
      a = exp(x);
      f = qcoeff[n];
      for(i=n-1; i>=1; i--) {
        f = f*a + qcoeff[i];
      }
    }

    p = gsl_sf_pow_int(1.0+a, j);
    result->val = f*a*p;
    result->err = 3.0 * GSL_DBL_EPSILON * fabs(f*a*p);
    return GSL_SUCCESS;
  }
}

/* x < 0
 */
static
int
fd_neg(const double j, const double x, gsl_sf_result * result)
{
  enum {
    itmax = 100,
    qsize = 100+1
  };
/*    const int itmax = 100; */
/*    const int qsize = 100 + 1; */
  double qnum[qsize], qden[qsize];

  if(x < GSL_LOG_DBL_MIN) {
    result->val = 0.0;
    result->err = 0.0;
    return GSL_SUCCESS;
  }
  else if(x < -1.0 && x < -fabs(j+1.0)) {
    /* Simple series implementation. Avoid the
     * complexity and extra work of the series
     * acceleration method below.
     */
    double ex   = exp(x);
    double term = ex;
    double sum  = term;
    int n;
    for(n=2; n<100; n++) {
      double rat = (n-1.0)/n;
      double p   = pow(rat, j+1.0);
      term *= -ex * p;
      sum  += term;
      if(fabs(term/sum) < GSL_DBL_EPSILON) break;
    }
    result->val = sum;
    result->err = 2.0 * GSL_DBL_EPSILON * fabs(sum);
    return GSL_SUCCESS;
  }
  else {
    double s = 0.0;
    double xn = x;
    double ex  = -exp(x);
    double enx = -ex;
    double f = 0.0;
    double f_previous;
    int jterm;
    for(jterm=0; jterm<=itmax; jterm++) {
      double p = pow(jterm+1.0, j+1.0);
      double term = enx/p;
      f_previous = f;
      fd_whiz(term, jterm, qnum, qden, &f, &s);
      xn += x;
      if(fabs(f-f_previous) < fabs(f)*2.0*GSL_DBL_EPSILON || xn < GSL_LOG_DBL_MIN) break;
      enx *= ex;
    }

    result->val  = f;
    result->err  = fabs(f-f_previous);
    result->err += 2.0 * GSL_DBL_EPSILON * fabs(f);

    if(jterm == itmax)
      GSL_ERROR ("error", GSL_EMAXITER);
    else
      return GSL_SUCCESS;
  }
}



/* asymptotic expansion
 * j + 2.0 > 0.0
 */
static
int
fd_asymp(const double j, const double x, gsl_sf_result * result)
{
  const int j_integer = ( fabs(j - floor(j+0.5)) < 100.0*GSL_DBL_EPSILON );
  const int itmax = 200;
  gsl_sf_result lg;
  int stat_lg = gsl_sf_lngamma_e(j + 2.0, &lg);
  double seqn_val = 0.5;
  double seqn_err = 0.0;
  double xm2  = (1.0/x)/x;
  double xgam = 1.0;
  double add = GSL_DBL_MAX;
  double cos_term;
  double ln_x;
  double ex_term_1;
  double ex_term_2;
  gsl_sf_result fneg;
  gsl_sf_result ex_arg;
  gsl_sf_result ex;
  int stat_fneg;
  int stat_e;
  int n;
  for(n=1; n<=itmax; n++) {
    double add_previous = add;
    gsl_sf_result eta;
    gsl_sf_eta_int_e(2*n, &eta);
    xgam = xgam * xm2 * (j + 1.0 - (2*n-2)) * (j + 1.0 - (2*n-1));
    add  = eta.val * xgam;
    if(!j_integer && fabs(add) > fabs(add_previous)) break;
    if(fabs(add/seqn_val) < GSL_DBL_EPSILON) break;
    seqn_val += add;
    seqn_err += 2.0 * GSL_DBL_EPSILON * fabs(add);
  }
  seqn_err += fabs(add);

  stat_fneg = fd_neg(j, -x, &fneg);
  ln_x = log(x);
  ex_term_1 = (j+1.0)*ln_x;
  ex_term_2 = lg.val;
  ex_arg.val = ex_term_1 - ex_term_2; /*(j+1.0)*ln_x - lg.val; */
  ex_arg.err = GSL_DBL_EPSILON*(fabs(ex_term_1) + fabs(ex_term_2)) + lg.err;
  stat_e    = gsl_sf_exp_err_e(ex_arg.val, ex_arg.err, &ex);
  cos_term  = cos(j*M_PI);
  result->val  = cos_term * fneg.val + 2.0 * seqn_val * ex.val;
  result->err  = fabs(2.0 * ex.err * seqn_val);
  result->err += fabs(2.0 * ex.val * seqn_err);
  result->err += fabs(cos_term) * fneg.err;
  result->err += 4.0 * GSL_DBL_EPSILON * fabs(result->val);
  return GSL_ERROR_SELECT_3(stat_e, stat_fneg, stat_lg);
}




/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/


int gsl_sf_fermi_dirac_mhalf_e(const double x, gsl_sf_result * result)
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
    for(n=2; n<200 ; n++) {
      double rat = (n-1.0)/n;
      term *= -ex * sqrt(rat);
      sum  += term;
      if(fabs(term/sum) < GSL_DBL_EPSILON) break;
    }
    result->val = sum;
    result->err = 2.0 * fabs(sum) * GSL_DBL_EPSILON;
    return GSL_SUCCESS;
  }
  else if(x < 1.0) {
    return cheb_eval_e(&fd_mhalf_a_cs, x, result);
  }
  else if(x < 4.0) {
    double t = 2.0/3.0*(x-1.0) - 1.0;
    return cheb_eval_e(&fd_mhalf_b_cs, t, result);
  }
  else if(x < 10.0) {
    double t = 1.0/3.0*(x-4.0) - 1.0;
    return cheb_eval_e(&fd_mhalf_c_cs, t, result);
  }
  else if(x < 30.0) {
    double rtx = sqrt(x);
    double t = 0.1*x - 2.0;
    gsl_sf_result c;
    cheb_eval_e(&fd_mhalf_d_cs, t, &c);
    result->val  = c.val * rtx;
    result->err  = c.err * rtx + 0.5 * GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    return fd_asymp(-0.5, x, result);
  }
}




/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"


double gsl_sf_fermi_dirac_mhalf(const double x)
{
  EVAL_RESULT(gsl_sf_fermi_dirac_mhalf_e(x, &result));
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

    b = gsl_sf_fermi_dirac_mhalf(a);


    printf ("The Value of b is %f\n", b);

    return 0;
}
