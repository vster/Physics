% m*v^2/r=k0*e^2/r^2
% v=sqrt((k0*e^2)/(m*r))
clear
digits(4)
syms k0 e m r
v=sqrt((k0*e^2)/(m*r))
v=subs(v,[k0 e m r],[9e9 1.6e-19 9.1e-31 0.53e-10])
v=vpa(v)
% 2.186e6

c=3e8
kv=c/v
% 137.3

r=0.53e-10
% t=2*pi*r/v
% n=1/t=v/(2*pi*r)
n=v/(2*pi*r)
% 6.563e15
