%% Q1a defining variables 
a=5;
b=3;

product=a*b;
divison=a/b;
addition = a+b;
subtract= a-b;


%% Q1b clearing workspace and command window
clear
clc

%% Q1c definig arrays

c= [1,2,3];
d= [1,2;3,4];

d_transpose = d';

%% Q1d 

% Define matrices
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];

% Element-wise multiplication
elementwise = A .* B

% Matrix multiplication
matrix_product = A * B

%% Q1e 

% Single variable function
f = @(x) x.^2 + 3*x + 2;
f_val = f([1, 2, 3])

% Multi-variable function
g = @(x, y) x.^2 + y.^2;
g_val = g(1, 2)




