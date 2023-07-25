from mpmath import *
import numpy as np
mp.dps = 60

bessel_y0 = lambda x: fmul(sqrt(pi/(2*x)),bessely(0.5,x),exact=True)

print (bessel_y0(3.84e53))
