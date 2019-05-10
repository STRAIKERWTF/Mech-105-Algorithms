clear
clc

y = [1 0.5 0.33 0.25 0.2 0.1667];
n = length(y)
x = linspace(0,5,n);


plot(x,y)

run Simpson(x,y)

trapz=trapz(x,y)
