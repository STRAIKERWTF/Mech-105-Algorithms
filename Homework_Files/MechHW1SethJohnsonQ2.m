%Function Describing time from 0.1 to 0.8 in 0.1 unit intervals
t = 0:0.1:0.8;
%Variable Constants Added
q0 = 10
R = 60
L = 9
C = 0.00005
%Replica of Equation representing capacitor charge given time
qt = q0*exp(((-R.*t)/(2*L))).*cos(sqrt((1/(L*C))-(R/(2*L))^2).*t)

%Plotting the charge over the time
plot (t,qt)
%Using Hold command to stay focused on plot #1
hold on
%Added Title and X and Y labels to plot # 1
title ('Capacitor Charge Given Time')
xlabel ('Time')
ylabel ('Charge')