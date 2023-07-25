#include <gsl/gsl_math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_airy.h>

int main() {
    
    gsl_sf_result res;

    double x = 7.0944466083035695e+02;

    gsl_mode_t mode = GSL_PREC_DOUBLE;

    int status = gsl_sf_exprel_2_e(x, &res);

    printf ("status is %d, val is %g, err is %g\n", status, res.val, res.err);

    return 0;
}
