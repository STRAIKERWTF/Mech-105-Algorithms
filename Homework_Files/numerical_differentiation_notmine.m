clear
clc

x = [0 0.52 1.04 1.75 2.37 3.25 3.83]
y = [153 185 208 249 261 271 273]

format long

d=diff(y)./diff(x)


