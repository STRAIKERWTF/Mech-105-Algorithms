%Defined Variables, SN = Smallest Number, and SNA =  Smallest Number Answer
SN = 1;
SNA = 1;

%Loops runs until the final number is indistinguishable from 0, a.k.a.        
%SN + 0 = 0
while (0 + (SN/2)) > 0
    SNA = SN;
    SN = SN / 2;
    if (0 + (SN/2)) == 0
        %The value of the number before the number that is =0 is displayed
        disp(SNA)
    end
end

