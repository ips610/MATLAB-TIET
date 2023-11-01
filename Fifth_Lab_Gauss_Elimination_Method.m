%{

Gauss Elimination Method
------------------------

a11x1 + ......... + a1nxn = b1
.                           .
.                           .
.                           .
.                           .
.                           .
an1x1 + ......... + annxn = bn

Ax = b
[A|b]{n*n+1} -- Augmented Matrix

Direct Methods
--------------

Gauss Elimination -- With or without partial pivoting
LU Decomposition

Iterative Methods
-----------------

Jacobi Method
Gauss Seidel Method



Gauss Elimination Method
------------------------

[ a11 a12 ..... a1n | b1
  a21 a22 ..... a2n | b2
   .   .         .
   .   .         . 
   .   .         .
  an1 an2 ..... ann | bn ]

m21 = a21 / a11   --> R2 -> R2 - m21R1
m31 = a31 / a11   --> R3 -> R3 - m31R1

mi1 = ai1 / a11   --> Ri -> Ri - mi1R1  { i = 1, 2, ....., n }


After this We will get upper triangular Matrix


[ u11 u12 ..... u1n | b1'
   0  u22 ..... u2n | b2'
   .   0         .
   .   .         . 
   .   .         .
   0   0  ..... unn | bn' ]


Backward Substitution

[ u11 u12 ..... u1n  [ x1        [ b1'
   0  u22 ..... u2n    x2          b2'
   .   0         .     .           .
   .   .         .     .      =    .
   .   .         .     .
   0   0  ..... unn ]  xn ]        bn' ]


Fiinal Ans

xn = ( bn' ) / unn
.
.
.
.
.
x1 = ( b1' - u12 * x2 - u13 * x3 .... - u1n * xn ) / u11

%}

clear all;
clc;

% A = [1 2 3;4 5 6;7 8 9];
% B = [10;11;12];
% 
% Augmented = [A B];
% 
% [rows,cols] = size(Augmented);



A = [2 3 4 19; 4 11 14 55; 2 8 17 50];
[n,m] = size(A);
for i = 1: n - 1
    for k = i + 1: n
        multi = A(k,i) / A(i,i);
        A(k, :) = -multi * A(i, :) + A(k, :);
    end
end

A

x = zeros(1,n);
x
for i = n: -1: 1
    x(i) = ((A(i,m) - sum(A(i,1:n) .* x)) / (A(i,i)));
end

x