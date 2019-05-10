epn = 1;
%Values that ~= 1 or .5, used in calculating convergence, if epn = epn then
%the cycle is looping above and below the value of 1 and 1 + epn. This loop
%detects this and displays an answer.
epn1 = .7;
epn2 = .7;

%While Loop checks to see if value has converged and if epn = epn2 it
%stops, as that means the value has converged.
while epn ~= epn2
    if (1+epn) <= 1
        epn2 = epn1;
        epn1 = epn;
        epn = epn*2;
        %Because the loop ends when the finalv alue is reached, the dat
        %must be displayed from within the loop, causing the for decision to
        %be neccesary.
        if epn == epn2
            disp(epn)
        end
        
    else
        epn2 = epn1;
        epn1 = epn;
        epn = epn/2;
        if epn == epn2
            disp(epn)
        end
    end
end

%It should be noted that if this algorithm didn't neeed to be followed, on
%our computers a much simplier loop works without the decision logic.
%
% epn = 1;
% while 1.0 + (epn/2) > 1.0
%     epn = epn / 2;
% end
