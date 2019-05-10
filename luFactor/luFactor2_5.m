function [L, U, P]=luFactor(A)
%Program that does LU Factorization of a square array.

[R,C] = size(A);
L = zeros(C);
P = eye(C);
U = A;
CCItr = 1;
%Basic Variable Setup

if R ~= C 
    error('Array is not square, please input a square array')
end
%Makes sure the input is square!


for Iter = 1:C-1
%For loop that progresses through every column seqentially
M = max(abs(U))
    [RM,CM] = find(abs(U(CCItr:R,CCItr))== M(:,CCItr))
    U(CCItr:R,:) = circshift(U(CCItr:R,:),(-RM + 1))
    L(CCItr:R,:) = circshift(L(CCItr:R,:),(-RM + 1))
    P(CCItr:R,:) = circshift(P(CCItr:R,:),(-RM + 1))
%Maximum of function is calculated, then compared to the first column to
%determine the shift needed for the absolute maximum value to rest on top
%of the set of values being calculated. This is done for each column using
%a circshift that limits it's affected parts of the array by 1 for each
%u shifted over, ensuring a diagonal end result.
    
    L(Iter:C,Iter) = U(Iter:C,Iter) / U(Iter,Iter)
%Through each iteration L is caclulated and updated from top left to bottom
%right by calculating the ratio needed to create the upper matrix and
%saving it in U
    
    U(Iter+1:C,1:C) = U(Iter+1:C,1:C) - L(Iter+1:C,Iter)*U(Iter,1:C)

    
CCItr = CCItr+1
end

% disp('Divider Line //////////////////////////')
% disp(L)
% disp(U)
% disp(P)
% disp(P*L*U)

if (P*L*U) ~= A
    error('Calculation on final error check. P*L*U ~= A')
end 

end