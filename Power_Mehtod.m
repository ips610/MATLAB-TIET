clc
clear all
A=[2 -1 0;-1 2 -1;0 -1 2];
x=[1;1;1];
count = 1;
tolerance=10^-4;
error=1000;
ans = Inf;
while (error > tolerance)
    xold = x;
    y=A*x;
    eigen_value = max(abs(y));
    eigen_vector = y./eigen_value;
    x=eigen_vector;
    error = abs(sum(xold-x));
    ans=eigen_value;
end

eigen_value
eigen_vector