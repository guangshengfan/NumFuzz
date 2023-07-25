/* specfunc/airy_der.c
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
#include <gsl/gsl_sf_airy.h>

#include "../error.h"

#include "../chebyshev.h"
#include "../cheb_eval_mode.c"

/*-*-*-*-*-*-*-*-*-*-*-* Private Section *-*-*-*-*-*-*-*-*-*-*-*/


/* based on SLATEC aide.f, bide.f, aid.f, bid.f, r9admp.f */
 
/* 
 series for aif on the interval -1.00000e+00 to  1.00000e+00
                                        with weighted error   5.22e-18
                                         log weighted error  17.28
                               significant figures required  16.01
                                    decimal places required  17.73
*/
static double aif_data[8] = {
   0.10527461226531408809,
   0.01183613628152997844,
   0.00012328104173225664,
   0.00000062261225638140,
   0.00000000185298887844,
   0.00000000000363328873,
   0.00000000000000504622,
   0.00000000000000000522
};
static cheb_series aif_cs = {
  aif_data,
  7,
  -1, 1,
  7
};

/*
 series for aig on the interval -1.00000e+00 to  1.00000e+00
                                        with weighted error   3.14e-19
                                         log weighted error  18.50
                               significant figures required  17.44
                                    decimal places required  18.98
*/
static double aig_data[9] = {
   0.021233878150918666852,
   0.086315930335214406752,
   0.001797594720383231358,
   0.000014265499875550693,
   0.000000059437995283683,
   0.000000000152403366479,
   0.000000000000264587660,
   0.000000000000000331562,
   0.000000000000000000314
};
static cheb_series aig_cs = {
  aig_data,
  8,
  -1, 1,
  8
};

/*
 series for aip2 on the interval  0.00000e+00 to  1.25000e-01
                                        with weighted error   2.15e-17
                                         log weighted error  16.67
                               significant figures required  14.27
                                    decimal places required  17.26
*/
static double aip2_data[15] = {
    0.0065457691989713757,
    0.0023833724120774592,
   -0.0000430700770220586,
    0.0000015629125858629,
   -0.0000000815417186163,
    0.0000000054103738057,
   -0.0000000004284130883,
    0.0000000000389497963,
   -0.0000000000039623161,
    0.0000000000004428184,
   -0.0000000000000536297,
    0.0000000000000069650,
   -0.0000000000000009620,
    0.0000000000000001403,
   -0.0000000000000000215
};
static cheb_series aip2_cs = {
  aip2_data,
  14,
  -1, 1,
  9
};

/*
 series for aip1 on the interval  1.25000e-01 to  1.00000e+00
                                        with weighted error   2.60e-17
                                         log weighted error  16.58
                               significant figures required  14.91
                                    decimal places required  17.28
*/
static double aip1_data[25] = {
    0.0358865097808301538,
    0.0114668575627764899,
   -0.0007592073583861400,
    0.0000869517610893841,
   -0.0000128237294298592,
    0.0000022062695681038,
   -0.0000004222295185921,
    0.0000000874686415726,
   -0.0000000192773588418,
    0.0000000044668460054,
   -0.0000000010790108052,
    0.0000000002700029447,
   -0.0000000000696480108,
    0.0000000000184489907,
   -0.0000000000050027817,
    0.0000000000013852243,
   -0.0000000000003908218,
    0.0000000000001121536,
   -0.0000000000000326862,
    0.0000000000000096619,
   -0.0000000000000028935,
    0.0000000000000008770,
   -0.0000000000000002688,
    0.0000000000000000832,
   -0.0000000000000000260
};
static cheb_series aip1_cs = {
  aip1_data,
  24,
  -1, 1,
  14
};


/*
 series for an22 on the interval -1.00000e+00 to -1.25000e-01
                                        with weighted error   3.30e-17
                                         log weighted error  16.48
                               significant figures required  14.95
                                    decimal places required  17.24
*/
static double an22_data[33] = {
    0.0537418629629794329,
   -0.0126661435859883193,
   -0.0011924334106593007,
   -0.0002032327627275655,
   -0.0000446468963075164,
   -0.0000113359036053123,
   -0.0000031641352378546,
   -0.0000009446708886149,
   -0.0000002966562236472,
   -0.0000000969118892024,
   -0.0000000326822538653,
   -0.0000000113144618964,
   -0.0000000040042691002,
   -0.0000000014440333684,
   -0.0000000005292853746,
   -0.0000000001967763374,
   -0.0000000000740800096,
   -0.0000000000282016314,
   -0.0000000000108440066,
   -0.0000000000042074801,
   -0.0000000000016459150,
   -0.0000000000006486827,
   -0.0000000000002574095,
   -0.0000000000001027889,
   -0.0000000000000412846,
   -0.0000000000000166711,
   -0.0000000000000067657,
   -0.0000000000000027585,
   -0.0000000000000011296,
   -0.0000000000000004645,
   -0.0000000000000001917,
   -0.0000000000000000794,
   -0.0000000000000000330
};
static cheb_series an22_cs = {
  an22_data,
  32,
  -1, 1,
  18
};

/*
 series for an21 on the interval -1.25000e-01 to -1.56250e-02
                                        with weighted error   3.43e-17
                                         log weighted error  16.47
                               significant figures required  14.48
                                    decimal places required  17.16
*/
static double an21_data[24] = {
    0.0198313155263169394,
   -0.0029376249067087533,
   -0.0001136260695958196,
   -0.0000100554451087156,
   -0.0000013048787116563,
   -0.0000002123881993151,
   -0.0000000402270833384,
   -0.0000000084996745953,
   -0.0000000019514839426,
   -0.0000000004783865344,
   -0.0000000001236733992,
   -0.0000000000334137486,
   -0.0000000000093702824,
   -0.0000000000027130128,
   -0.0000000000008075954,
   -0.0000000000002463214,
   -0.0000000000000767656,
   -0.0000000000000243883,
   -0.0000000000000078831,
   -0.0000000000000025882,
   -0.0000000000000008619,
   -0.0000000000000002908,
   -0.0000000000000000993,
   -0.0000000000000000343
};
static cheb_series an21_cs = {
  an21_data,
  23,
  -1, 1,
  12
};

/*
 series for an20 on the interval -1.56250e-02 to  0.00000e+00
                                        with weighted error   4.41e-17
                                         log weighted error  16.36
                               significant figures required  14.16
                                    decimal places required  16.96
*/
static double an20_data[16] = {
    0.0126732217145738027,
   -0.0005212847072615621,
   -0.0000052672111140370,
   -0.0000001628202185026,
   -0.0000000090991442687,
   -0.0000000007438647126,
   -0.0000000000795494752,
   -0.0000000000104050944,
   -0.0000000000015932426,
   -0.0000000000002770648,
   -0.0000000000000535343,
   -0.0000000000000113062,
   -0.0000000000000025772,
   -0.0000000000000006278,
   -0.0000000000000001621,
   -0.0000000000000000441
};
static cheb_series an20_cs = {
  an20_data,
  15,
  -1, 1,
  8
};

/*
 series for aph2 on the interval -1.00000e+00 to -1.25000e-01
                                        with weighted error   2.94e-17
                                         log weighted error  16.53
                               significant figures required  15.58
                                    decimal places required  17.28
*/
static double aph2_data[32] = {
   -0.2057088719781465107,
    0.0422196961357771922,
    0.0020482560511207275,
    0.0002607800735165006,
    0.0000474824268004729,
    0.0000105102756431612,
    0.0000026353534014668,
    0.0000007208824863499,
    0.0000002103236664473,
    0.0000000644975634555,
    0.0000000205802377264,
    0.0000000067836273921,
    0.0000000022974015284,
    0.0000000007961306765,
    0.0000000002813860610,
    0.0000000001011749057,
    0.0000000000369306738,
    0.0000000000136615066,
    0.0000000000051142751,
    0.0000000000019351689,
    0.0000000000007393607,
    0.0000000000002849792,
    0.0000000000001107281,
    0.0000000000000433412,
    0.0000000000000170801,
    0.0000000000000067733,
    0.0000000000000027017,
    0.0000000000000010835,
    0.0000000000000004367,
    0.0000000000000001769,
    0.0000000000000000719,
    0.0000000000000000294
};
static cheb_series aph2_cs = {
  aph2_data,
  31,
  -1, 1,
  16
};

/*
 series for aph1 on the interval -1.25000e-01 to -1.56250e-02
                                        with weighted error   6.38e-17
                                         log weighted error  16.20
                               significant figures required  14.91
                                    decimal places required  16.87
*/
static double aph1_data[22] = {
  -0.1024172908077571694,
   0.0071697275146591248,
   0.0001209959363122329,
   0.0000073361512841220,
   0.0000007535382954272,
   0.0000001041478171741,
   0.0000000174358728519,
   0.0000000033399795033,
   0.0000000007073075174,
   0.0000000001619187515,
   0.0000000000394539982,
   0.0000000000101192282,
   0.0000000000027092778,
   0.0000000000007523806,
   0.0000000000002156369,
   0.0000000000000635283,
   0.0000000000000191757,
   0.0000000000000059143,
   0.0000000000000018597,
   0.0000000000000005950,
   0.0000000000000001934,
   0.0000000000000000638
};
static cheb_series aph1_cs = {
  aph1_data,
  21,
  -1, 1,
  10
};

/*
 series for aph0 on the interval -1.56250e-02 to  0.00000e+00
                                        with weighted error   2.29e-17
                                         log weighted error  16.64
                               significant figures required  15.27
                                    decimal places required  17.23
*/
static double aph0_data[15] = {
 -0.0855849241130933257,
  0.0011214378867065261,
  0.0000042721029353664,
  0.0000000817607381483,
  0.0000000033907645000,
  0.0000000002253264423,
  0.0000000000206284209,
  0.0000000000023858763,
  0.0000000000003301618,
  0.0000000000000527010,
  0.0000000000000094555,
  0.0000000000000018709,
  0.0000000000000004024,
  0.0000000000000000930,
  0.0000000000000000229
};
static cheb_series aph0_cs = {
  aph0_data,
  14,
  -1, 1,
  7
};


static
int
airy_deriv_mod_phase(const double x, gsl_mode_t mode,
                     gsl_sf_result * ampl, gsl_sf_result * phi)
{
  const double pi34 = 2.356194490192344928847;
  gsl_sf_result result_a;
  gsl_sf_result result_p;
  double a, p;
  double sqx;

  if(x <= -4.0) {
    double z = 128.0/(x*x*x) + 1.0;
    cheb_eval_mode_e(&an20_cs, z, mode, &result_a);
    cheb_eval_mode_e(&aph0_cs, z, mode, &result_p);
  }
  else if(x <= -2.0) {
    double z = (128.0/(x*x*x) + 9.0) / 7.0;
    cheb_eval_mode_e(&an21_cs, z, mode, &result_a);
    cheb_eval_mode_e(&aph1_cs, z, mode, &result_p);
  }
  else if(x <= -1.0) {
    double z = (16.0/(x*x*x) + 9.0) / 7.0;
    cheb_eval_mode_e(&an22_cs, z, mode, &result_a);
    cheb_eval_mode_e(&aph2_cs, z, mode, &result_p);
  }
  else {
    ampl->val = 0.0;
    ampl->err = 0.0;
    phi->val  = 0.0;
    phi->err  = 0.0;
    GSL_ERROR ("x is greater than 1.0", GSL_EDOM);
  }

  a =  0.3125 + result_a.val;
  p = -0.625  + result_p.val;
 
  sqx = sqrt(-x);

  ampl->val = sqrt(a * sqx);
  ampl->err = fabs(ampl->val) * (GSL_DBL_EPSILON + fabs(result_a.err/result_a.val));
  phi->val  = pi34 - x * sqx * p;
  phi->err = fabs(phi->val) * (GSL_DBL_EPSILON + fabs(result_p.err/result_p.val));

  return GSL_SUCCESS;
}


/*-*-*-*-*-*-*-*-*-*-*-* Functions with Error Codes *-*-*-*-*-*-*-*-*-*-*-*/

int
gsl_sf_airy_Ai_deriv_scaled_e(const double x, gsl_mode_t mode, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(x < -1.0) {
    gsl_sf_result a;
    gsl_sf_result p;
    int status_ap = airy_deriv_mod_phase(x, mode, &a, &p);
    double c    = cos(p.val);
    result->val  = a.val * c;
    result->err  = fabs(result->val * p.err) + fabs(c * a.err);
    result->err += GSL_DBL_EPSILON * fabs(result->val);
    return status_ap;
  }
  else if(x <= 1.0) {
    const double x3 = x*x*x;
    const double x2 = x*x;
    gsl_sf_result result_c0;
    gsl_sf_result result_c1;
    cheb_eval_mode_e(&aif_cs, x3, mode, &result_c0);
    cheb_eval_mode_e(&aig_cs, x3, mode, &result_c1);

    result->val  = (x2*(0.125 + result_c0.val) - result_c1.val) - 0.25;
    result->err  = fabs(x2*result_c0.val) + result_c1.err;
    result->err += GSL_DBL_EPSILON * fabs(result->val);

    if(x > GSL_ROOT3_DBL_EPSILON*GSL_ROOT3_DBL_EPSILON) {
      /* scale only if x is positive */
      double s = exp(2.0*x*sqrt(x)/3.0);
      result->val *= s;
      result->err *= s;
    }

    return GSL_SUCCESS;
  }
  else if(x <= 4.0) {
    const double sqrtx = sqrt(x);
    const double z = (16.0/(x*sqrtx) - 9.0)/7.0;
    const double s = sqrt(sqrtx);
    gsl_sf_result result_c0;
    cheb_eval_mode_e(&aip1_cs, z, mode, &result_c0);
    result->val  = -(0.28125 + result_c0.val) * s;
    result->err  = result_c0.err * s;
    result->err += GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else {
    const double sqrtx = sqrt(x);
    const double z = 16.0/(x*sqrtx) - 1.0;
    const double s = sqrt(sqrtx);
    gsl_sf_result result_c0;
    cheb_eval_mode_e(&aip2_cs, z, mode, &result_c0);
    result->val  = -(0.28125 + result_c0.val) * s;
    result->err  = result_c0.err * s;
    result->err += GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
}


int
gsl_sf_airy_Ai_deriv_e(const double x, gsl_mode_t mode, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  if(x < -1.0) {
    gsl_sf_result a;
    gsl_sf_result p;
    int status_ap = airy_deriv_mod_phase(x, mode, &a, &p);
    double c    = cos(p.val);
    result->val  = a.val * c;
    result->err  = fabs(result->val * p.err) + fabs(c * a.err);
    result->err += GSL_DBL_EPSILON * fabs(result->val);
    return status_ap;
  }
  else if(x < 1.0) {
    const double x3 = x*x*x;
    gsl_sf_result result_c1;
    gsl_sf_result result_c2;
    cheb_eval_mode_e(&aif_cs, x3, mode, &result_c1);
    cheb_eval_mode_e(&aig_cs, x3, mode, &result_c2);
    result->val  = (x*x*(0.125 + result_c1.val) - result_c2.val) - 0.25;
    result->err  = fabs(x*x*result_c1.err) + result_c2.err;
    result->err += GSL_DBL_EPSILON * fabs(result->val);
    return GSL_SUCCESS;
  }
  else if(x*x*x < 9.0/4.0 * GSL_LOG_DBL_MIN*GSL_LOG_DBL_MIN) {
    gsl_sf_result result_aps;
    const double arg = -2.0*x*sqrt(x)/3.0;
    const int stat_a = gsl_sf_airy_Ai_deriv_scaled_e(x, mode, &result_aps);
    const int stat_e = gsl_sf_exp_mult_err_e(arg, 1.5*fabs(arg*GSL_DBL_EPSILON),
                                                result_aps.val, result_aps.err,
                                                result);
    return GSL_ERROR_SELECT_2(stat_e, stat_a);
  }
  else {
    UNDERFLOW_ERROR(result);
  }
}



/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/

#include "../eval.h"



double gsl_sf_airy_Ai_deriv(const double x, gsl_mode_t mode)
{
  EVAL_RESULT(gsl_sf_airy_Ai_deriv_e(x, mode, &result));
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
    
    b = gsl_sf_airy_Ai_deriv(a, 0);


    printf ("The Value of b is %le\n", b);
    
    return 0;
}
