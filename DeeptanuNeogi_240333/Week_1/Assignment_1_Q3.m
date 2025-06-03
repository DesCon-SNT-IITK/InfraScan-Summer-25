%Introduction to Loops
val = 0;
for i = 1:10
    val = val + 1;
end
%Numerical Integration using Riemann Sums
a = 0; b = 2*pi; n = 1000;
dx = (b - a) / n;
sum_riemann = 0;
for i = 0:n-1
    x = a + i * dx;
    sum_riemann = sum_riemann + sin(x) * dx;
end
%Vectorized Riemann Sum with Linspace
a = 0; b = 2*pi; n = 1000;
dx = (b - a) / n;
x_mid = linspace(a + 0.5*dx, b - 0.5*dx, n);

% Timing vectorized version
tic;
y = sin(x_mid);
area = sum(y) * dx;
toc;

% Built-in Integration Function
integral_result = integral(@sin, 0, 2*pi);