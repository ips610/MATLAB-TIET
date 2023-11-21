
x=[110; 130; 160; 190];
f=[10.8; 8.1; 5.5; 4.8];
p=140;
L=[1; 1; 1; 1];
sum=0;
for i=1:1:4
    for j=1:1:4
        if(i~=j)
            L(i)=(p-x(j))/(x(i)-x(j))*L(i);
        end
    end
    sum=sum+f(i)*L(i);
end
sum