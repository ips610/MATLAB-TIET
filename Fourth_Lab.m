%{

Newton's Method or Newton's Raphson Mehtod
------------------------------------------

x[i+1]=x[i]-f(x[i])/f'(x[i])

f'(x[i]) --> It should not be zero



x1 = x0 - f(x0)/f'(x0)
x2 = x1 - f(x1)/f'(x1)
.
.
.


Stopping Criterias
------------------

|f(x[n]| < tolerance  ---> Bisection Mehtod Majorly
(x[n]-x[n-1]) < tolerance ---> Generally Used
|x[n]-x[n-1]|/|x[n]| < tolerance ---> Give More Closed Ans but we don't it
generally

%}


clear all;
clc;

