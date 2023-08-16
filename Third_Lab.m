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


%}

