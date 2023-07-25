from mpmath import *
import numpy as np
mp.dps = 60

Ci_e = lambda x: ci(x)

print (Ci_e(2.21e44))
