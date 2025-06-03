clear all;close all;
clc;
x=linspace(0,2*pi,100);
x_exp=exp(x);
y_sin=sin(x);
y_cos=cos(x);
%ploting 
figure;
plot(x,y_sin,"r--",'DisplayName','sin(x)', 'linewidth',2);
hold on
plot(x,y_cos,"B--o",'DisplayName','cos(x)', 'linewidth',1); 
legend show;
xlabel('x');
ylabel('Function value');
title('Plot of sin(x) and cos(x)');
grid on;
hold off;
%use mesh grid
x=linspace(-2*pi,2*pi,100);
y=linspace(-2*pi, 2*pi,100);
[X,Y]=meshgrid(x,y);
Z=meshgrid(sin(x+y));
% Visualizing Multivariable Functions
% Surface plot
figure;
surf(X,Y,Z);
colorbar;
colormap("hot");
title('3D surface plot of sin(x+y');
 % contour plot
 figure;
 contour(X,Y,Z,10);
 colorbar;
 title('Contour Plot of sin(x + y)');


