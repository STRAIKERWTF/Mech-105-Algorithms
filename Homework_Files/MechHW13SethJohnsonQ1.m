clear
clc

format short
A = [6 -1; 12 8; -5 4];
B = [4 0; 0.5 2];
C = [2 -2; 3 1];

ab = A*B;
ac = A*C;
bc = B*C;
cb = C*B;

ba = B*A; %% error, ans false

ca = C*A; %% error, ans false