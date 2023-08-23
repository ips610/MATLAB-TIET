%{

Secant Method
-------------

x[i+1]=x[i]-((x[i]-x[i-1])/f(x[i])-f(x[i-1]))*f(x[i])

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

f = input("Enter function f: ");
x0 = input("Enter first initial guess: ");
x1 = input("Enter second initial guess: ");
tolerance = input("Enter tolerance: ");
max = input("Enter Maximum no of iterations: ");
count = 1;


while count <= max

    x2 = x1 - ((x1-x0)/(f(x1)-f(x0)))*f(x1);
    e = abs(x2 - x1);

    if e < tolerance
        break
    end
    x0 = x1;
    x1 = x2;

    count = count + 1;
end



fprintf("Root is %.10f \n", x2);
