format short
ABCD=[6 0 -1 0 0; -3 3 0 0 0; 0 -1 9 0 0; 0 -1 -8 11 -2; -3 -1 0 0 4];
PXQ=[50;0;160;0;0];
X=ABCD\PXQ
inverse_of_ABCD = inv(ABCD)
transpose_of_ABCD = transpose(ABCD)