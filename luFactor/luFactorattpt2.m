function [L, U, P]=luFactor(A)

%add error checIteriCg

[R,C] = size(A);
L = zeros(C);
P = eye(C);
U = A;
CCItr = 1;

for Iter = 1:C
M = max(abs(U));
    [RM,CM] = find(abs(U(CCItr:R,CCItr))== M(:,CCItr));
    U(CCItr:R,:) = circshift(U(CCItr:R,:),(-RM + 1));
    P(CCItr:R,:) = circshift(P(CCItr:R,:),(-RM + 1));
    
    L(Iter:C,Iter) = U(Iter:C,Iter) / U(Iter,Iter);

    U(Iter+1:C,1:C) = U(Iter+1:C,1:C) - L(Iter+1:C,Iter)*U(Iter,1:C);

    
CCItr = CCItr+1;
end

disp('Divider Line //////////////////////////')
disp(L)
disp(U)
disp(P)
end