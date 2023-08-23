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

% syms x;
clear all;
clc;

f = input("Enter function f: ");
x0 = input("Enter initial guess: ");
% df = inline(diff(f(x)));
df = input("Enter derivative function: ");
tolerance = ("Enter tolerance: ");
max = input("Enter Maximum no of iterations: ");
count = 1;

if df(x0) ~= 0
    while count <= max

        x1 = x0 - f(x0)/df(x0);
        e = abs(x1 - x0);

        if e < tolerance
            break
        end
        x0 = x1;
        count = count + 1;
    end

else
    disp("Newton's Method Fails");
end
