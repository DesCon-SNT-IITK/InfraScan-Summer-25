function [x,y,t]=projectileMotion (v0, theta, t)
vx=v0*cosd(theta);
vy=v0*sind(theta);
g=9.8;
t_flight=(2*vy)/g;
t=t(t<=t_flight);
x=vx*t;
y=vy*t-0.5*g*(t.^2);
end
v0=input("enter intial velocity - ");
theta=input("enter launch angle of projectile - ");
t=input("enter Time vector (in seconds) for which the position of the projectile needs to be calculated - ");
[x,y]=projectileMotion(v0,theta,t)
plot(x,y,'.-k');
xlabel('Horizontal distance');
ylabel("Vertical distance");
title("trajectory of projectile motion");
grid on;