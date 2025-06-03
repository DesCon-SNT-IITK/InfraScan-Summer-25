%question no. 1
clc; clear all; close all;
%variables 
a=5;
b=3;
%mutiplication 
multication=a*b;
%add
add=a+b;
disp(add);
%divide 
divide=a/b;
%subtract
f=a-b;
%arrays
c=[1,2,3]; % 1D array
d=[5,6,7,8]; %2d array
%transpose 
d'==d';
disp(d');
% matrix multiplication 
 A=[1,2,3,4]; %basic matrix
 B=[5,6,7,8];
 B'==B';
%elements wise multiplication
multication_elements=A.*B;
% Matrix multiplication
Matrix_product = A * B';
disp(Matrix_product);
% single variable 
f=@(x)x.^2 +3*x+2
f_val = f([1, 2, 3]);
disp(f_val);
%multi-variable function 
g=@(x,y) x.^2 +y.^2;
g_val=g(1,2);
disp(g_val);


