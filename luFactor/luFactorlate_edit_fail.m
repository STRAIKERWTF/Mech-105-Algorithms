function [L, U, P]=luFactor(A)

%add error checking

[R,C] = size(A)
P = eye(R)
APrime = A
ConItr = 1
RConItr = R

while ConItr < (C + 1)
    M = max(abs(A))
    [RM,CM] = find(abs(APrime(ConItr:R,ConItr))== M)
    APrime = circshift(APrime,(-RM + 1))
    P = circshift(P,(-RM + 1))
    RwItr = 0
    CAItr = 1
    CACItr = 1
    ATrans = zeros(R)

    while RwItr < (R-ConItr) 
        CA(CAItr, 1) = APrime((RwItr+ConItr),ConItr) / APrime(ConItr,ConItr)
       
        CAItr = CAItr + 1
        RwItr = RwItr + 1
    end
    
    while CACItr < (R-ConItr+1)
        ATrans((CACItr+1),ConItr:C) = APrime((ConItr+1),ConItr:C) * CA((R-CACItr),1)
        
        CACItr = CACItr + 1
    end
APrime = APrime - ATrans
A = APrime    
ConItr = ConItr + 1
RConItr = RConItr - 1
end