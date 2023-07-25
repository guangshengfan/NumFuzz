
#include "../../config.h"
#include <gsl/gsl_math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_log.h>
#include <gsl/gsl_sf_trig.h>

#include "../error.h"

#include "../chebyshev.h"
#include "../cheb_eval.c"

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
int
foo_raw(double x, gsl_sf_result * result)
{
  /* CHECK_POINTER(result) */

  {
    const double P1 = 7.85398125648498535156e-1;
    const double P2 = 3.77489470793079817668e-8;
    const double P3 = 2.69515142907905952645e-15;

    const double sgn_x = GSL_SIGN(x);
    const double abs_x = fabs(x);

    if(abs_x < GSL_ROOT4_DBL_EPSILON) {
      const double x2 = x*x;
      result->val = x * (1.0 - x2/6.0);
      result->err = fabs(x*x2*x2 / 100.0);
      return GSL_SUCCESS;
    }
    else {
      double sgn_result = sgn_x;
      double y = floor(abs_x/(0.25*M_PI));
      int octant = y - ldexp(floor(ldexp(y,-3)),3);
      int stat_cs;
      double z;

      if(GSL_IS_ODD(octant)) {
        octant += 1;
        octant &= 07;
        y += 1.0;
      }

      if(octant > 3) {
        octant -= 4;
        sgn_result = -sgn_result;
      }
      
      z = ((abs_x - y * P1) - y * P2) - y * P3;

      if(octant == 0) {
        gsl_sf_result sin_cs_result;
        const double t = 8.0*fabs(z)/M_PI - 1.0;
        stat_cs = cheb_eval_e(&sin_cs, t, &sin_cs_result);
        result->val = z * (1.0 + z*z * sin_cs_result.val);
      }
      else { /* octant == 2 */
        gsl_sf_result cos_cs_result;
        const double t = 8.0*fabs(z)/M_PI - 1.0;
        stat_cs = cheb_eval_e(&cos_cs, t, &cos_cs_result);
        result->val = 1.0 - 0.5*z*z * (1.0 - z*z * cos_cs_result.val);
      }

      result->val *= sgn_result;

      if(abs_x > 1.0/GSL_DBL_EPSILON) {
        result->err = fabs(result->val);
      }
      else if(abs_x > 100.0/GSL_SQRT_DBL_EPSILON) {
        result->err = 2.0 * abs_x * GSL_DBL_EPSILON * fabs(result->val);
      }
      else if(abs_x > 0.1/GSL_SQRT_DBL_EPSILON) {
        result->err = 2.0 * GSL_SQRT_DBL_EPSILON * fabs(result->val);
      }
      else {
        result->err = 2.0 * GSL_DBL_EPSILON * fabs(result->val);
      }

      return stat_cs;
    }
  }
}



/*-*-*-*-*-*-*-*-*-* Functions w/ Natural Prototypes *-*-*-*-*-*-*-*-*-*-*/
/*
#include "../eval.h"
//LCOV_EXCL_START
double gsl_sf_sin(const double x)
{
  EVAL_RESULT(gsl_sf_sin_e(x, &result));
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
    
    b = gsl_sf_sin(a);


    printf ("The Value of b is %f\n", b);
    
    return 0;
}

//LCOV_EXCL_STOP

*/
