function I = Simpson(x,y)
%Where the function numerically evaluates the integral of the vector of function
%values ‘y’ with respect to ‘x’

DiffX1 = diff(x);
DiffDiffX1 = round(diff(DiffX1),5);
Lx = length(x);
Ly = length(y);
LCO = 3;
LCE = 2;
SO = 0;
SE = 0;

if Lx ~= Ly
    error('The lengths of the arrays x and y do not match. Please input matching length arrays')
elseif sum(abs(DiffDiffX1)) ~= 0
    error('The x array is not equally spaced, please input an equally spaced array')
elseif isrow(x) ~= 1
    x = transpose(x);  
elseif isrow(y) ~= 1
    y = transpose(y);   
end

%Makes sure all inputs are in rows instead of coloumsn and checks for
%appriate errors.

Odd = mod(Lx,2);
%Returns 1 if odd and 0 if not

if Odd == 1
    deltaX = (x(1,Lx) - x(1,1))/(Lx - 1);
    %Calculates the deltaX value
    
    while LCE <= (Lx-1)
        SE = SE + y(1,LCE);
        LCE = LCE+2;
    end
    
    while LCO <= (Lx-2)
        SO = SO + y(1,LCO);
        LCO = LCO+2;
    end
    %Loop addes up values for later calculations
    
    I = (deltaX/3)*(y(1,1)+4*(sum(SE))+2*(sum(SO))+y(1,Lx)) 
    %Simpson's rule run here
    
else
    deltaX = (x(1,Lx) - x(1,1))/(Lx - 2);
    warning('The trapezoidal rule will be used to complete the calculation of the data')
    
     while LCE <= (Lx-2)
        SE = SE + y(1,LCE);
        LCE = LCE+2;
    end
    
    while LCO <= (Lx-3)
        SO = SO + y(1,LCO);
        LCO = LCO+2;
    end
    %Loop addes up values for later calculations
    
    I = (deltaX/3)*(y(1,1)+4*(sum(SE))+2*(sum(SO))+y(1,Lx-1));
    %Simpson's rule run here
    
    I = I + (1/2*(y(1,Lx-1)+y(1,Lx))*((x(1,Lx-1)-x(1,Lx))))
    %I is equal to the I + Trapazoidal rule sum
end




