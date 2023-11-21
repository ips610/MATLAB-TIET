
x=[1; 2; 3];
f=[1; 4; 9];
p=5;
L=[1; 1; 1];
sum=0;
for i=1:1:3
    for j=1:1:3
        if(i~=j)
            L(i)=(p-x(j))/(x(i)-x(j))*L(i);
        end
    end
    sum=sum+f(i)*L(i);
end
sum