clc;
clear all;
a = 0;
b = 1;
n = 10;
sum = 0;
f=@(x)(exp(-x));
h = ( b - a )/n;
for i = 1:n-1
    x = a + ( i*h );
    sum = sum + (2*(f(x)));
end 
sum = sum + f(a) + f(b);
sum = ( h * sum ) / 2;

sum