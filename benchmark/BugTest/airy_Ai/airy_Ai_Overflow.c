#include <gsl/gsl_math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_airy.h>

int main() {
    
    gsl_sf_result res;

    double x = -6.580865344651436e+36;

    gsl_mode_t mode = GSL_PREC_DOUBLE;

    int status = gsl_sf_airy_Ai_e(x, mode, &res);

    printf ("status is %d, val is %g, err is %g\n", status, res.val, res.err);

    return 0;
}