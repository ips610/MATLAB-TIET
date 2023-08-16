%{

Fixed Point Iterative Method
----------------------------

Fxn is fixed when its value don't change
f(x) = x^2

we have to equate y=f(x) & y=x
x = f(x)

So in above ques:
x=x^2
x^2 - x = 0
x(x-1)=0

=> x = 0,1


Procedure of this method
f(x) = 0
we have to write this in this way: x = g(x)

e.g. x^2-x+1 = 0
x = x^2 + 1

here x^2 + 1 is g(x)


other kind of g(x) can be created i.e. x^2 = x - 1
x = +- sqrt(x-1)

So what should we choose as g(x)
for this we have fixed point thm

f is a continuous on [a,b]
f(x) belongs to [a,b] for all x belongs to [a,b]


if we have found out the fixed point of g(x)
then |g'(x)| <= k where k < 1 for all x belongs to (a,b)

the roots of g(x) will be the roots of f(x)

iterative method: x(i+1) = g(x(i)) this will only work if |g'(x)| satisfies
|xn - xn-1 | < 10^-4 --> Tolerance


Steps:
f(x) = 0
x = g(x)
|g'(x)| < 1 at x = x0
x1 = g(x0) --> |x1 - x0| = 0
x2 = g(x1) --> |x2 - x1| = 0
.               .
.               .
.               .
xn = g(xn-1) --> |xn - xn-1| = 0 

We don't wait till exact zero we will see if |xn - xn-1| < 10^-4
We will break the loop once it is less than that tolerance value


%}

% Code 1 -- Similar to Bisection Method

clear all;
clc;

% f(x) = @(x)x^3-7x+2;
g = @(x)(x^3+2)/7;

x0 = 0;
x1 = g(x0);

e = abs(x1 - x0);
while e>10^-4

    x0 = x1;
    x1 = g(x0);
    e = abs(x1 - x0);

end

fprintf("Final Root is: %f \n", x1)


% Code 2
clear all;
clc;

g = input("Enter g(x): ");
x0 = input("Enter initial guess: ");

max = input("Enter Max No. of Iterations: ");
tolerance = input("Enter tolerance value: ");
count = 1;
while count <= max 
    
    x1 = g(x0);
    e = abs(x1 - x0);
    
    if e < tolerance
        break;
    end
    fprintf("x %d = %f\n",count,x1 );
    x0 = x1;
    count = count + 1;
end

fprintf("Final Root is: %f \n", x1);
