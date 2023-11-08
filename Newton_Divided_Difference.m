clc;
clear all;
x = [-1 0 1 2];
y = [5 1 1 11];
X = input("Input the value of X: ");
[~,n] = size(x);
DD = zeros(n,n);
DD(:,1) = y';
for j=2:n
    for i=1:n-j+1
        num = DD(i+1,j-1) - DD(i,j-1);
        den = (x(i+j-1)-x(i));
        DD(i,j) = num./den;
    end
end

for i=1:size(x,2)-1 %size(x,2) means column      size(x,1) means row
    prodx = prod(X-x(:,1:i))*DD(1,i+1); 
    % X - x(1:i,:)
    P(i) = prodx;
end

Y = y(1)+sum(P);
array2table(DD)
fprintf('Value of Y at X=%f is %f\n',X,Y);