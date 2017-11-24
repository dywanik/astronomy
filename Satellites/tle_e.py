#!/usr/bin/env python
# -*- coding: utf-8 -*-

# install numpy, matplotlib, python-tk
import os
import numpy as np
import matplotlib.pyplot as plt
import pylab as py

os.system("awk 'NR%2==0' tle | awk '{print \"0.\"$5}' > tle_e")

v = np.loadtxt('tle_e')

e_start = 0
e_stop = 0.2
e_step = 0.001

e_values = np.arange(e_start, e_stop, e_step)

n, bins, patches = py.hist(v, e_values, histtype='bar')

py.setp(patches, 'facecolor', 'k', 'alpha', 1)
py.grid(True)

py.title('Satellites with particular eccentricity (step = %s)'%(e_step))
py.xlabel('Eccentricity')
py.ylabel('Number of satellites')
plt.show()
#~ plt.savefig('histogram_e.eps')
