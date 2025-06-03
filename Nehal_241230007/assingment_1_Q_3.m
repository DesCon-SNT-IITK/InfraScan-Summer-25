%loops 
clear all;close all;clc;
val=0
for i=1:10
    val=val+i;


end
% Numerical Integration using Riemann Sums
a=0;b=2*pi;n=1000;
dx=(a-b)/n;
sumriemann=0;
for i=0:(n-1)
    x=a+i*dx;
    sumriemann=sumriemann+sin(x)*dx;

end
%vectories riemann sum with linspace
a=0;b=2*pi;n=1000;
dx=(b-a)/n;
x_mid=linspace(a+0.5*dx,b-0.5*dx,n);
%timing vectorized version 
tic;
y=sin(x_mid);
area=sum(y)*dx
toc;
%built-in integration factor
integral_result=integral(@sin(y),0,2*pi;)