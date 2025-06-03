%Defining Variables and Performing Simple Operations
% Define variables
a = 5;
b = 3;
% Operations
multiplication = a * b ;     % Multiplication
disp (multiplication) ;
addition = a + b ;
disp (addition);             % Addition  
division = a / b ;
disp (division) ;
subtraction = a - b ;        % Substraction
disp (subtraction);

%Clearing the Workspace and Command Window
clear           % Clear all variables
clc             % Clear command window

%Defining Arrays and Performing the Transpose Operation
% Define arrays
c = [1, 2, 3];            % 1D array
d = [1, 2; 3, 4];         % 2D array

% Transpose of d
d_transpose = d';         % Transpose of d
disp(d_transpose);

%Matrix Multiplication
% Define matrices
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];

% Element-wise multiplication
elementwise = A .* B;          % '*' performs matrix multiplication.
disp(elementwise);

% Matrix multiplication
matrix_product = A * B;       % '.*' performs element-wise multiplication.
disp(matrix_product);

%Defining Custom Functions
% Single variable function
f = @(x) x.^2 + 3*x + 2;
f_val = f([1, 2, 3]);
disp(f_val);

% Multi-variable function
g = @(x, y) x.^2 + y.^2;
g_val = g(1, 2);
disp(g_val);

