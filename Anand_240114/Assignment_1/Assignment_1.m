%Q1
%%Matrix multiplication
a=[1,2;3,4];
b=[1,3;4,5];
elementwise =a.*b;
matrixprd=a*b;
%% definning custom function
% single variable
f = @(x) x.^2 + 3*x+2;
f_val = f([1,1,4]);
Q2
%% predefined matlab functions
%a)linear spaces and evaluating functions
x = linspace(0,2*pi,100);
y_exp=exp(x);
y_sin=sin(x);
%% plotting by single variables 
plot(x,sin(x),'r--','DisplayName','sin(x)');
hold on;
plot(x,cos(x),'b:','DisplayName','cos(x)');
legend;
xlabel('x');ylabel('function value');
title('plot of sin(x) and cos(x)');
%% using meshgrid to generate 2d spaces
x=linspace(-2*pi,2*pi,100);
y=linspace(-2*pi,2*pi,100);
[X,Y]=meshgrid(x,y);
Z=sin(X+Y);
surf(X,Y,Z)
xlabel('x axis');
ylabel('y-axis');
zlabel('z axis');
title('plot surface of z');
%% visualising multivariable function
%surface plotting
figure ;
surf(X,Y,Z);
colorbar;
title('3D surface plot of sin(x+y)');
% contour plot
figure;
contour(X,Y,Z,20);
title('contour plot of sin(x+y)');
%Q3
%% loops ,integgration and vectorisation
val=0;
for i = 1:10;
    val=val+1;
end
val
%% numeric integration using riemann sums
a=0;b=2*pi;n=1000;
dx=(b-a)/n;
sum_riemann = 0;
tic;
for i=0:n-1
    x=a+i*dx;
    sum_riemann = sum_riemann + sin(x)*dx;
end
toc;
sum_riemann
%% vectorised riemann sum with linespace
a=0;b=2*pi;n=1000;
dx=(b-a)/1000;
x_mid =linspace(a+ 0.5 *dx,b-0.5*dx,n);
%timing vectorised verssion
tic;
y=sin(x_mid);
area=sum(y)*dx;
toc;
area
%% Built -in Integration function
integral_result =integral(@sin,0,2*pi);
integral_result