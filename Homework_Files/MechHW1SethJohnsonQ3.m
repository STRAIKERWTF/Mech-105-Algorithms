%Symbol Representing Interval
z = -5:5
%Function rewritten in Matlab
fz = (1/(sqrt(2*pi)))*10.^(-z.^2./2)

%Plotting the fuction on the interval
plot (z,fz)
%Using Hold command to stay focused on plot #1
hold on
%Added Title and X and Y labels to plot # 1
title ('Bell Curve Probability on the Interval Z')
xlabel ('Interval Z')
ylabel ('Bell Curve Probability')