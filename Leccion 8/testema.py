# -*- coding: utf-8 -*-
"""
Created on Fri Oct  9 14:06:20 2020

@author: Ema
"""
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider, Button, RadioButtons

fig, ax = plt.subplots()
plt.subplots_adjust(left=0.25, bottom=0.25)
x = np.arange(0.0, 255, 1)
C0 = 5
G0 = 3
delta_f = 5.0
s = C0 * x **G0
l, = plt.plot(x, s, lw=2)
ax.margins(x=0)

axcolor = 'lightgoldenrodyellow'
axfreq = plt.axes([0.25, 0.1, 0.65, 0.03], facecolor=axcolor)
axamp = plt.axes([0.25, 0.15, 0.65, 0.03], facecolor=axcolor)

sG = Slider(axfreq, 'Gamma', 0.1, 30.0, valinit=G0, valstep=delta_f)
sC = Slider(axamp, 'C', 0.1, 10.0, valinit=C0)


def update(val):
    c = sC.val
    g = sG.val
    l.set_ydata(c*x**g)
    fig.canvas.draw_idle()


sG.on_changed(update)
sC.on_changed(update)

resetax = plt.axes([0.8, 0.025, 0.1, 0.04])
button = Button(resetax, 'Reset', color=axcolor, hovercolor='0.975')


def reset(event):
    sG.reset()
    sC.reset()
button.on_clicked(reset)

rax = plt.axes([0.025, 0.5, 0.15, 0.15], facecolor=axcolor)
radio = RadioButtons(rax, ('red', 'blue', 'green'), active=0)


def colorfunc(label):
    l.set_color(label)
    fig.canvas.draw_idle()
radio.on_clicked(colorfunc)

plt.show()
