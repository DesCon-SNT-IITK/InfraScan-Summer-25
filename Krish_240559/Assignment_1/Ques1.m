%% 1(a)
a=5;
b=3;
%operations
multiplication=a*b;
addition=a+b;
division=a/b;
subtraction=a-b;

%% 1(b)

clear     % clear all variables
clc       % clear command window

%% 1(c)
c = [1, 2, 3];            % 1D array
d = [1, 2; 3, 4];         % 2D array

d_transpose = d';   % Transpose of d

%% 1(d)
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];

elementwise = A .* B;     % Element-wise multiplication

matrix_product = A * B;   % Matrix multiplication

%%1(e)
% Single variable function
f = @(x) x.^2 + 3*x + 2;
f_val = f([1, 2, 3]);

% Multi-variable function
g = @(x, y) x.^2 + y.^2;
g_val = g(1, 2);

