function [root, fx, ea, iter]=falsePosition(func, xl, xu, es, maxiter)
ea = 1;
iter = 0;
lastroot = 0;
root = rand;
froot = 0;
%The basic variables written out, ea is final error, iter is number of
%iterations, last root is the root from the previous cycle, the root is
%given a random number that is non zero to stop the program from fining no
%error after the second iteration, and froot is the fx of the trrot value


sxu = sign((feval(func,xu)));
sxl = sign((feval(func,xl)));
%Calculates values of fxu and fxl

if sxl == sxu 
    error('Same sign detected, no zero in range')
elseif xu < xl
    error('The upper bound must be a larger value than the lower bound')
end
%Compares fxu and fxl to make sure they are different and proper bounds, xu
%being higher, xl lower, and then acctually coving a zero in thier range.

if nargin == 3
    maxiter = 200;
    es = 0.0001;
elseif isempty(maxiter)
    maxiter = 200;
elseif nargin == 4
    es = 0.0001;
elseif nargin < 3
    error('Double Check Input Values')
end
%Checks for values thata re missing or improperly typed into the program, 
%warns the user or selects defaults as neccesary 

while (iter+1 <= maxiter) && ea > (es*100) 
%While loop that runs till the final iteration specificed by user or till
%the error is below the requested threshold. Error is assumed to be enerted
%in percent instead of actual value
    lastroot = root;
%saves last root for error calualtion later
    fxu = feval(func,xu)
    fxl = feval(func,xl)
% find fxu and fxl to for root calculation
    root = xu-(fxu*(xl-xu))/(fxl-fxu)
    froot = feval(func,root)
% Calcualtes root using Mech 105 formula and gets the fxroot for output
    if sign(froot) == sign(fxu)
        xu = root;
    elseif sign(froot) == sign(fxl)
        xl = root;
    else
        error('Decision Error')
    end
% Check to see if sign of fxroot matches sign of either bound, replaces the
% one which it match to. The else command is left over from error checking
% using a previosu different apprx. method

    fx = froot;
    ea = abs(((root-lastroot)/(root))*100);
    iter = iter+1;
%The fxroot, earror calcualtion, and iteration hosuekeepign are tracked,
%done and packaged for final output here.
end