clc;
clear all;
x = [0 0.25 0.5 0.75];
f = [1 1.64872 2.71828 4.48169];
X = input("Input Size: ");
for i=1:length(x)
    x1 = x;
    x1(i) = [];
    l(i) = prod(X-x1)/prod(x(i)-x1);
end
F=sum(l.*f);