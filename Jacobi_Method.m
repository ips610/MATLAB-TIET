clc
clear all

A = [27 6 -1; 6 15 2; 1 1 54];
b = [85; 72; 110];

tol = 10^-5;
x = zeros(1,size(A,1));

err = Inf;
count = 0;

while (err > tol)
   xold = x;
   for i=1:size(A,1)
       sum = 0;
       for j=1:size(A,1)
           if j~=i
               sum = sum + A(i,j)*xold(j);
           end
       end
       x(i) = (1/A(i,i))*(b(i)-sum);
   end
   count = count + 1;
   err = abs(xold - x);
end

disp(x)