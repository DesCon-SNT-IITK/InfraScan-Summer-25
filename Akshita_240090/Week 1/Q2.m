%% Q2a

x = linspace(0, 2*pi, 100);
y_exp = exp(x);
y_sin = sin(x);

%% Q2b
figure;
plot(x, sin(x), 'r--', 'DisplayName', 'sin(x)'); hold on;
plot(x, cos(x), 'b:', 'DisplayName', 'cos(x)');
legend;
xlabel('x'); ylabel('Function Value');
title('Plot of sin(x) and cos(x)');

%% Q2c
k = linspace(-2*pi, 2*pi, 10);
j = linspace(-2*pi, 2*pi, 10);
[X, Y] = meshgrid(k, j);
Z = sin(X + Y);

%% Q2d
% Surface plot
figure;
surf(X, Y, Z);
colorbar;
title('3D Surface Plot of sin(x + y)');

% Contour plot
figure;
contour(X, Y, Z, 20);
colorbar;
title('Contour Plot of sin(x + y)');

