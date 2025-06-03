%Linear Spaces and Evaluating Functions
x = linspace(0, 2*pi, 100);
y_exp = exp(x);
y_sin = sin(x);

%Plotting Single Variable Functions
figure;
plot(x, sin(x), 'r--', 'DisplayName', 'sin(x)','LineWidth',1); 
hold on;
plot(x, cos(x), 'b-', 'DisplayName', 'cos(x)','LineWidth',1);
legend('sin(x)', 'cos(x)', 'Location', 'best');
xlabel('X-axis'); ylabel('Y-axis');
title('Plot of sin(x) and cos(x)');
grid on;
hold off;

%Using Meshgrid to Generate 2D Spaces
x = linspace(-2*pi, 2*pi, 100);
y = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(x, y);
Z = sin(X + Y);

% Visualizing Multivariable Functions
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