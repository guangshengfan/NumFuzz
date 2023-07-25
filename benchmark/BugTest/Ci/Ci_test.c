#include <gsl/gsl_math.h>

#include <gsl/gsl_errno.h>

#include <gsl/gsl_sf_trig.h>

#include <gsl/gsl_sf_expint.h>

int main() {
    
    gsl_sf_result result;

    double x = 2.21e44;

    int status = gsl_sf_Ci_e(x, &result);

    printf ("status is %d, result.val is %g, result.err is %g\n", status, result.val, result.err);

    return 0;
}
