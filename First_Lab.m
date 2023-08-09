a =[1 2 3];
b=[4 5 6];
g=[4;5;6;];
c=a+b;
d=a.*b;
e=a./b;
% error f=a*b;
h=a*g;

m1=[[1 2 3],[4 5 6],[7 8 9]];
m2=[[1 2 3],[4 5 6],[7 8 9]];
m3=m1+m2;
m4=[1 2 3;4 5 6;7 8 9];
m5=[1 2 3;4 5 6;7 8 9];
m6=m4+m5;
m7=m4*m5;
m8=m4.*m5;
m9=m4./m5;
% m10=m4/m5;

% transpose

t1=[1 2 3];
t2=transpose(t1);
t3=[1 2 3;4 5 6;7 8 9];
t4=t3.';


% eigen values

%% Determinent is Product of Eigen Values
%and for finding inverse of matrix determinent should be non zero( non
%singular )
t5=eig(t3);
t8=transpose(t3);
t10=inv(t3);
t9=eig(t8);
t11=eig(t10);

% inverse of matrix

t6=inv(t3);

% determinent of matrix

t7=det(t3);