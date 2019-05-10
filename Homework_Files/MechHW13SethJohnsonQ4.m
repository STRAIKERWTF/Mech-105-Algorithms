format short
ABCD=[0.866 0 -0.5 0 0 0; 0.5 0 0.866 0 0 0; -0.866 -1 0 -1 0 0; -0.5 0 0 0 -1 0; 0 1 0.5 0 0 0; 0 0 -0.866 0 0 -1];
PXQ=[0; -1000; 0; 0; 0; 0];
X=ABCD\PXQ
inverse_of_ABCD = inv(ABCD)
transpose_of_ABCD = transpose(ABCD)