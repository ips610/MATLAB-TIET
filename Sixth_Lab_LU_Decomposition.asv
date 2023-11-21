clc; 
clear all;

A = [2 -1 1; 3 3 9; 3 3 5];
B = [19; 55; 50];
L = eye(3);
[n,m] = size(A);
for i = 1: n - 1
    for k = i + 1: n
        multi = A(k,i) / A(i,i);
        L(k, i) = multi;
        A(k, :) = -multi * A(i, :) + A(k, :);
    end
end

U = A;
L = [L B];
y = zeros(1, n);
[n, m] = size(L);
for i = 1: n
    y(i) = ((L(i, m) - sum(L(i, 1:n) .* y)) / (L(i,i)));
end

U = [U y.'];
x = zeros(1, n);
[n, m] = size(U);
for i = n: -1: 1
    x(i) = ((U(i, m) - sum(U(i, 1:n) .* x)) / (U(i,i)));
end
x


% LU Decomposition

% A=[2 -1 1; 3 3 9; 3 3 5];
% b=[4; 8; 10];
% U=A;
% for i=1:1:2
%     for j=(i+1):1:3
%         U(j,:)=U(j,:)-(U(j,i)/U(i,i))*U(i,:);
%     end
% end
% U;
% L=eye(3);
% for i=1:1:2
%     for j=(i+1):1:3
%         L(j,i)=A(j,i)/A(i,i);
%     end
% end
% L;
% y=zeros(3,1);
% for i=1:1:3
%     y(i)=(b(i)-L(i,1:i-1)*y(1:i-1))/L(i,i);
% end
% y;
% x=zeros(3,1);
% for i=3:-1:1
%     x(i)=(y(i)-U(i,i+1:3)*x(i+1:3))/U(i,i);
% end
% x;



