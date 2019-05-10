format short
ABCD=[0 -7 5; 0 4 7; -4 3 -7];
PXQ=[50;-30;40];
X=ABCD\PXQ
inverse_of_ABCD = inv(ABCD)
transpose_of_ABCD = transpose(ABCD)