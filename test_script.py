# -*- coding: utf-8 -*-

import numpy as np
import cupy as cp
import matplotlib
import matplotlib.pyplot as plt

import chainer
import chainer.links as L
import chainer.function as F
from chainer import Chain, Variable, optimizers

print(chainer.__version__)
print(matplotlib.__version__)

a = cp.random.rand(10)
a = cp.asnumpy(a).flatten()
plt.plot(a)
plt.show()
