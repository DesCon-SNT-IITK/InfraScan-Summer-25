%% 1(a)
%Define variable
a=13;
b=10;
%Operations
addition=a+b
subtraction=a-b
multiplication=a*b
division=a/b
%% 1(b)
%clear all variable 
clc
%clear command window
clear
%% 1(c)
% Define Array
c=[1,2,3];
d=[1,2;3,4];
% Transpose of d
d_transpose=d'

%% 1(d)
A=[1,2;3,4];
B=[5,6;7,8];
% Element_wise multiplication
Elementwise=A.*B
% Matrix multiplication
matrics_product = A*B

%% 1(e)
% Single variable function
f = @(x) x.^2 + 3*x + 2;
f_val = f([1, 2, 3]);

% Multi-variable function
g = @(x, y) x.^2 + y.^2;
g_val = g(1, 2);