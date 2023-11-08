clc;
clear all;

a = 0;
b = pi/4;
n = 6;

sum1 = 0;
sum2 =0;
sum = 0;

f=@(x)sin(x);
h = ( b - a )/n;

for i = 2:2:n-2
    x = a + ( i*h );
    sum1 = sum1 + (2*(f(x)));
end 

for j = 1:2:n-1
    x = a + ( j*h );
    sum2 = sum2 + (4*(f(x)));
end 

sum = sum1 + sum2 + f(a) + f(b)
sum = ( h * sum ) / 3;

sum