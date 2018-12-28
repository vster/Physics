% f(x)=sum(n=1:inf)c(n)*psi_n(x)=sqrt(2/a)*sum(n=1:inf)c(n)*sin(n*pi*x/a)
clear
syms x a f(x)
syms n integer
c(n)=sqrt(2/a)*int(sin(n*pi*x/a)*f(x),x,0,a)

% Psi(x,t)=sum(n=1:inf)c(n)*sqrt(2/a)*sin(n*pi*x/a)*     (2.18)
%    *exp(-i*(n^2*pi^2*hp/2*m*a^2)*t)
% at t=0
% Psi(x,0)=sum(n=1:inf)c(n)*psi_n(x)

% c(n)=sqrt(2/a)*int(0:a)sin(n*pi*x/a)*Psi(x,0)*dx        (2.19)
