% Solving Non Linear Equations

%{

1st method: Bisection Method 
----------------------------


f(x)=0
f:[a,b] -> R
f is a continuous fxn defined on [a,b]

Graph will not be a straight line between a & b as we are talking about non
linear graphs
straight line will be only in case of linear graphs

How to use this method:

check a*b is negative

first find the mid point i.e. mid=(a+b)/2
if f(mid)=0
then mid is root

if f(mid)<0
then find new mid of mid and b i.e. new_mid=(mid+b)/2

if f(mid)>0
then find new mid of mid and a i.e. new_mid=(mid+a)/2

And this process continues 



Case of Overflow and Underflow
INTMAX -- b or INTMIN -- a


we never find exact root we always try to find approximate value
we have tolerance value

min_tolerance<=f(mid)<=max_tolerance


%}


%{
format long -- 16 digits
format short -- 4 digits

if we don't use ; at EOL it will immediately show output in CMD but if we
use ; then it will store and will show output when we will call this
variable in CMD
%}


clear all; % Clear Variables in workspace
clc; % Clear Output in CMD
format long;

f=input("Enter fxn: ");

a=input("Enter the value of a: ");
b=input("Enter the value of b: ");

if f(a) * f(b) > 0

    disp("Wrong Choice Of a & b");

else 

    disp("Right Choice Of a & b");
    p=a+(b-a)/2;
    e=abs(f(p));
    count=1;
    while e>10^-4

        if f(a)*f(p) <0

            b=p;

        else

            a=p;
            
        end
        
        p=a+(b-a)/2;
        e=abs(f(p));
        count=count+1;

    end
    fprintf("Root Is: %f \n", p);
    fprintf("No of iterations: %d \n",count);

end