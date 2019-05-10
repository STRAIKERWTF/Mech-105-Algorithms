h = input('Enter the Height of Float in Meters: ');
%h = 20;
R1 = '%d is an invalid input. Please input a height between zero and 33 meters';
R2 = 'The answer is %.2f M^3';

if h > 19 && h <= 33
    cyl = 19*((pi)*((12.5)^2));
    sdv = 12.5+(((h-19)/14)*10.5);
    ifrust = (((h-19)*pi)/3)*((12.5)^2+(12.5)*(sdv)+(sdv)^2);
    v = cyl+ifrust;
    fprintf(R2,v);
elseif (h > 33) || (h < 0)
   fprintf(R1,h);
   
else
    cyl = h*((pi)*((12.5)^2));
    v = cyl;
    fprintf(R2,v);
end
    

