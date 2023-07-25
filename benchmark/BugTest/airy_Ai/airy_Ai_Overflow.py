from mpmath import *
import numpy as np
mp.dps = 60

airy_Ai = lambda x: airyai(x)

print (airy_Ai(-1.14e34))
