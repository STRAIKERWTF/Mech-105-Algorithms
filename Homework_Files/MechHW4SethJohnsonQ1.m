function nd = days(mo, da, leap)
% Test funtions
mo = 7;
da = 7;
leap = 1;

% Variables that define the numbe of days in months
J2 = 31;
F = 28;
M = 31;
A = 31;
J = 30;
S = 30;
O = 31;
N = 30;

% Condition that suures that leap day is counted correctly even in
% Febuary.

%Days is counted by adding leap day, days and the number of days in apst
%months together. Loop does logic on what month it is.
if leap == 1 && mo >= 3
    if mo == 3
        days = J2+F+da+leap
    elseif mo == 4
        days = J2+F+M+da+leap
    elseif mo == 5
        days = J2+F+M+A+da+leap
    elseif mo == 6
        days = J2+F+M+A+M+da+leap
    elseif mo == 7
        days = J2+F+M+A+M+J+da+leap
    elseif mo == 8
        days = J2+F+M+A+M+J+J2+da+leap
    elseif mo == 9
        days = J2+F+M+A+M+J+J2+A+da+leap
    elseif mo == 10
        days = J2+F+M+A+M+J+J2+A+S+da+leap
    elseif mo == 11
        days = J2+F+M+A+M+J+J2+A+S+O+da+leap
    elseif mo == 12
        days = J2+F+M+A+M+J+J2+A+S+O+N+da+leap
    end
else
    if mo == 1
        days = da
    elseif mo == 2
        days = J2+da
    elseif mo == 3
        days = J2+F+da
    elseif mo == 4
        days = J2+F+M+da
    elseif mo == 5
        days = J2+F+M+A+da
    elseif mo == 6
        days = J2+F+M+A+M+da
    elseif mo == 7
        days = J2+F+M+A+M+J+da
    elseif mo == 8
        days = J2+F+M+A+M+J+J2+da
    elseif mo == 9
        days = J2+F+M+A+M+J+J2+A+da
    elseif mo == 10
        days = J2+F+M+A+M+J+J2+A+S+da
    elseif mo == 11
        days = J2+F+M+A+M+J+J2+A+S+O+da
    elseif mo == 12
        days = J2+F+M+A+M+J+J2+A+S+O+N+da
    end
end
end

