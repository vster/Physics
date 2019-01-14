clear
syms x nu real
nu=1/2
f(x)=x^nu
I1=int(f^2,x,0,1)
% 1/2

f2(x)=x*f(x)
I2=int(f2^2,x,0,1)
% 1/4

f3(x)=diff(f(x),x)
% 1/(2*x^(1/2))
I3=int(f3^2,x,0,1)
% Inf
