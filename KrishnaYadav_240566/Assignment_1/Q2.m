%% 2(a)
x= linspace(0,2*pi,100);
Y_exp=exp(x);
Y_sin=sin(x);
%% 2(b)
figure;
plot(x, sin(x), 'r--', 'DisplayName', 'sin(x)'); hold on;
plot(x, cos(x), 'b:', 'DisplayName', 'cos(x)');
legend;
xlabel('x'); ylabel('Function Value');
title('Plot of sin(x) and cos(x)');
%% 2(c)
x = linspace(-2*pi, 2*pi, 100);
y = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(x, y);
Z = sin(X + Y);

%% 2(d)
% Surface plot
figure;
surf(X, Y, Z);
colorbar;
title('3D Surface Plot of sin(x + y)');

% Contour plot
figure;
contour(X, Y, Z,20);
colorbar;
title('Contour Plot of sin(x + y)');
