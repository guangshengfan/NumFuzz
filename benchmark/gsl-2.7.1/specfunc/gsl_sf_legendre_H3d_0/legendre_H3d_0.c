/* specfunc/legendre_H3d.c
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
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_legendre.h>

#include "../error.h"

#include "../legendre.h"

/* See [Abbott+Schaefer, Ap.J. 308, 546 (1986)] for
 * enough details to follow what is happening here.
 */


/* Logarithm of normalization factor, Log[N(ell,lambda)].
 * N(ell,lambda) = Product[ lambda^2 + n^2, {n,0,ell} ]
 *               = |Gamma(ell + 1 + I lambda)|^2  lambda sinh(Pi lambda) / Pi
 * Assumes ell >= 0.
 */
static
int
legendre_H3d_lnnorm(const int ell, const double lambda, double * result)
{
  double abs_lam = fabs(lambda);

  if(abs_lam == 0.0) {
    *result = 0.0;
    GSL_ERROR ("error", GSL_EDOM);
  }
  else if(lambda > (ell + 1.0)/GSL_ROOT3_DBL_EPSILON) {
    /* There is a cancellation between the sinh(Pi lambda)
     * term and the log(gamma(ell + 1 + i lambda) in the
     * result below, so we show some care and save some digits.
     * Note that the above guarantees that lambda is large,
     * since ell >= 0. We use Stirling and a simple expansion
     * of sinh.
     */
    double rat = (ell+1.0)/lambda;
    double ln_lam2ell2  = 2.0*log(lambda) + log(1.0 + rat*rat);
    double lg_corrected = -2.0*(ell+1.0) + M_LNPI + (ell+0.5)*ln_lam2ell2 + 1.0/(288.0*lambda*lambda);
    double angle_terms  = lambda * 2.0 * rat * (1.0 - rat*rat/3.0);
    *result = log(abs_lam) + lg_corrected + angle_terms - M_LNPI;
    return GSL_SUCCESS;
  }
  else {
    gsl_sf_result lg_r;
    gsl_sf_result lg_theta;
    gsl_sf_result ln_sinh;
    gsl_sf_lngamma_complex_e(ell+1.0, lambda, &lg_r, &lg_theta);
    gsl_sf_lnsinh_e(M_PI * abs_lam, &ln_sinh);
    *result = log(abs_lam) + ln_sinh.val + 2.0*lg_r.val - M_LNPI;
    return GSL_SUCCESS;
  }
}


/* Calculate series for small eta*lambda.
 * Assumes eta > 0, lambda != 0.
 *
 * This is just the defining hypergeometric for the Legendre function.
 *
 * P^{mu}_{-1/2 + I lam}(z) = 1/Gamma(l+3/2) ((z+1)/(z-1)^(mu/2)
 *                            2F1(1/2 - I lam, 1/2 + I lam; l+3/2; (1-z)/2)
 * We use
 *       z = cosh(eta)
 * (z-1)/2 = sinh^2(eta/2)
 *
 * And recall
 * H3d = sqrt(Pi Norm /(2 lam^2 sinh(eta))) P^{-l-1/2}_{-1/2 + I lam}(cosh(eta))
 */
static
int
legendre_H3d_series(const int ell, const double lambda, const double eta,
                    gsl_sf_result * result)
{
  const int nmax = 5000;
  const double shheta = sinh(0.5*eta);
  const double ln_zp1 = M_LN2 + log(1.0 + shheta*shheta);
  const double ln_zm1 = M_LN2 + 2.0*log(shheta);
  const double zeta = -shheta*shheta;
  gsl_sf_result lg_lp32;
  double term = 1.0;
  double sum  = 1.0;
  double sum_err = 0.0;
  gsl_sf_result lnsheta;
  double lnN;
  double lnpre_val, lnpre_err, lnprepow;
  int stat_e;
  int n;

  gsl_sf_lngamma_e(ell + 3.0/2.0, &lg_lp32);
  gsl_sf_lnsinh_e(eta, &lnsheta);
  legendre_H3d_lnnorm(ell, lambda, &lnN);
  lnprepow = 0.5*(ell + 0.5) * (ln_zm1 - ln_zp1);
  lnpre_val  = lnprepow + 0.5*(lnN + M_LNPI - M_LN2 - lnsheta.val) - lg_lp32.val - log(fabs(lambda));
  lnpre_err  = lnsheta.err + lg_lp32.err + GSL_DBL_EPSILON * fabs(lnpre_val);
  lnpre_err += 2.0*GSL_DBL_EPSILON * (fabs(lnN) + M_LNPI + M_LN2);
  lnpre_err += 2.0*GSL_DBL_EPSILON * (0.5*(ell + 0.5) * (fabs(ln_zm1) + fabs(ln_zp1)));
  for(n=1; n<nmax; n++) {
    double aR = n - 0.5;
    term *= (aR*aR + lambda*lambda)*zeta/(ell + n + 0.5)/n;
    sum  += term;
    sum_err += 2.0*GSL_DBL_EPSILON*fabs(term);
    if(fabs(term/sum) < 2.0 * GSL_DBL_EPSILON) break;
  }

  stat_e = gsl_sf_exp_mult_err_e(lnpre_val, lnpre_err, sum, fabs(term)+sum_err, result);
  return GSL_ERROR_SELECT_2(stat_e, (n==nmax ? GSL_EMAXITER : GSL_SUCCESS));
}


/* Evaluate legendre_H3d(ell+1)/legendre_H3d(ell)
 * by continued fraction.
 */
#if 0
static
int
legendre_H3d_CF1(const int ell, const double lambda, const double coth_eta,
                 gsl_sf_result * result)
{
  const double RECUR_BIG = GSL_SQRT_DBL_MAX;
  const int maxiter = 5000;
  int n = 1;
  double Anm2 = 1.0;
  double Bnm2 = 0.0;
  double Anm1 = 0.0;
  double Bnm1 = 1.0;
  double a1 = hypot(lambda, ell+1.0);
  double b1 = (2.0*ell + 3.0) * coth_eta;
  double An = b1*Anm1 + a1*Anm2;
  double Bn = b1*Bnm1 + a1*Bnm2;
  double an, bn;
  double fn = An/Bn;

  while(n < maxiter) {
    double old_fn;
    double del;
    n++;
    Anm2 = Anm1;
    Bnm2 = Bnm1;
    Anm1 = An;
    Bnm1 = Bn;
    an = -(lambda*lambda + ((double)ell + n)*((double)ell + n));
    bn = (2.0*ell + 2.0*n + 1.0) * coth_eta;
    An = bn*Anm1 + an*Anm2;
    Bn = bn*Bnm1 + an*Bnm2;

    if(fabs(An) > RECUR_BIG || fabs(Bn) > RECUR_BIG) {
      An /= RECUR_BIG;
      Bn /= RECUR_BIG;
      Anm1 /= RECUR_BIG;
      Bnm1 /= RECUR_BIG;
      Anm2 /= RECUR_BIG;
      Bnm2 /= RECUR_BIG;
    }

    old_fn = fn;
    fn = An/Bn;
    del = old_fn/fn;
    
    if(fabs(del - 1.0) < 4.0*GSL_DBL_EPSILON) break;
  }

  result->val = fn;
  result->err = 2.0 * GSL_DBL_EPSILON * (sqrt(n)+1.0) * fabs(fn);

  if(n >= maxiter)
    GSL_ERROR ("error", GSL_EMAXITER);
  else
    return GSL_SUCCESS;
}
#endif /* 0 */


/* Evaluate legendre_H3d(ell+1)/legendre_H3d(ell)
 * by continued fraction. Use the Gautschi (Euler)
 * equivalent series.
 */
 /* FIXME: Maybe we have to worry about this. The a_k are
  * not positive and there can be a blow-up. It happened
  * for J_nu once or twice. Then we should probably use
  * the method above.
  */
static
int
legendre_H3d_CF1_ser(const int ell, const double lambda, const double coth_eta,
                     gsl_sf_result * result)
{
  const double pre = hypot(lambda, ell+1.0)/((2.0*ell+3)*coth_eta);
  const int maxk = 20000;
  double tk   = 1.0;
  double sum  = 1.0;
  double rhok = 0.0;
  double sum_err = 0.0;
  int k;
 
  for(k=1; k<maxk; k++) {
    double tlk = (2.0*ell + 1.0 + 2.0*k);
    double l1k = (ell + 1.0 + k);
    double ak = -(lambda*lambda + l1k*l1k)/(tlk*(tlk+2.0)*coth_eta*coth_eta);
    rhok = -ak*(1.0 + rhok)/(1.0 + ak*(1.0 + rhok));
    tk  *= rhok;
    sum += tk;
    sum_err += 2.0 * GSL_DBL_EPSILON * k * fabs(tk);
    if(fabs(tk/sum) < GSL_DBL_EPSILON) break;
  }

  result->val  = pre * sum;
  result->err  = fabs(pre * tk);
  result->err += fabs(pre * sum_err);
  result->err += 4.0 * GSL_DBL_EPSILON * fabs(result->val);

  if(k >= maxk)
    GSL_ERROR ("error", GSL_EMAXITER);
  else
    return GSL_SUCCESS;
}



/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/

int
gsl_sf_legendre_H3d_0_e(const double lambda, const double eta, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(eta < 0.0) {
    DOMAIN_ERROR(result);
  }
  else if(eta == 0.0 || lambda == 0.0) {
    result->val = 1.0;
    result->err = 0.0;
    return GSL_SUCCESS;
  }
  else {
    const double lam_eta = lambda * eta;
    gsl_sf_result s;
    gsl_sf_sin_err_e(lam_eta, 2.0*GSL_DBL_EPSILON * fabs(lam_eta), &s);
    if(eta > -0.5*GSL_LOG_DBL_EPSILON) {
      double f = 2.0 / lambda * exp(-eta);
      result->val  = f * s.val;
      result->err  = fabs(f * s.val) * (fabs(eta) + 1.0) * GSL_DBL_EPSILON;
      result->err += fabs(f) * s.err;
      result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    }
    else {
      double f = 1.0/(lambda*sinh(eta));
      result->val  = f * s.val;
      result->err  = fabs(f * s.val) * (fabs(eta) + 1.0) * GSL_DBL_EPSILON;
      result->err += fabs(f) * s.err;
      result->err += 2.0 * GSL_DBL_EPSILON * fabs(result->val);
    }
    return GSL_SUCCESS;
  }
}


  

/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"

double gsl_sf_legendre_H3d_0(const double lambda, const double eta)
{
  EVAL_RESULT(gsl_sf_legendre_H3d_0_e(lambda, eta, &result));
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
    
    b = gsl_sf_legendre_H3d_0(fp1, fp2);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}

