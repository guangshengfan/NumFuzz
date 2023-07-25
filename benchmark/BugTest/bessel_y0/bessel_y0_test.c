#include <gsl/gsl_math.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_sf_trig.h>
#include <gsl/gsl_sf_bessel.h>

int main() {
    
    gsl_sf_result res;

    double x = 3.84e53;

    int status = gsl_sf_bessel_y0_e(x, &res);

    printf ("status is %d, val is %g, err is %g\n", status, res.val, res.err);

    return 0;
}
