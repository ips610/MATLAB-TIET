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
%}


clear all; % Clear Variables in workspace
clc; % Clear Output in CMD
format long;

f=@(x)x^4-x-10;
ans=f(1);
