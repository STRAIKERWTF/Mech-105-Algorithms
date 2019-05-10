function [L, U, P]=luFactor(A)

%add error checking

[R,C] = size(A)
P = eye(R)
APrime = A
CnItr = 1

while CnItr < (C + 1)
    M = max(abs(A))
    [RM,CM] = find(abs(APrime(:,CnItr))== M)
    APrime = circshift(A,(-RM + 1))
    P = circshift(P,(-RM + 1))
    RwItr = 1
    CAItr = 1
    CACItr = 1
    ATrans = zeros(R)

    while RwItr < (R) 
        CA(CAItr, 1) = APrime(RwItr+1,CnItr) / A(1,CnItr)
       
        CAItr = CAItr + 1
        RwItr = RwItr + 1
    end
    
    while CACItr < (R)
        
        ATrans(CACItr+1,:) = APrime(CACItr,:) * CA(CACItr,1)
        
        CACItr = CACItr + 1
    end
APrime = APrime - ATrans
A = APrime    
CnItr = CnItr + 1
end